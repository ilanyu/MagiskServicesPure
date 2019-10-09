.class public Lcom/android/server/backup/internal/PerformBackupTask;
.super Ljava/lang/Object;
.source "PerformBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mAgentBinder:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/backup/internal/BackupState;

.field private volatile mEphemeralOpToken:I

.field private mFinished:Z

.field private final mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private final mNonIncremental:Z

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateName:Ljava/io/File;

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mUserInitiated:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 816
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V
    .registers 35
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p10, "userInitiated"    # Z
    .param p11, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/BackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .local p9, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 156
    iput-object v14, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 157
    move-object/from16 v15, p2

    iput-object v15, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 158
    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 160
    move-object/from16 v12, p5

    iput-object v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 161
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 162
    move-object/from16 v10, p7

    iput-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 163
    if-eqz p8, :cond_30

    move-object/from16 v0, p8

    goto :goto_32

    :cond_30
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_32
    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 164
    move-object/from16 v8, p9

    iput-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 165
    move/from16 v7, p10

    iput-boolean v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    .line 166
    move/from16 v5, p11

    iput-boolean v5, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    .line 167
    nop

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v2, "Timeout parameters cannot be null"

    .line 167
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 177
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_87

    .line 179
    const-string v0, "PerformBackupTask"

    const-string v3, "Skipping backup since one is already in progress."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 183
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 184
    const-string v0, "Skipped. Backup already in progress."

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_d9

    .line 186
    :cond_87
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 187
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 188
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 190
    .local v6, "fullBackups":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v20, v8

    iget-boolean v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v22, v3

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v17

    move/from16 v7, v18

    move/from16 v18, v8

    move-object/from16 v17, v20

    move-object/from16 v8, v19

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->registerTask()V

    .line 199
    const-string v0, "STATE => INITIAL"

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 201
    .end local v6    # "fullBackups":[Ljava/lang/String;
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_d9
    monitor-exit v16

    .line 202
    return-void

    .line 201
    :catchall_db
    move-exception v0

    monitor-exit v16
    :try_end_dd
    .catchall {:try_start_6a .. :try_end_dd} :catchall_db

    throw v0
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 6
    .param p1, "input"    # [B

    .line 767
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 768
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_2a

    .end local v0    # "md":Ljava/security/MessageDigest;
    move-object v0, v1

    .line 772
    .local v0, "checksum":[B
    nop

    .line 771
    nop

    .line 774
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 775
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 776
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 778
    .end local v2    # "i":I
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 769
    .end local v0    # "checksum":[B
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_2a
    move-exception v0

    .line 770
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "PerformBackupTask"

    const-string v2, "Unable to use SHA-1!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v1, "00"

    return-object v1
.end method

.method private backupPm()V
    .registers 5

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v0

    .line 365
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string v1, "@pm@"

    .line 367
    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v2

    .line 365
    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 368
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMBA invoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_58
    .catchall {:try_start_0 .. :try_end_39} :catchall_56

    .line 382
    .end local v0    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_ad

    goto :goto_96

    .line 382
    :catchall_56
    move-exception v0

    goto :goto_ae

    .line 374
    :catch_58
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v1, "PerformBackupTask"

    const-string v2, "Error in backup thread during pm"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in backup thread during pm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 377
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_56

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_ad

    .line 386
    :goto_96
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 388
    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v1

    .line 387
    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 389
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 392
    :cond_ad
    return-void

    .line 382
    :goto_ae
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting backupPm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_e1

    .line 386
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 388
    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v2

    .line 387
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 389
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_e1
    throw v0
.end method

.method private beginBackup()V
    .registers 11

    .line 254
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "beginBackup: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/BackupRequest;

    .line 258
    .local v2, "req":Lcom/android/server/backup/internal/BackupRequest;
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    iget-object v3, v2, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v2    # "req":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_17

    .line 261
    :cond_2e
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 265
    .end local v0    # "b":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 269
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 270
    const-string v1, "PerformBackupTask"

    const-string v2, "Backup begun with an empty queue - nothing to do."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "queue empty at begin"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 273
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 274
    return-void

    .line 280
    :cond_6c
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 284
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    .line 290
    .local v1, "skipPm":Z
    move v2, v0

    .line 290
    .local v2, "i":I
    :goto_79
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9d

    .line 291
    const-string v3, "@pm@"

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v4, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 296
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    const/4 v1, 0x0

    .line 298
    goto :goto_9d

    .line 290
    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 303
    .end local v2    # "i":I
    :cond_9d
    :goto_9d
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v2, "pmState":Ljava/io/File;
    const/16 v3, -0x3e8

    :try_start_c9
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "PBT.beginBackup()"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 308
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "transportName":Ljava/lang/String;
    const/16 v6, 0xb05

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 312
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_145

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_145

    .line 313
    const-string v6, "PerformBackupTask"

    const-string v7, "Initializing (wiping) backup state and transport storage"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializing transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 316
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 318
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "transport.initializeDevice() == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 319
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_137

    .line 320
    const/16 v6, 0xb0b

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_145

    .line 322
    :cond_137
    const/16 v0, 0xb06

    const-string v6, "(initialize)"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 323
    const-string v0, "PerformBackupTask"

    const-string v6, "Transport error in initializeDevice()"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_145
    :goto_145
    if-eqz v1, :cond_154

    .line 328
    const-string v0, "PerformBackupTask"

    const-string v6, "Skipping backup of package metadata."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_15d

    .line 335
    :cond_154
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_15d

    .line 336
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_15d} :catch_18d
    .catchall {:try_start_c9 .. :try_end_15d} :catchall_18b

    .line 346
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_15d
    :goto_15d
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_1ca

    .line 350
    :goto_179
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 354
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_1ca

    .line 346
    :catchall_18b
    move-exception v0

    goto :goto_1cb

    .line 339
    :catch_18d
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    :try_start_18e
    const-string v4, "PerformBackupTask"

    const-string v5, "Error in backup thread during init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in backup thread during init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 342
    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_1ad
    .catchall {:try_start_18e .. :try_end_1ad} :catchall_18b

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_1ca

    goto :goto_179

    .line 357
    :cond_1ca
    :goto_1ca
    return-void

    .line 346
    :goto_1cb
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exiting prelim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v4, :cond_1f8

    .line 350
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 352
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 354
    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_1f8
    throw v0
.end method

.method private clearAgentState()V
    .registers 4

    .line 1188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1190
    :cond_9
    goto :goto_b

    .line 1189
    :catch_a
    move-exception v0

    .line 1192
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    .line 1194
    :cond_14
    goto :goto_16

    .line 1193
    :catch_15
    move-exception v0

    .line 1196
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 1198
    :cond_1f
    goto :goto_21

    .line 1197
    :catch_20
    move-exception v0

    .line 1199
    :goto_21
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1203
    :try_start_28
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1205
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_6c

    .line 1208
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6b

    .line 1209
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1211
    :try_start_5c
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_69} :catch_6a

    .line 1213
    goto :goto_6b

    :catch_6a
    move-exception v0

    .line 1215
    :cond_6b
    :goto_6b
    return-void

    .line 1205
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private clearMetadata()V
    .registers 4

    .line 659
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 661
    :cond_12
    return-void
.end method

.method private errorCleanup()V
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1181
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1182
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    .line 1183
    return-void
.end method

.method private executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    .registers 5
    .param p1, "nextState"    # Lcom/android/server/backup/internal/BackupState;

    .line 1222
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeNextState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1223
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 1224
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1226
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1227
    return-void
.end method

.method private failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 7
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .line 757
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 760
    goto :goto_1f

    .line 758
    :catch_4
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method private finalizeBackup()V
    .registers 8

    .line 551
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    .line 556
    .local v1, "req":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 557
    .end local v1    # "req":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_d

    .line 563
    :cond_21
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_45

    .line 564
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_45
    const-string v0, "PBT.finalizeBackup()"

    .line 571
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentToken()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_97

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_97

    .line 573
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "success; recording token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 575
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 576
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 577
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->setCurrentToken(J)V

    .line 578
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_74

    .line 584
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_97

    .line 579
    :catch_74
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport threw reporting restore set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "transport threw returning token"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 591
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 592
    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v4, -0x3e9

    if-ne v2, v4, :cond_ee

    .line 597
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v4, "init required; rerunning"

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_9e .. :try_end_b1} :catchall_190

    .line 599
    :try_start_b1
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 600
    invoke-virtual {v4}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ca} :catch_cb
    .catchall {:try_start_b1 .. :try_end_ca} :catchall_190

    .line 605
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_e6

    .line 602
    :catch_cb
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cc
    const-string v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query transport name for init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e6
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearMetadata()V

    .line 607
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 609
    :cond_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_cc .. :try_end_ef} :catchall_190

    .line 611
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 613
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->unregisterTask()V

    .line 615
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-nez v1, :cond_139

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_139

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    if-eqz v1, :cond_139

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 616
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_139

    .line 617
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting full backups for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 622
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v3, "full-transport-requested"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_17c

    .line 623
    :cond_139
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_153

    .line 624
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_14b

    .line 626
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 628
    :cond_14b
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x7d3

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_17c

    .line 631
    :cond_153
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 633
    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v2, -0x3ed

    if-eq v1, v2, :cond_176

    if-eqz v1, :cond_176

    const/16 v2, -0x3e8

    packed-switch v1, :pswitch_data_194

    .line 646
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_17c

    .line 641
    :pswitch_170
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 643
    goto :goto_17c

    .line 637
    :cond_176
    :pswitch_176
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    nop

    .line 651
    :goto_17c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    .line 652
    const-string v1, "PerformBackupTask"

    const-string v2, "K/V backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 655
    return-void

    .line 609
    :catchall_190
    move-exception v2

    :try_start_191
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw v2

    nop

    :pswitch_data_194
    .packed-switch -0x3ea
        :pswitch_176
        :pswitch_170
    .end packed-switch
.end method

.method private invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 667
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 672
    .local v9, "blankStateName":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 673
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 674
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 677
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 678
    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 679
    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "callingAgent":Z
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    .line 687
    const/4 v10, 0x0

    :try_start_8c
    const-string v0, "@pm@"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 690
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 691
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 697
    :cond_9f
    nop

    .line 698
    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_a6

    move-object v0, v9

    goto :goto_a8

    :cond_a6
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    :goto_a8
    const/high16 v2, 0x18000000

    .line 697
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 702
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 707
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 708
    const-string v0, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux restorecon failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_da
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 716
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PBT.invokeAgentForBackup()"

    .line 717
    invoke-virtual {v0, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 719
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0, v8, v10}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v15
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ee} :catch_140
    .catchall {:try_start_8c .. :try_end_ee} :catchall_13e

    .line 720
    .local v15, "quota":J
    const/16 v20, 0x1

    .line 723
    .end local v1    # "callingAgent":Z
    .local v20, "callingAgent":Z
    :try_start_f0
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "setting timeout"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 724
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 725
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 726
    .local v3, "kvBackupAgentTimeoutMillis":J
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    const/4 v6, 0x0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 728
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "calling agent doBackup()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 730
    iget-object v12, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v13, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v14, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 732
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v19

    .line 730
    move-object/from16 v11, p2

    move/from16 v17, v1

    invoke-interface/range {v11 .. v19}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_127} :catch_13a
    .catchall {:try_start_f0 .. :try_end_127} :catchall_136

    .line 742
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "kvBackupAgentTimeoutMillis":J
    .end local v15    # "quota":J
    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_12e

    .line 743
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 751
    :cond_12e
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 752
    return v10

    .line 742
    :catchall_136
    move-exception v0

    move/from16 v1, v20

    goto :goto_198

    .line 733
    :catch_13a
    move-exception v0

    move/from16 v1, v20

    goto :goto_141

    .line 742
    .end local v20    # "callingAgent":Z
    .restart local v1    # "callingAgent":Z
    :catchall_13e
    move-exception v0

    goto :goto_198

    .line 733
    :catch_140
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    :goto_141
    :try_start_141
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error invoking for backup on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 736
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v10

    const/4 v4, 0x1

    .line 737
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 736
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_189
    .catchall {:try_start_141 .. :try_end_189} :catchall_13e

    .line 739
    if-eqz v1, :cond_18e

    const/16 v2, -0x3eb

    goto :goto_190

    .line 740
    :cond_18e
    const/16 v2, -0x3e8

    .line 742
    :goto_190
    iget-boolean v3, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v3, :cond_197

    .line 743
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 739
    :cond_197
    return v2

    .line 742
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_198
    iget-boolean v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_19f

    .line 743
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_19f
    throw v0
.end method

.method private invokeAgentToObserverError(I)I
    .registers 3
    .param p1, "error"    # I

    .line 395
    const/16 v0, -0x3eb

    if-ne p1, v0, :cond_5

    .line 396
    return v0

    .line 398
    :cond_5
    const/16 v0, -0x3e8

    return v0
.end method

.method private invokeNextAgent()V
    .registers 13

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 406
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 412
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 413
    return-void

    .line 417
    :cond_2d
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    .line 418
    .local v1, "request":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 420
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting key/value backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 429
    const/16 v2, -0x7d2

    const/16 v3, -0x3ec

    const/4 v4, 0x0

    const/16 v5, -0x3eb

    :try_start_71
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 430
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    const/high16 v8, 0x8000000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 432
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    const/16 v8, -0x7d1

    if-nez v7, :cond_111

    .line 436
    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " no longer supports backup; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - not eligible, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 441
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 444
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_c0} :catch_29e
    .catchall {:try_start_71 .. :try_end_c0} :catchall_29c

    .line 508
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_109

    .line 513
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .local v7, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_f2

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e8

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 526
    :cond_e8
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_105

    .line 529
    :cond_f2
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_100

    .line 532
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 533
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 534
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_105

    .line 538
    :cond_100
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 539
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 542
    :goto_105
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 543
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_110

    .line 545
    :cond_109
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 445
    :goto_110
    return-void

    .line 448
    :cond_111
    :try_start_111
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_19d

    .line 452
    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " requests full-data rather than key/value; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 458
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 461
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_14c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_111 .. :try_end_14c} :catch_29e
    .catchall {:try_start_111 .. :try_end_14c} :catchall_29c

    .line 508
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_195

    .line 513
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .restart local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_17e

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_174

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 526
    :cond_174
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_191

    .line 529
    :cond_17e
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_18c

    .line 532
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 533
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 534
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_191

    .line 538
    :cond_18c
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 539
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 542
    :goto_191
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 543
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_19c

    .line 545
    :cond_195
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 462
    :goto_19c
    return-void

    .line 465
    :cond_19d
    :try_start_19d
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_20e

    .line 469
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - stopped"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 470
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 473
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_1bd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19d .. :try_end_1bd} :catch_29e
    .catchall {:try_start_19d .. :try_end_1bd} :catchall_29c

    .line 508
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_206

    .line 513
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .restart local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_1ef

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e5

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 526
    :cond_1e5
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_202

    .line 529
    :cond_1ef
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_1fd

    .line 532
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 533
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 534
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_202

    .line 538
    :cond_1fd
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 539
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 542
    :goto_202
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 543
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_20d

    .line 545
    :cond_206
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 474
    :goto_20d
    return-void

    .line 477
    :cond_20e
    move-object v7, v4

    .line 482
    .local v7, "agent":Landroid/app/IBackupAgent;
    :try_start_20f
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    new-instance v9, Landroid/os/WorkSource;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 484
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v8

    move-object v7, v8

    .line 486
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agent bound; a? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_242

    const/4 v10, 0x1

    goto :goto_243

    :cond_242
    move v10, v0

    :goto_243
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 487
    if-eqz v7, :cond_25a

    .line 488
    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 489
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    goto :goto_25c

    .line 495
    :cond_25a
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_25c
    .catch Ljava/lang/SecurityException; {:try_start_20f .. :try_end_25c} :catch_25d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20f .. :try_end_25c} :catch_29e
    .catchall {:try_start_20f .. :try_end_25c} :catchall_29c

    .line 502
    :goto_25c
    goto :goto_26e

    .line 497
    :catch_25d
    move-exception v8

    .line 499
    .local v8, "ex":Ljava/lang/SecurityException;
    :try_start_25e
    const-string v9, "PerformBackupTask"

    const-string v10, "error in bind/backup"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 501
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v10, "agent SE"

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_26e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25e .. :try_end_26e} :catch_29e
    .catchall {:try_start_25e .. :try_end_26e} :catchall_29c

    .line 508
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "agent":Landroid/app/IBackupAgent;
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :goto_26e
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_2f9

    .line 513
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .local v6, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_297

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d8

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_2d8

    .line 529
    :cond_297
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_2f0

    goto :goto_2e6

    .line 508
    .end local v6    # "nextState":Lcom/android/server/backup/internal/BackupState;
    :catchall_29c
    move-exception v6

    goto :goto_302

    .line 503
    :catch_29e
    move-exception v6

    .line 504
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_29f
    const-string v7, "PerformBackupTask"

    const-string v8, "Package does not exist; skipping"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v8, "no such package"

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 506
    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_2b0
    .catchall {:try_start_29f .. :try_end_2b0} :catchall_29c

    .line 508
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_2f9

    .line 513
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .local v6, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_2e2

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d8

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 526
    :cond_2d8
    :goto_2d8
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2f5

    .line 529
    :cond_2e2
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_2f0

    .line 532
    :goto_2e6
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 533
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 534
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2f5

    .line 538
    :cond_2f0
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 539
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 542
    :goto_2f5
    invoke-direct {p0, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 543
    .end local v6    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_301

    .line 545
    :cond_2f9
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 547
    nop

    .line 548
    :goto_301
    return-void

    .line 508
    :goto_302
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 512
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_34b

    .line 513
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 514
    .local v7, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 518
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_334

    .line 523
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 524
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 525
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32a

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 526
    :cond_32a
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_347

    .line 529
    :cond_334
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_342

    .line 532
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 533
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 534
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_347

    .line 538
    :cond_342
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 539
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 542
    :goto_347
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 543
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_352

    .line 545
    :cond_34b
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_352
    throw v6
.end method

.method private registerTask()V
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private revertAndEndBackup()V
    .registers 7

    .line 1157
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "transport error; reverting"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1163
    :try_start_8
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "PBT.revertAndEndBackup()"

    .line 1164
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1165
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 1165
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    move-wide v0, v1

    .line 1169
    .local v0, "delay":J
    goto :goto_33

    .line 1166
    .end local v0    # "delay":J
    :catch_16
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-wide/16 v0, 0x0

    .line 1170
    .local v0, "delay":J
    :goto_33
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 1171
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v3

    .line 1170
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1173
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/BackupRequest;

    .line 1174
    .local v3, "request":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v3, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1175
    .end local v3    # "request":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_48

    .line 1177
    :cond_5c
    return-void
.end method

.method private unregisterTask()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 219
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 787
    .local v0, "widgetState":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    .local v1, "widgetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 797
    .local v2, "priorStateExists":Z
    if-nez v2, :cond_26

    if-nez v0, :cond_26

    .line 799
    return-void

    .line 806
    :cond_26
    const/4 v3, 0x0

    .line 807
    .local v3, "newChecksum":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_62

    .line 808
    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 809
    if-eqz v2, :cond_62

    .line 812
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 811
    .local v5, "fin":Ljava/io/FileInputStream;
    nop

    .line 813
    :try_start_36
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3b} :catch_5c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_5a

    .line 811
    .local v6, "in":Ljava/io/DataInputStream;
    nop

    .line 815
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_40} :catch_50
    .catchall {:try_start_3c .. :try_end_40} :catchall_4d

    .line 816
    .local v7, "priorChecksum":Ljava/lang/String;
    :try_start_40
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_5c
    .catchall {:try_start_40 .. :try_end_43} :catchall_5a

    .line 816
    .end local v6    # "in":Ljava/io/DataInputStream;
    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 817
    .end local v5    # "fin":Ljava/io/FileInputStream;
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 819
    return-void

    .line 816
    .end local v7    # "priorChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catchall_4d
    move-exception v7

    move-object v8, v4

    goto :goto_56

    .line 811
    :catch_50
    move-exception v7

    :try_start_51
    throw v7
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 816
    :catchall_52
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_56
    :try_start_56
    invoke-static {v8, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5a} :catch_5c
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 816
    .end local v6    # "in":Ljava/io/DataInputStream;
    :catchall_5a
    move-exception v6

    goto :goto_5e

    .line 811
    :catch_5c
    move-exception v4

    :try_start_5d
    throw v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    .line 816
    :goto_5e
    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    .line 824
    .end local v5    # "fin":Ljava/io/FileInputStream;
    :cond_62
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v5, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 825
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v0, :cond_9f

    .line 827
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 826
    .local v6, "fout":Ljava/io/FileOutputStream;
    nop

    .line 828
    :try_start_6f
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_99
    .catchall {:try_start_6f .. :try_end_74} :catchall_97

    .line 826
    .local v7, "stateOut":Ljava/io/DataOutputStream;
    nop

    .line 830
    :try_start_75
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_8d
    .catchall {:try_start_75 .. :try_end_78} :catchall_8a

    .line 831
    :try_start_78
    invoke-static {v4, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_99
    .catchall {:try_start_78 .. :try_end_7b} :catchall_97

    .line 831
    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 833
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    const-string/jumbo v4, "\uffed\uffedwidget"

    array-length v6, v0

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 834
    array-length v4, v0

    invoke-virtual {v5, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_a9

    .line 831
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_8a
    move-exception v8

    move-object v9, v4

    goto :goto_93

    .line 826
    :catch_8d
    move-exception v8

    :try_start_8e
    throw v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    .line 831
    :catchall_8f
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_93
    :try_start_93
    invoke-static {v9, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_97} :catch_99
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    .line 831
    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_97
    move-exception v7

    goto :goto_9b

    .line 826
    :catch_99
    move-exception v4

    :try_start_9a
    throw v4
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_97

    .line 831
    :goto_9b
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7

    .line 837
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    :cond_9f
    const-string/jumbo v4, "\uffed\uffedwidget"

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 838
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 840
    :goto_a9
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    sget-object v1, Lcom/android/server/backup/internal/PerformBackupTask$1;->$SwitchMap$com$android$server$backup$internal$BackupState:[I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v2}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    goto :goto_2d

    .line 241
    :pswitch_11
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-nez v1, :cond_19

    .line 242
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    goto :goto_2d

    .line 244
    :cond_19
    const-string v1, "PerformBackupTask"

    const-string v2, "Duplicate finish of K/V pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 237
    :pswitch_21
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeNextAgent()V

    .line 238
    goto :goto_2d

    .line 233
    :pswitch_25
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->backupPm()V

    .line 234
    goto :goto_2d

    .line 229
    :pswitch_29
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->beginBackup()V

    .line 230
    nop

    .line 248
    :goto_2d
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_11
    .end packed-switch
.end method

.method public handleCancel(Z)V
    .registers 11
    .param p1, "cancelAll"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v1, :cond_10

    .line 1122
    monitor-exit v0

    return-void

    .line 1124
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 1125
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1b

    .line 1126
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1e

    .line 1127
    :cond_1b
    const-string/jumbo v1, "no_package_yet"

    .line 1128
    .local v1, "logPackageName":Ljava/lang/String;
    :goto_1e
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/16 v2, 0xb07

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1130
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cancelAll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1132
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x15

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "android.app.backup.extra.LOG_CANCEL_ALL"

    iget-boolean v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 1135
    invoke-static {v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 1132
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1138
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V

    .line 1139
    if-nez p1, :cond_8d

    .line 1144
    nop

    .line 1145
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v2, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_80

    :cond_7e
    sget-object v2, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 1144
    :goto_80
    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 1146
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_90

    .line 1148
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    .line 1150
    .end local v1    # "logPackageName":Ljava/lang/String;
    :goto_90
    monitor-exit v0

    .line 1151
    return-void

    .line 1150
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_a .. :try_end_94} :catchall_92

    throw v1
.end method

.method public operationComplete(J)V
    .registers 24
    .param p1, "unusedResult"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    move-object/from16 v1, p0

    .line 845
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 846
    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 848
    :try_start_c
    iget-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v0, :cond_1a

    .line 849
    const-string v0, "PerformBackupTask"

    const-string/jumbo v3, "operationComplete received after task finished."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    monitor-exit v2

    return-void

    .line 853
    :cond_1a
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_42

    .line 858
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_27

    .line 859
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_29

    :cond_27
    const-string v0, "[none]"

    .line 863
    .local v0, "pkg":Ljava/lang/String;
    :goto_29
    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "late opComplete; curPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 864
    monitor-exit v2

    return-void

    .line 867
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_42
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 868
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 869
    .local v4, "filepos":J
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_39d

    move-object v6, v0

    .line 873
    .local v6, "fd":Ljava/io/FileDescriptor;
    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_5a
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_116

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    if-nez v0, :cond_116

    .line 876
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v14, v0

    .line 878
    .local v14, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v0, v15}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_79} :catch_11a
    .catchall {:try_start_5a .. :try_end_79} :catchall_39d

    .line 878
    .local v0, "in":Landroid/app/backup/BackupDataInput;
    :goto_79
    move-object v15, v0

    .line 880
    .end local v0    # "in":Landroid/app/backup/BackupDataInput;
    .local v15, "in":Landroid/app/backup/BackupDataInput;
    :try_start_7a
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 881
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_fe

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v7, 0xff00

    if-lt v9, v7, :cond_fe

    .line 884
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal backup key: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/backup/internal/PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 885
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 886
    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 887
    const/16 v7, 0xb07

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v13

    const-string v9, "bad key"

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 889
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v8, 0x5

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v12, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    .line 894
    invoke-static {v10, v12, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 889
    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v11, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 897
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3eb

    .line 900
    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_f7
    .catchall {:try_start_7a .. :try_end_f7} :catchall_10f

    .line 909
    if-eqz v14, :cond_fc

    .line 910
    :try_start_f9
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_11a
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_39d

    :cond_fc
    :try_start_fc
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_39d

    .line 904
    return-void

    .line 906
    :cond_fe
    :try_start_fe
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_10f

    .line 907
    .end local v0    # "key":Ljava/lang/String;
    nop

    .line 878
    move-object v0, v15

    const/high16 v9, 0x10000000

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_79

    .line 909
    :cond_109
    if-eqz v14, :cond_116

    .line 910
    :try_start_10b
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_116

    .line 909
    :catchall_10f
    move-exception v0

    if-eqz v14, :cond_115

    .line 910
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_115
    throw v0

    .line 916
    .end local v14    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "in":Landroid/app/backup/BackupDataInput;
    :cond_116
    :goto_116
    invoke-direct {v1, v6, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_119} :catch_11a
    .catchall {:try_start_10b .. :try_end_119} :catchall_39d

    .line 928
    goto :goto_13f

    .line 917
    :catch_11a
    move-exception v0

    move-object v7, v0

    .line 922
    .local v7, "e":Ljava/io/IOException;
    :try_start_11c
    const-string v0, "PerformBackupTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save widget state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_11c .. :try_end_132} :catchall_39d

    .line 924
    :try_start_132
    invoke-static {v6, v4, v5}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_135
    .catch Landroid/system/ErrnoException; {:try_start_132 .. :try_end_135} :catch_136
    .catchall {:try_start_132 .. :try_end_135} :catchall_39d

    .line 927
    goto :goto_13f

    .line 925
    :catch_136
    move-exception v0

    move-object v8, v0

    .line 926
    .local v0, "ee":Landroid/system/ErrnoException;
    :try_start_138
    const-string v8, "PerformBackupTask"

    const-string v9, "Unable to roll back!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v0    # "ee":Landroid/system/ErrnoException;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_13f
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    .line 937
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "operation complete"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 939
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v7, "PBT.operationComplete()"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v7, v0

    .line 940
    .local v7, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v8, 0x0

    .line 941
    .local v8, "backupData":Landroid/os/ParcelFileDescriptor;
    iput v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_161
    .catchall {:try_start_138 .. :try_end_161} :catchall_39d

    .line 942
    const-wide/16 v11, 0x0

    move-wide v14, v11

    .line 944
    .local v14, "size":J
    const/16 v9, -0x3ee

    :try_start_166
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 945
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 946
    cmp-long v0, v14, v11

    if-lez v0, :cond_211

    .line 947
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_181

    const/4 v0, 0x1

    goto :goto_182

    :cond_181
    const/4 v0, 0x0

    .line 948
    .local v0, "isNonIncremental":Z
    :goto_182
    iget v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v11, :cond_1a8

    .line 949
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v11, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    move-object v8, v11

    .line 951
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v12, "sending data to transport"

    invoke-virtual {v11, v12}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 954
    iget-boolean v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    .line 956
    .local v11, "userInitiatedFlag":I
    if-eqz v0, :cond_19d

    .line 957
    const/4 v12, 0x4

    goto :goto_19e

    .line 958
    :cond_19d
    const/4 v12, 0x2

    .line 959
    .local v12, "incrementalFlag":I
    :goto_19e
    or-int v13, v11, v12

    .line 961
    .local v13, "flags":I
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v10, v8, v13}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 964
    .end local v11    # "userInitiatedFlag":I
    .end local v12    # "incrementalFlag":I
    .end local v13    # "flags":I
    :cond_1a8
    if-eqz v0, :cond_1c0

    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v10, v9, :cond_1c0

    .line 970
    const-string v10, "PerformBackupTask"

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 974
    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 982
    :cond_1c0
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data delivered: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 983
    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v10, :cond_202

    .line 984
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "finishing op on transport"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 985
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 986
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "finished: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_210

    .line 987
    :cond_202
    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v11, -0x3ea

    if-ne v10, v11, :cond_210

    .line 988
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v11, "transport rejected package"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 990
    .end local v0    # "isNonIncremental":Z
    :cond_210
    :goto_210
    goto :goto_226

    .line 994
    :cond_211
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v10, "no data to send"

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 995
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v10, 0x7

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v0, v10, v11, v13, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1002
    :goto_226
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_254

    .line 1006
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1007
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1008
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 1009
    const/4 v10, 0x0

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1010
    const/16 v0, 0xb08

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1011
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    goto/16 :goto_2dd

    .line 1012
    :cond_254
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_271

    .line 1015
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1016
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1017
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3ea

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1019
    const-string v0, "Transport rejected"

    invoke-static {v3, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2dd

    .line 1020
    :cond_271
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ed

    if-ne v0, v10, :cond_282

    .line 1021
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1023
    const/16 v0, 0xb0d

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_2dd

    .line 1025
    :cond_282
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_2d1

    .line 1026
    const-string v0, "PerformBackupTask"

    const-string v10, "Transport lost data, retrying package"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport lost data, retrying package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1029
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x33

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1037
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1038
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1039
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1045
    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    .line 1046
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v10, v3}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2dd

    .line 1051
    :cond_2d1
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3e8

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1053
    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_2dd} :catch_2eb
    .catchall {:try_start_166 .. :try_end_2dd} :catchall_2e6

    .line 1063
    :cond_2dd
    :goto_2dd
    if-eqz v8, :cond_2e5

    :try_start_2df
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e2
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2e2} :catch_2e3
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_39d

    goto :goto_2e5

    .line 1064
    :catch_2e3
    move-exception v0

    .line 1066
    goto :goto_318

    .line 1065
    :cond_2e5
    :goto_2e5
    goto :goto_318

    .line 1062
    :catchall_2e6
    move-exception v0

    move-object v9, v8

    move-object v8, v0

    goto/16 :goto_393

    .line 1055
    :catch_2eb
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2ec
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v11, -0x3e8

    invoke-static {v10, v3, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1058
    const-string v10, "PerformBackupTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transport error backing up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1060
    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_312
    .catchall {:try_start_2ec .. :try_end_312} :catchall_2e6

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2e5

    :try_start_314
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_317
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_317} :catch_2e3
    .catchall {:try_start_314 .. :try_end_317} :catchall_39d

    goto :goto_2e5

    .line 1069
    :goto_318
    :try_start_318
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_380

    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_323

    goto :goto_380

    .line 1075
    :cond_323
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_335

    .line 1077
    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 1078
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38d

    .line 1082
    :cond_332
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38d

    .line 1085
    :cond_335
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v9, -0x3ed

    if-ne v0, v9, :cond_37a

    .line 1090
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;
    :try_end_33d
    .catchall {:try_start_318 .. :try_end_33d} :catchall_39d

    if-eqz v0, :cond_36c

    .line 1092
    :try_start_33f
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 1093
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v9

    .line 1094
    .local v9, "quota":J
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    invoke-interface {v0, v14, v15, v9, v10}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_350} :catch_351
    .catchall {:try_start_33f .. :try_end_350} :catchall_39d

    .line 1097
    .end local v9    # "quota":J
    goto :goto_36c

    .line 1095
    :catch_351
    move-exception v0

    .line 1096
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_352
    const-string v9, "PerformBackupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to notify about quota exceeded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36c
    :goto_36c
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_377

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_379

    :cond_377
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    :goto_379
    goto :goto_38d

    .line 1103
    :cond_37a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 1104
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38d

    .line 1073
    :cond_380
    :goto_380
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38b

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38d

    :cond_38b
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 1104
    .local v0, "nextState":Lcom/android/server/backup/internal/BackupState;
    :goto_38d
    nop

    .line 1107
    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 1108
    .end local v0    # "nextState":Lcom/android/server/backup/internal/BackupState;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "filepos":J
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "size":J
    monitor-exit v2
    :try_end_392
    .catchall {:try_start_352 .. :try_end_392} :catchall_39d

    .line 1109
    return-void

    .line 1062
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "filepos":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v9, "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "size":J
    :goto_393
    nop

    .line 1063
    if-eqz v9, :cond_39c

    :try_start_396
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_399
    .catch Ljava/io/IOException; {:try_start_396 .. :try_end_399} :catch_39a
    .catchall {:try_start_396 .. :try_end_399} :catchall_39d

    goto :goto_39c

    .line 1064
    :catch_39a
    move-exception v0

    nop

    .line 1065
    :cond_39c
    :goto_39c
    :try_start_39c
    throw v8

    .line 1108
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "filepos":J
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v9    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "size":J
    :catchall_39d
    move-exception v0

    monitor-exit v2
    :try_end_39f
    .catchall {:try_start_39c .. :try_end_39f} :catchall_39d

    throw v0
.end method
