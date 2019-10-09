.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field mUpdateSchedule:Z

.field mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V
    .registers 29
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "whichPackages"    # [Ljava/lang/String;
    .param p5, "updateSchedule"    # Z
    .param p6, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p7, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p8, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p9, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p10, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p11, "userInitiated"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 160
    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 161
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 162
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 163
    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 164
    move-object/from16 v7, p7

    iput-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 165
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    array-length v9, v2

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 167
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 168
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 169
    if-eqz p10, :cond_39

    move-object/from16 v0, p10

    goto :goto_3b

    :cond_39
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_3b
    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 170
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 173
    nop

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v12, "Timeout parameters cannot be null"

    .line 173
    invoke-static {v0, v12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 179
    const-string v0, "PFTBT"

    const-string v12, "Skipping full backup. A backup is already in progress."

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 182
    return-void

    .line 185
    :cond_6d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    .line 187
    array-length v12, v2

    const/4 v0, 0x0

    move v13, v0

    :goto_73
    if-ge v13, v12, :cond_11b

    aget-object v0, v2, v13

    move-object v14, v0

    .line 189
    .local v14, "pkg":Ljava/lang/String;
    :try_start_78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    invoke-virtual {v0, v14, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 191
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 192
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    move-object v15, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v15, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_a3

    .line 200
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v4, 0x9

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 205
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 207
    goto :goto_10d

    .line 208
    :cond_a3
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 215
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 220
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 222
    goto :goto_10d

    .line 223
    :cond_bf
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 230
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xb

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 235
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 237
    goto :goto_10d

    .line 239
    :cond_dd
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_e2} :catch_e3

    .line 247
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_10d

    .line 240
    :catch_e3
    move-exception v0

    .line 241
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xc

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 187
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "pkg":Ljava/lang/String;
    :goto_10d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    goto/16 :goto_73

    .line 249
    :cond_11b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 27
    .param p0, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p2, "whichPackages"    # [Ljava/lang/String;
    .param p3, "updateSchedule"    # Z
    .param p4, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p6, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "userInitiated"    # Z
    .param p9, "caller"    # Ljava/lang/String;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 111
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v14

    .line 112
    .local v14, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v15, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;

    .local v15, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v15, v0, v14}, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 115
    new-instance v16, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v15

    move/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    return-object v16
.end method

.method private registerTask()V
    .registers 7

    .line 252
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_7
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 660
    if-eqz p1, :cond_2d

    .line 661
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 662
    aget-object v1, p1, v0

    .line 663
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v2, p1, v0

    .line 665
    :try_start_c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 668
    goto :goto_18

    .line 666
    :catch_10
    move-exception v0

    .line 667
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PFTBT"

    const-string v4, "Unable to close pipe!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_18
    :goto_18
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_2d

    .line 671
    aget-object v1, p1, v0

    .line 672
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v2, p1, v0

    .line 674
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 677
    goto :goto_2d

    .line 675
    :catch_25
    move-exception v0

    .line 676
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public execute()V
    .registers 1

    .line 267
    return-void
.end method

.method public handleCancel(Z)V
    .registers 7
    .param p1, "cancelAll"    # Z

    .line 271
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    if-nez p1, :cond_f

    .line 278
    :try_start_5
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 299
    :catchall_d
    move-exception v1

    goto :goto_4f

    .line 281
    :cond_f
    :goto_f
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_1c

    .line 282
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v0

    return-void

    .line 286
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 287
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_4d

    .line 288
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_d

    .line 291
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PFTBT.handleCancel()"

    .line 292
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 293
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_36
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_d

    .line 297
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_4d

    .line 294
    :catch_36
    move-exception v1

    .line 295
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_37
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_d

    throw v1
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 305
    return-void
.end method

.method public run()V
    .registers 48

    .line 311
    move-object/from16 v10, p0

    const/4 v1, 0x0

    .line 314
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 316
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v3, 0x0

    .line 317
    .local v3, "backoff":J
    const/4 v11, 0x0

    move v12, v11

    .line 320
    .local v12, "backupRunStatus":I
    const/4 v14, 0x0

    :try_start_9
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_68f

    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 323
    move/from16 v27, v12

    goto/16 :goto_691

    .line 343
    :cond_1d
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "PFTBT.run()"

    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_754
    .catchall {:try_start_9 .. :try_end_25} :catchall_74e

    move-object v15, v0

    .line 344
    .local v15, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v9, 0x1

    if-nez v15, :cond_ad

    .line 345
    :try_start_29
    const-string v0, "PFTBT"

    const-string v5, "Transport not present; full data backup not performed"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v12, -0x3e8

    .line 347
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0xf

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v5, v6, v9, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3e} :catch_a8
    .catchall {:try_start_29 .. :try_end_3e} :catchall_7e7

    .line 622
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_44

    .line 623
    const/16 v12, -0x7d3

    .line 627
    .end local v12    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :cond_44
    move v5, v12

    const-string v0, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_72

    .line 637
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_72
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 641
    :try_start_79
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_a5

    .line 644
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v0, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_94

    .line 651
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 654
    :cond_94
    const-string v0, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    return-void

    .line 642
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    .line 609
    .end local v5    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "backupRunStatus":I
    :catch_a8
    move-exception v0

    move/from16 v27, v12

    goto/16 :goto_757

    .line 355
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_ad
    :try_start_ad
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v8, v0

    .line 356
    .local v8, "N":I
    const/16 v0, 0x2000

    new-array v0, v0, [B
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b8} :catch_754
    .catchall {:try_start_ad .. :try_end_b8} :catchall_74e

    move-object v5, v0

    .line 357
    .local v5, "buffer":[B
    move v0, v11

    .line 357
    .local v0, "i":I
    :goto_ba
    move v6, v0

    .line 357
    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v8, :cond_610

    .line 358
    :try_start_bd
    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 359
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v7, v0

    .line 360
    .local v7, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 362
    .local v16, "packageName":Ljava/lang/String;
    const-string v0, "PFTBT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Initiating full-data transport backup of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v16    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    const-string v9, " token: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v0, 0xb18

    invoke-static {v0, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 367
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_f7} :catch_609
    .catchall {:try_start_bd .. :try_end_f7} :catchall_601

    move-object v13, v0

    .line 370
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v13, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_f8
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    move v9, v0

    .line 372
    .local v9, "flags":I
    const-wide v18, 0x7fffffffffffffffL

    .line 373
    .local v18, "quota":J
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_103} :catch_5fa
    .catchall {:try_start_f8 .. :try_end_103} :catchall_5f4

    .line 374
    :try_start_103
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_105
    .catchall {:try_start_103 .. :try_end_105} :catchall_5d3

    if-eqz v0, :cond_122

    .line 375
    :try_start_107
    monitor-exit v2
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_10e

    .line 622
    move-wide/from16 v25, v3

    move/from16 v27, v12

    goto/16 :goto_615

    .line 395
    :catchall_10e
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object/from16 v41, v5

    move/from16 v29, v6

    move-object v5, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object v12, v14

    move-object v9, v15

    goto/16 :goto_5e5

    .line 377
    :cond_122
    :try_start_122
    aget-object v0, v13, v11

    invoke-interface {v15, v7, v0, v9}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0
    :try_end_128
    .catchall {:try_start_122 .. :try_end_128} :catchall_5d3

    .line 380
    .local v0, "backupPackageStatus":I
    if-nez v0, :cond_1f8

    .line 381
    :try_start_12a
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_12c
    .catchall {:try_start_12a .. :try_end_12c} :catchall_1e4

    move-wide/from16 v20, v3

    const/4 v3, 0x1

    :try_start_12f
    invoke-interface {v15, v11, v3}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v22
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_1d0

    .line 381
    .end local v3    # "backoff":J
    .local v20, "backoff":J
    move v11, v6

    move-object v4, v7

    move-wide/from16 v6, v22

    .line 384
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "quota":J
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v6, "quota":J
    .local v11, "i":I
    :try_start_137
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_1ba

    move-object/from16 v16, v3

    .line 385
    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_13d
    new-instance v3, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v17, 0x1

    aget-object v18, v16, v17

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_1a4

    move/from16 v24, v8

    :try_start_147
    iget v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 388
    .end local v8    # "N":I
    .local v24, "N":I
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v19
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_18c

    move-object/from16 v22, v1

    move-object v1, v3

    move-object/from16 v23, v2

    move-object v2, v10

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move-object v12, v3

    move-object/from16 v3, v18

    .end local v12    # "backupRunStatus":I
    .end local v20    # "backoff":J
    .local v25, "backoff":J
    .local v27, "backupRunStatus":I
    move-object/from16 v28, v4

    .line 388
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v28, "currentPackage":Landroid/content/pm/PackageInfo;
    move/from16 v29, v11

    move-object v11, v5

    move-object/from16 v5, v22

    .line 388
    .end local v5    # "buffer":[B
    .local v11, "buffer":[B
    .local v29, "i":I
    move/from16 v20, v24

    .line 388
    .end local v24    # "N":I
    .local v20, "N":I
    move-object/from16 v30, v14

    move/from16 v14, v17

    move/from16 v17, v9

    move/from16 v9, v19

    .line 388
    .end local v9    # "flags":I
    .end local v14    # "packageName":Ljava/lang/String;
    .local v17, "flags":I
    .local v30, "packageName":Ljava/lang/String;
    :try_start_16b
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 390
    aget-object v1, v16, v14

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 391
    const/4 v1, 0x0

    aput-object v1, v16, v14

    .line 393
    iput-boolean v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_17a
    .catchall {:try_start_16b .. :try_end_17a} :catchall_17e

    .line 395
    move-object/from16 v1, v16

    goto/16 :goto_20c

    .line 395
    .end local v0    # "backupPackageStatus":I
    :catchall_17e
    move-exception v0

    move-wide/from16 v18, v6

    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v1, v16

    move-object/from16 v5, v28

    move-object/from16 v12, v30

    goto/16 :goto_5e5

    .line 395
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v9    # "flags":I
    .local v11, "i":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .local v20, "backoff":J
    .restart local v24    # "N":I
    :catchall_18c
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v24

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    move-object/from16 v1, v16

    move-object v5, v4

    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v24    # "N":I
    .local v11, "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_5e5

    .line 395
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .local v11, "i":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .local v20, "backoff":J
    :catchall_1a4
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    move-object/from16 v1, v16

    goto :goto_1cd

    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_1ba
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    .end local v6    # "quota":J
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v18    # "quota":J
    .local v41, "buffer":[B
    :goto_1cd
    move-object v5, v4

    .line 395
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .local v11, "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_5e5

    .line 395
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v41    # "buffer":[B
    .restart local v5    # "buffer":[B
    .local v6, "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v20, "backoff":J
    :catchall_1d0
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v29, v6

    move/from16 v17, v9

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-object v5, v7

    move-object v12, v14

    move-object v9, v15

    .end local v5    # "buffer":[B
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_5e5

    .line 395
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v3    # "backoff":J
    .restart local v5    # "buffer":[B
    .restart local v6    # "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :catchall_1e4
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move/from16 v29, v6

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object/from16 v41, v5

    move-object v5, v7

    move-object v12, v14

    move-object v9, v15

    .end local v3    # "backoff":J
    .end local v5    # "buffer":[B
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_5e5

    .line 395
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v0    # "backupPackageStatus":I
    .restart local v3    # "backoff":J
    .restart local v5    # "buffer":[B
    .restart local v6    # "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_1f8
    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object v11, v5

    move/from16 v29, v6

    move-object/from16 v28, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object/from16 v30, v14

    const/4 v14, 0x1

    move-wide/from16 v6, v18

    .end local v3    # "backoff":J
    .end local v5    # "buffer":[B
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "quota":J
    .local v6, "quota":J
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    :goto_20c
    :try_start_20c
    monitor-exit v23
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_5c8

    .line 396
    if-nez v0, :cond_3c9

    .line 400
    const/4 v3, 0x0

    :try_start_210
    aget-object v4, v13, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 401
    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 405
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v5, "package-backup-bridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 410
    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 411
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 412
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    aget-object v5, v13, v14

    .line 413
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 414
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 415
    .local v8, "totalRead":J
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v18

    move-wide/from16 v31, v18

    .line 417
    .local v31, "preflightResult":J
    const-wide/16 v18, 0x0

    move-object/from16 v33, v15

    move-wide/from16 v14, v31

    cmp-long v5, v14, v18

    .line 417
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "preflightResult":J
    .local v14, "preflightResult":J
    .local v33, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-gez v5, :cond_277

    .line 423
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v12, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 427
    move-wide/from16 v34, v8

    const/4 v8, 0x0

    invoke-static {v8, v12, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v9

    .line 423
    .end local v8    # "totalRead":J
    .local v34, "totalRead":J
    const/16 v8, 0x10

    const/4 v12, 0x3

    invoke-static {v5, v8, v2, v12, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 430
    long-to-int v0, v14

    .line 467
    move/from16 v39, v0

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v41, v11

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    move-wide/from16 v3, v34

    goto/16 :goto_337

    .line 432
    .end local v34    # "totalRead":J
    .restart local v8    # "totalRead":J
    :cond_277
    move-wide/from16 v34, v8

    .line 432
    .end local v8    # "totalRead":J
    .restart local v34    # "totalRead":J
    move v2, v0

    const/4 v0, 0x0

    .line 434
    .local v0, "nRead":I
    .local v2, "backupPackageStatus":I
    :goto_27b
    invoke-virtual {v3, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 438
    .end local v0    # "nRead":I
    .local v5, "nRead":I
    if-lez v5, :cond_2d4

    .line 439
    const/4 v8, 0x0

    invoke-virtual {v4, v11, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 440
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_288} :catch_5ec
    .catchall {:try_start_210 .. :try_end_288} :catchall_5e7

    .line 441
    :try_start_288
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_28a
    .catchall {:try_start_288 .. :try_end_28a} :catchall_2c9

    if-nez v0, :cond_29a

    .line 442
    move-object/from16 v9, v33

    :try_start_28e
    invoke-interface {v9, v5}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v0
    :try_end_292
    .catchall {:try_start_28e .. :try_end_292} :catchall_294

    .line 444
    .end local v2    # "backupPackageStatus":I
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v0, "backupPackageStatus":I
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    move v2, v0

    goto :goto_29c

    .line 444
    .end local v0    # "backupPackageStatus":I
    .restart local v2    # "backupPackageStatus":I
    :catchall_294
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    goto :goto_2d0

    .line 444
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_29a
    move-object/from16 v9, v33

    .line 444
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_29c
    :try_start_29c
    monitor-exit v8
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_2c1

    .line 445
    move/from16 v37, v2

    move-object/from16 v36, v3

    int-to-long v2, v5

    .line 445
    .end local v2    # "backupPackageStatus":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v36, "in":Ljava/io/FileInputStream;
    .local v37, "backupPackageStatus":I
    add-long v2, v34, v2

    .line 446
    .end local v34    # "totalRead":J
    .local v2, "totalRead":J
    :try_start_2a4
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_2b9

    cmp-long v0, v14, v18

    if-lez v0, :cond_2b9

    .line 447
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    new-instance v8, Landroid/app/backup/BackupProgress;

    invoke-direct {v8, v14, v15, v2, v3}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 448
    move-object/from16 v12, v30

    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2b8} :catch_5ec
    .catchall {:try_start_2a4 .. :try_end_2b8} :catchall_5e7

    .line 448
    .end local v30    # "packageName":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    goto :goto_2bb

    .line 452
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v30    # "packageName":Ljava/lang/String;
    :cond_2b9
    move-object/from16 v12, v30

    .line 452
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    :goto_2bb
    move-object/from16 v38, v4

    move-wide v3, v2

    move/from16 v2, v37

    goto :goto_2de

    .line 444
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v37    # "backupPackageStatus":I
    .local v2, "backupPackageStatus":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v34    # "totalRead":J
    :catchall_2c1
    move-exception v0

    move/from16 v37, v2

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    .line 444
    .end local v2    # "backupPackageStatus":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .restart local v37    # "backupPackageStatus":I
    goto :goto_2d0

    .line 444
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v37    # "backupPackageStatus":I
    .restart local v2    # "backupPackageStatus":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_2c9
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    .line 444
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    :goto_2d0
    :try_start_2d0
    monitor-exit v8
    :try_end_2d1
    .catchall {:try_start_2d0 .. :try_end_2d1} :catchall_2d2

    :try_start_2d1
    throw v0

    :catchall_2d2
    move-exception v0

    goto :goto_2d0

    .line 452
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2d4
    move-object/from16 v36, v3

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    move-object/from16 v38, v4

    move-wide/from16 v3, v34

    .line 452
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v34    # "totalRead":J
    .local v3, "totalRead":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .local v38, "out":Ljava/io/FileOutputStream;
    :goto_2de
    if-lez v5, :cond_2ef

    if-eqz v2, :cond_2e3

    goto :goto_2ef

    .line 432
    :cond_2e3
    move-wide/from16 v34, v3

    move v0, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    goto :goto_27b

    .line 455
    :cond_2ef
    :goto_2ef
    const/16 v0, -0x3ed

    if-ne v2, v0, :cond_333

    .line 456
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v2

    const-string v2, "Package hit quota limit in-flight "

    .line 456
    .end local v2    # "backupPackageStatus":I
    .local v39, "backupPackageStatus":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x12

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move/from16 v40, v5

    move-object/from16 v41, v11

    const/4 v5, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v2, v8, v11, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .end local v5    # "nRead":I
    .end local v11    # "buffer":[B
    .local v40, "nRead":I
    .restart local v41    # "buffer":[B
    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 463
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    .line 463
    .end local v40    # "nRead":I
    goto :goto_337

    .line 467
    .end local v39    # "backupPackageStatus":I
    .end local v41    # "buffer":[B
    .restart local v2    # "backupPackageStatus":I
    .restart local v11    # "buffer":[B
    :cond_333
    move/from16 v39, v2

    move-object/from16 v41, v11

    .line 467
    .end local v2    # "backupPackageStatus":I
    .end local v11    # "buffer":[B
    .restart local v39    # "backupPackageStatus":I
    .restart local v41    # "buffer":[B
    :goto_337
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v0

    move v2, v0

    .line 469
    .local v2, "backupRunnerResult":I
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_341} :catch_5ec
    .catchall {:try_start_2d1 .. :try_end_341} :catchall_5e7

    .line 470
    const/4 v8, 0x0

    :try_start_342
    iput-boolean v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 472
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_346
    .catchall {:try_start_342 .. :try_end_346} :catchall_3c0

    if-nez v0, :cond_35d

    .line 473
    if-nez v2, :cond_35a

    .line 478
    :try_start_34a
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v0

    .line 479
    .local v0, "finishResult":I
    if-nez v39, :cond_352

    .line 480
    move/from16 v39, v0

    .line 482
    .end local v0    # "finishResult":I
    :cond_352
    goto :goto_35d

    .line 486
    :catchall_353
    move-exception v0

    move/from16 v46, v2

    move-wide/from16 v44, v3

    goto/16 :goto_3c5

    .line 483
    :cond_35a
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_35d
    .catchall {:try_start_34a .. :try_end_35d} :catchall_353

    .line 486
    :cond_35d
    :goto_35d
    :try_start_35d
    monitor-exit v5
    :try_end_35e
    .catchall {:try_start_35d .. :try_end_35e} :catchall_3c0

    .line 497
    if-nez v39, :cond_364

    .line 499
    if-eqz v2, :cond_364

    .line 502
    move v0, v2

    .line 502
    .end local v39    # "backupPackageStatus":I
    .local v0, "backupPackageStatus":I
    goto :goto_366

    .line 515
    .end local v0    # "backupPackageStatus":I
    .restart local v39    # "backupPackageStatus":I
    :cond_364
    move/from16 v0, v39

    .line 515
    .end local v39    # "backupPackageStatus":I
    .restart local v0    # "backupPackageStatus":I
    :goto_366
    if-eqz v0, :cond_386

    .line 516
    :try_start_368
    const-string v5, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " backing up "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_386
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v18
    :try_end_38a
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_38a} :catch_5ec
    .catchall {:try_start_368 .. :try_end_38a} :catchall_5e7

    move-wide/from16 v42, v18

    .line 524
    .end local v25    # "backoff":J
    .local v42, "backoff":J
    :try_start_38c
    const-string v5, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport suggested backoff="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_38c .. :try_end_398} :catch_3b9
    .catchall {:try_start_38c .. :try_end_398} :catchall_3b3

    move/from16 v46, v2

    move-wide/from16 v44, v3

    move-wide/from16 v2, v42

    :try_start_39e
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v3    # "totalRead":J
    .end local v42    # "backoff":J
    .local v2, "backoff":J
    .local v44, "totalRead":J
    .local v46, "backupRunnerResult":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a8
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3a8} :catch_3af
    .catchall {:try_start_39e .. :try_end_3a8} :catchall_3ab

    .line 531
    .end local v14    # "preflightResult":J
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v38    # "out":Ljava/io/FileOutputStream;
    .end local v44    # "totalRead":J
    .end local v46    # "backupRunnerResult":I
    move-wide v3, v2

    move v2, v0

    goto :goto_3d1

    .line 622
    .end local v0    # "backupPackageStatus":I
    .end local v6    # "quota":J
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    :catchall_3ab
    move-exception v0

    move-wide v3, v2

    goto/16 :goto_7eb

    .line 609
    :catch_3af
    move-exception v0

    move-wide v3, v2

    goto/16 :goto_5c5

    .line 622
    .end local v2    # "backoff":J
    .restart local v42    # "backoff":J
    :catchall_3b3
    move-exception v0

    move-wide/from16 v2, v42

    move-wide v3, v2

    .line 622
    .end local v42    # "backoff":J
    .restart local v2    # "backoff":J
    goto/16 :goto_7eb

    .line 609
    .end local v2    # "backoff":J
    .restart local v42    # "backoff":J
    :catch_3b9
    move-exception v0

    move-wide/from16 v2, v42

    move-wide v3, v2

    move-object v2, v13

    .line 609
    .end local v42    # "backoff":J
    .restart local v2    # "backoff":J
    goto/16 :goto_757

    .line 486
    .local v2, "backupRunnerResult":I
    .restart local v3    # "totalRead":J
    .restart local v6    # "quota":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "preflightResult":J
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .restart local v38    # "out":Ljava/io/FileOutputStream;
    .restart local v39    # "backupPackageStatus":I
    .restart local v41    # "buffer":[B
    :catchall_3c0
    move-exception v0

    move/from16 v46, v2

    move-wide/from16 v44, v3

    .line 486
    .end local v2    # "backupRunnerResult":I
    .end local v3    # "totalRead":J
    .restart local v44    # "totalRead":J
    .restart local v46    # "backupRunnerResult":I
    :goto_3c5
    :try_start_3c5
    monitor-exit v5
    :try_end_3c6
    .catchall {:try_start_3c5 .. :try_end_3c6} :catchall_3c7

    :try_start_3c6
    throw v0
    :try_end_3c7
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3c7} :catch_5ec
    .catchall {:try_start_3c6 .. :try_end_3c7} :catchall_5e7

    :catchall_3c7
    move-exception v0

    goto :goto_3c5

    .line 531
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "preflightResult":J
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v38    # "out":Ljava/io/FileOutputStream;
    .end local v39    # "backupPackageStatus":I
    .end local v41    # "buffer":[B
    .end local v44    # "totalRead":J
    .end local v46    # "backupRunnerResult":I
    .restart local v0    # "backupPackageStatus":I
    .restart local v11    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v30    # "packageName":Ljava/lang/String;
    :cond_3c9
    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v12, v30

    move v2, v0

    move-wide/from16 v3, v25

    .line 531
    .end local v0    # "backupPackageStatus":I
    .end local v11    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v25    # "backoff":J
    .end local v30    # "packageName":Ljava/lang/String;
    .local v2, "backupPackageStatus":I
    .local v3, "backoff":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v41    # "buffer":[B
    :goto_3d1
    :try_start_3d1
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_3de

    .line 532
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 535
    :cond_3de
    const/16 v0, -0x3ea

    if-ne v2, v0, :cond_426

    .line 536
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 537
    invoke-static {v5, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 540
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport rejected backup of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", skipping"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v0, 0xb19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v5, v8

    const-string/jumbo v8, "transport rejected"

    const/4 v11, 0x1

    aput-object v8, v5, v11

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 548
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v0, :cond_422

    .line 549
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v5, v28

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 549
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_56e

    .line 598
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_422
    move-object/from16 v5, v28

    .line 598
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    goto/16 :goto_56e

    .line 552
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_426
    move-object/from16 v5, v28

    const/4 v11, 0x1

    .line 552
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    const/16 v0, -0x3ed

    if-ne v2, v0, :cond_456

    .line 553
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 554
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 557
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport quota exceeded for package: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v0, 0xb1d

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 561
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_56e

    .line 563
    :cond_456
    const/16 v0, -0x3eb

    if-ne v2, v0, :cond_483

    .line 564
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 565
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 567
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Application failure for package: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v0, 0xb07

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 569
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_56e

    .line 571
    :cond_483
    const/16 v0, -0x7d3

    if-ne v2, v0, :cond_4ba

    .line 572
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 573
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 575
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Backup cancelled. package="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", cancelAll="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v0, 0xb1e

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 578
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_56e

    .line 580
    :cond_4ba
    if-eqz v2, :cond_55e

    .line 581
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3e8

    .line 582
    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 584
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport failed; aborting backup: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/16 v0, 0xb1a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4e1
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_4e1} :catch_5c4
    .catchall {:try_start_3d1 .. :try_end_4e1} :catchall_5c1

    .line 587
    const/16 v8, -0x3e8

    .line 588
    .end local v27    # "backupRunStatus":I
    .local v8, "backupRunStatus":I
    :try_start_4e3
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4ea
    .catch Ljava/lang/Exception; {:try_start_4e3 .. :try_end_4ea} :catch_55a
    .catchall {:try_start_4e3 .. :try_end_4ea} :catchall_555

    .line 622
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_4f0

    .line 623
    const/16 v8, -0x7d3

    .line 627
    .end local v8    # "backupRunStatus":I
    .local v11, "backupRunStatus":I
    :cond_4f0
    move v11, v8

    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Full backup completed with status: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_51e

    .line 637
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_51e
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 641
    :try_start_525
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v14
    :try_end_52c
    .catchall {:try_start_525 .. :try_end_52c} :catchall_552

    .line 644
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v0, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_541

    .line 651
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 654
    :cond_541
    const-string v0, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 589
    return-void

    .line 642
    :catchall_552
    move-exception v0

    :try_start_553
    monitor-exit v14
    :try_end_554
    .catchall {:try_start_553 .. :try_end_554} :catchall_552

    throw v0

    .line 622
    .end local v2    # "backupPackageStatus":I
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v8    # "backupRunStatus":I
    :catchall_555
    move-exception v0

    move/from16 v27, v8

    goto/16 :goto_7eb

    .line 609
    :catch_55a
    move-exception v0

    move/from16 v27, v8

    goto :goto_5c5

    .line 592
    .end local v8    # "backupRunStatus":I
    .restart local v2    # "backupPackageStatus":I
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "quota":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :cond_55e
    :try_start_55e
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 593
    const/4 v8, 0x0

    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 595
    const/16 v0, 0xb1b

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 596
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 598
    :goto_56e
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 599
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 600
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5b2

    .line 601
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unbinding agent in "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unbinding "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_5a5
    .catch Ljava/lang/Exception; {:try_start_55e .. :try_end_5a5} :catch_5c4
    .catchall {:try_start_55e .. :try_end_5a5} :catchall_5c1

    .line 604
    :try_start_5a5
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5b0
    .catch Landroid/os/RemoteException; {:try_start_5a5 .. :try_end_5b0} :catch_5b1
    .catch Ljava/lang/Exception; {:try_start_5a5 .. :try_end_5b0} :catch_5c4
    .catchall {:try_start_5a5 .. :try_end_5b0} :catchall_5c1

    .line 606
    goto :goto_5b2

    :catch_5b1
    move-exception v0

    .line 357
    .end local v2    # "backupPackageStatus":I
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    :cond_5b2
    :goto_5b2
    add-int/lit8 v0, v29, 0x1

    .line 357
    .end local v29    # "i":I
    .local v0, "i":I
    move-object v15, v9

    move v9, v11

    move-object v2, v13

    move/from16 v8, v20

    move/from16 v12, v27

    move-object/from16 v5, v41

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_ba

    .line 622
    .end local v0    # "i":I
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "N":I
    .end local v41    # "buffer":[B
    :catchall_5c1
    move-exception v0

    goto/16 :goto_7eb

    .line 609
    :catch_5c4
    move-exception v0

    .line 609
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_5c5
    move-object v2, v13

    goto/16 :goto_757

    .line 395
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .restart local v6    # "quota":J
    .local v11, "buffer":[B
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    :catchall_5c8
    move-exception v0

    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v5, v28

    move-object/from16 v12, v30

    move-wide/from16 v18, v6

    .line 395
    .end local v11    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v41    # "buffer":[B
    goto :goto_5e5

    .line 395
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v3    # "backoff":J
    .local v5, "buffer":[B
    .local v6, "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v8, "N":I
    .local v9, "flags":I
    .local v12, "backupRunStatus":I
    .local v14, "packageName":Ljava/lang/String;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v18    # "quota":J
    :catchall_5d3
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object/from16 v41, v5

    move/from16 v29, v6

    move-object v5, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object v12, v14

    move-object v9, v15

    .end local v3    # "backoff":J
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v12, "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :goto_5e5
    :try_start_5e5
    monitor-exit v23
    :try_end_5e6
    .catchall {:try_start_5e5 .. :try_end_5e6} :catchall_5f2

    :try_start_5e6
    throw v0
    :try_end_5e7
    .catch Ljava/lang/Exception; {:try_start_5e6 .. :try_end_5e7} :catch_5ec
    .catchall {:try_start_5e6 .. :try_end_5e7} :catchall_5e7

    .line 622
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v18    # "quota":J
    .end local v20    # "N":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    :catchall_5e7
    move-exception v0

    move-wide/from16 v3, v25

    goto/16 :goto_7eb

    .line 609
    :catch_5ec
    move-exception v0

    move-object v2, v13

    move-wide/from16 v3, v25

    goto/16 :goto_757

    .line 395
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v18    # "quota":J
    .restart local v20    # "N":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :catchall_5f2
    move-exception v0

    goto :goto_5e5

    .line 622
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "flags":I
    .end local v18    # "quota":J
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v3    # "backoff":J
    .local v12, "backupRunStatus":I
    :catchall_5f4
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    goto :goto_607

    .line 609
    :catch_5fa
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v2, v13

    goto :goto_60e

    .line 622
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_601
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v13, v2

    .line 622
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_607
    goto/16 :goto_7eb

    .line 609
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    .restart local v12    # "backupRunStatus":I
    :catch_609
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    .line 609
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_60e
    goto/16 :goto_757

    .line 622
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v3    # "backoff":J
    .restart local v12    # "backupRunStatus":I
    :cond_610
    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v13, v2

    .line 622
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_615
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_61c

    .line 623
    const/16 v12, -0x7d3

    .line 623
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    goto :goto_61e

    .line 627
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :cond_61c
    move/from16 v12, v27

    .line 627
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :goto_61e
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_64b

    .line 637
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_64b
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 641
    :try_start_652
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v5
    :try_end_659
    .catchall {:try_start_652 .. :try_end_659} :catchall_688

    .line 644
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_671

    .line 651
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-wide/from16 v6, v25

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_673

    .line 654
    :cond_671
    move-wide/from16 v6, v25

    .line 654
    .end local v25    # "backoff":J
    .local v6, "backoff":J
    :goto_673
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 656
    nop

    .line 657
    move-wide v3, v6

    move v5, v12

    goto/16 :goto_7e3

    .line 642
    .end local v6    # "backoff":J
    .restart local v25    # "backoff":J
    :catchall_688
    move-exception v0

    move-wide/from16 v6, v25

    .line 642
    .end local v25    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_68b
    :try_start_68b
    monitor-exit v5
    :try_end_68c
    .catchall {:try_start_68b .. :try_end_68c} :catchall_68d

    throw v0

    :catchall_68d
    move-exception v0

    goto :goto_68b

    .line 323
    .end local v6    # "backoff":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    :cond_68f
    move/from16 v27, v12

    .line 323
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :goto_691
    :try_start_691
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "full backup requested but enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 324
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " provisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 325
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_6cb

    .line 330
    const/16 v0, 0xd

    .line 330
    .local v0, "monitoringEvent":I
    goto :goto_6cd

    .line 332
    .end local v0    # "monitoringEvent":I
    :cond_6cb
    const/16 v0, 0xe

    .line 332
    .restart local v0    # "monitoringEvent":I
    :goto_6cd
    move v5, v0

    .line 334
    .end local v0    # "monitoringEvent":I
    .local v5, "monitoringEvent":I
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 335
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v5, v6, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 338
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_6db
    .catch Ljava/lang/Exception; {:try_start_691 .. :try_end_6db} :catch_74c
    .catchall {:try_start_691 .. :try_end_6db} :catchall_748

    .line 339
    const/16 v0, -0x7d1

    .line 622
    .end local v27    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_6e3

    .line 623
    const/16 v0, -0x7d3

    .line 627
    .end local v0    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    :cond_6e3
    move v6, v0

    const-string v0, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_711

    .line 637
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_711
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 641
    :try_start_718
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v7
    :try_end_71f
    .catchall {:try_start_718 .. :try_end_71f} :catchall_745

    .line 644
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_734

    .line 651
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 654
    :cond_734
    const-string v0, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 340
    return-void

    .line 642
    :catchall_745
    move-exception v0

    :try_start_746
    monitor-exit v7
    :try_end_747
    .catchall {:try_start_746 .. :try_end_747} :catchall_745

    throw v0

    .line 622
    .end local v5    # "monitoringEvent":I
    .end local v6    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :catchall_748
    move-exception v0

    move-object v13, v2

    goto/16 :goto_7eb

    .line 609
    :catch_74c
    move-exception v0

    goto :goto_757

    .line 622
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catchall_74e
    move-exception v0

    move/from16 v27, v12

    move-object v13, v2

    .line 622
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_7eb

    .line 609
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catch_754
    move-exception v0

    move/from16 v27, v12

    .line 610
    .end local v12    # "backupRunStatus":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v27    # "backupRunStatus":I
    :goto_757
    const/16 v12, -0x3e8

    .line 611
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :try_start_759
    const-string v5, "PFTBT"

    const-string v6, "Exception trying full transport backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x13

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v8, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 618
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 616
    const/4 v11, 0x0

    invoke-static {v11, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 612
    const/4 v9, 0x3

    invoke-static {v5, v6, v7, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_778
    .catchall {:try_start_759 .. :try_end_778} :catchall_7e7

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_780

    .line 623
    const/16 v0, -0x7d3

    .line 627
    .end local v12    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    move v5, v0

    goto :goto_781

    .line 627
    .end local v0    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :cond_780
    move v5, v12

    .line 627
    .end local v12    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :goto_781
    const-string v0, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_7ae

    .line 637
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_7ae
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 641
    :try_start_7b5
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v6
    :try_end_7bc
    .catchall {:try_start_7b5 .. :try_end_7bc} :catchall_7e4

    .line 644
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v0, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_7d1

    .line 651
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 654
    :cond_7d1
    const-string v0, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 656
    nop

    .line 657
    move-object v13, v2

    .line 657
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_7e3
    return-void

    .line 642
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_7e4
    move-exception v0

    :try_start_7e5
    monitor-exit v6
    :try_end_7e6
    .catchall {:try_start_7e5 .. :try_end_7e6} :catchall_7e4

    throw v0

    .line 622
    .end local v5    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catchall_7e7
    move-exception v0

    move-object v13, v2

    move/from16 v27, v12

    .line 622
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "backupRunStatus":I
    :goto_7eb
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_7f1

    .line 623
    const/16 v27, -0x7d3

    .line 627
    .end local v27    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :cond_7f1
    move/from16 v2, v27

    const-string v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 631
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 632
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 636
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_820

    .line 637
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 640
    :cond_820
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 641
    :try_start_827
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 642
    monitor-exit v5
    :try_end_82e
    .catchall {:try_start_827 .. :try_end_82e} :catchall_854

    .line 644
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v5, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 646
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_843

    .line 651
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 654
    :cond_843
    const-string v5, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 642
    :catchall_854
    move-exception v0

    :try_start_855
    monitor-exit v5
    :try_end_856
    .catchall {:try_start_855 .. :try_end_856} :catchall_854

    throw v0
.end method

.method public unregisterTask()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 262
    return-void
.end method
