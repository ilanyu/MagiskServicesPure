.class public Lcom/miui/server/BackupManagerService;
.super Lmiui/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/BackupManagerService$DeathLinker;,
        Lcom/miui/server/BackupManagerService$BackupHandler;,
        Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_ENABLED_STATE_NONE:I = -0x1

.field private static final FD_NONE:I = -0x1

.field private static final PID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBackupReadSide:Landroid/os/ParcelFileDescriptor;

.field private mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

.field private mCallerFd:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCompletedSize:J

.field private mCurrentTotalSize:J

.field private mCurrentWorkingFeature:I

.field private mCurrentWorkingPkg:Ljava/lang/String;

.field private mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

.field private mEncryptedPwd:Ljava/lang/String;

.field private mEncryptedPwdInBakFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICaller:Landroid/os/IBinder;

.field private mIsNeedBeKilled:Z

.field private mLastError:I

.field private mOwnerPid:I

.field private mPackageCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageLastEnableState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProgType:I

.field private mPwd:Ljava/lang/String;

.field private mShouldSkipData:Z

.field private mState:I

.field private mStateObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/app/backup/IBackupServiceStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lmiui/app/backup/IBackupManager$Stub;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    .line 77
    new-instance v2, Lcom/miui/server/BackupManagerService$DeathLinker;

    invoke-direct {v2, p0, v1}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    .line 78
    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 86
    iput v0, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Lcom/miui/server/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$1;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 826
    new-instance v0, Lcom/miui/server/BackupManagerService$5;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$5;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 113
    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 115
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MiuiBackup"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/miui/server/BackupManagerService$BackupHandler;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/server/BackupManagerService$BackupHandler;-><init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;Lcom/miui/server/BackupManagerService$1;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/BackupManagerService;->restoreLastPackageEnableState(Ljava/io/File;)V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/server/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V

    return-void
.end method

.method static synthetic access$1102(Lcom/miui/server/BackupManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 53
    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/server/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/server/BackupManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # J

    .line 53
    iput-wide p1, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/BackupManagerService;)Landroid/os/ParcelFileDescriptor;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/server/BackupManagerService;Lmiui/app/backup/IPackageBackupRestoreObserver;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # Lmiui/app/backup/IPackageBackupRestoreObserver;

    .line 53
    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/server/BackupManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .line 53
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method private appHasOwnBackupAgent(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "has":Z
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 214
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1e

    .line 215
    const-class v2, Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1f

    if-nez v2, :cond_1e

    .line 216
    const/4 v0, 0x1

    .line 221
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1e
    goto :goto_23

    .line 219
    :catch_1f
    move-exception v1

    .line 220
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 222
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_23
    return v0
.end method

.method private broadcastServiceIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 490
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 491
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/app/backup/IBackupServiceStateObserver;

    invoke-interface {v2}, Lmiui/app/backup/IBackupServiceStateObserver;->onServiceStateIdle()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_20

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 494
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    nop

    .line 496
    monitor-exit p0

    .line 497
    return-void

    .line 494
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 496
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "defaultIme"    # Ljava/lang/String;

    .line 543
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 544
    return-void

    .line 546
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_35

    .line 547
    invoke-direct {p0, p1, p3}, Lcom/miui/server/BackupManagerService;->isDefaultIme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 552
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 553
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/BackupManagerService$4;

    invoke-direct {v1, p0, p3}, Lcom/miui/server/BackupManagerService$4;-><init>(Lcom/miui/server/BackupManagerService;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    .line 561
    :cond_25
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 563
    :goto_2c
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v0

    .line 564
    .local v0, "pkgStateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 565
    .end local v0    # "pkgStateFile":Ljava/io/File;
    goto/16 :goto_b0

    .line 566
    :cond_35
    iget v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_42

    .line 567
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 569
    :cond_42
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v2

    iget v3, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-direct {p0, v2, p1, v3}, Lcom/miui/server/BackupManagerService;->saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V

    .line 572
    :try_start_4b
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 574
    .local v2, "waitStartTime":J
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_b3

    .line 576
    :try_start_5f
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x2

    invoke-virtual {v0, p1, v5, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 578
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v5, 0x1388

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 579
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_76} :catch_79
    .catchall {:try_start_5f .. :try_end_76} :catchall_77

    .line 582
    goto :goto_82

    .line 583
    :catchall_77
    move-exception v0

    goto :goto_b1

    .line 580
    :catch_79
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7a
    const-string v1, "Backup:BackupManagerService"

    const-string/jumbo v5, "mPkgChangingLock wait error"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_82
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_77

    .line 584
    :try_start_83
    const-string v0, "Backup:BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationEnabledSetting wait time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_83 .. :try_end_a7} :catchall_b3

    .line 586
    .end local v2    # "waitStartTime":J
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 587
    nop

    .line 588
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService;->waitUntilAppKilled(Ljava/lang/String;)V

    .line 590
    :goto_b0
    return-void

    .line 583
    .restart local v2    # "waitStartTime":J
    :goto_b1
    :try_start_b1
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_77

    :try_start_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    .line 586
    .end local v2    # "waitStartTime":J
    :catchall_b3
    move-exception v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    throw v0
.end method

.method public static getCachedInstallFile()Ljava/io/File;
    .registers 3

    .line 632
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    .local v0, "sysDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "restoring_cached_file"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 634
    .local v1, "cachedFile":Ljava/io/File;
    return-object v1
.end method

.method private getDefaultIme(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 849
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "defaultIme":Ljava/lang/String;
    return-object v0
.end method

.method private getPackageEnableStateFile()Ljava/io/File;
    .registers 4

    .line 626
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 627
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_pkg_enable_state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    .local v1, "pkgStateFile":Ljava/io/File;
    return-object v1
.end method

.method private hasFutureTask(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .line 228
    .local v2, "isInstalled":Z
    nop

    .local v1, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 230
    const/4 v2, 0x1

    .line 231
    goto :goto_22

    .line 228
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 234
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return v2
.end method

.method private isApplicationRunning(Ljava/lang/String;)Z
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "isRunning":Z
    if-eqz p1, :cond_31

    .line 240
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 241
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 242
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_30

    .line 243
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_30

    aget-object v7, v4, v6

    .line 244
    .local v7, "runningPkg":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 245
    const/4 v0, 0x1

    .line 246
    goto :goto_30

    .line 243
    .end local v7    # "runningPkg":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 250
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_30
    :goto_30
    goto :goto_d

    .line 252
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_31
    return v0
.end method

.method private isDefaultIme(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultIme"    # Ljava/lang/String;

    .line 855
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 856
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 857
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 858
    const/4 v1, 0x1

    return v1

    .line 861
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_18

    .line 390
    const/16 v1, 0xa

    if-ne v2, v1, :cond_13

    goto :goto_18

    .line 391
    :cond_13
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 393
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseBackupWriteStream()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    .line 519
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/BackupManagerService$3;

    invoke-direct {v1, p0}, Lcom/miui/server/BackupManagerService$3;-><init>(Lcom/miui/server/BackupManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_e
    return-void
.end method

.method private restoreLastPackageEnableState(Ljava/io/File;)V
    .registers 15
    .param p1, "pkgStateFile"    # Ljava/io/File;

    .line 658
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v0

    .line 659
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 663
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 664
    const/4 v1, 0x0

    .line 665
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 666
    .local v2, "pkg":Ljava/lang/String;
    const/high16 v3, -0x80000000

    move v4, v3

    .line 669
    .local v4, "state":I
    const/4 v5, 0x1

    :try_start_19
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    .line 671
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v6, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v7

    move v8, v7

    .local v8, "c":I
    if-ltz v7, :cond_34

    .line 673
    int-to-byte v7, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 675
    :cond_34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [B

    .line 676
    .local v7, "bytes":[B
    const/4 v9, 0x0

    move v10, v9

    .local v10, "i":I
    :goto_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_51

    .line 677
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v7, v10

    .line 676
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 679
    .end local v10    # "i":I
    :cond_51
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 680
    .local v10, "ss":[Ljava/lang/String;
    if-eqz v10, :cond_6e

    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6e

    .line 681
    aget-object v9, v10, v9
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_64} :catch_7e
    .catchall {:try_start_19 .. :try_end_64} :catchall_7c

    move-object v2, v9

    .line 683
    :try_start_65
    aget-object v9, v10, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6b} :catch_6d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6b} :catch_7e
    .catchall {:try_start_65 .. :try_end_6b} :catchall_7c

    move v4, v9

    .line 685
    goto :goto_6e

    .line 684
    :catch_6d
    move-exception v9

    .line 690
    .end local v6    # "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v7    # "bytes":[B
    .end local v8    # "c":I
    .end local v10    # "ss":[Ljava/lang/String;
    :cond_6e
    :goto_6e
    nop

    .line 692
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 695
    :goto_72
    goto :goto_8c

    .line 693
    :catch_73
    move-exception v6

    .line 694
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Backup:BackupManagerService"

    const-string v8, "IOEception"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_72

    .line 690
    :catchall_7c
    move-exception v3

    goto :goto_ab

    .line 687
    :catch_7e
    move-exception v6

    .line 688
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_7f
    const-string v7, "Backup:BackupManagerService"

    const-string v8, "IOException"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7c

    .line 690
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_8c

    .line 692
    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_73

    goto :goto_72

    .line 699
    :cond_8c
    :goto_8c
    if-eqz v2, :cond_a3

    if-eq v4, v3, :cond_a3

    .line 700
    const-string v3, "Backup:BackupManagerService"

    const-string v6, "Unfinished backup package found, restore it\'s enable state"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "defaultIme":Ljava/lang/String;
    iput v4, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 703
    invoke-direct {p0, v2, v5, v3}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    .line 704
    .end local v3    # "defaultIme":Ljava/lang/String;
    goto :goto_ba

    .line 705
    :cond_a3
    const-string v3, "Backup:BackupManagerService"

    const-string v5, "backup_pkg_enable_state file broken"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v4    # "state":I
    goto :goto_ba

    .line 690
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v4    # "state":I
    :goto_ab
    if-eqz v1, :cond_b9

    .line 692
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 695
    goto :goto_b9

    .line 693
    :catch_b1
    move-exception v5

    .line 694
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Backup:BackupManagerService"

    const-string v7, "IOEception"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b9
    :goto_b9
    throw v3

    .line 708
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_ba
    :goto_ba
    return-void
.end method

.method private saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkgStateFile"    # Ljava/io/File;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_2f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2d

    .line 647
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    nop

    .line 649
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 652
    :goto_23
    goto :goto_3d

    .line 650
    :catch_24
    move-exception v1

    .line 651
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Backup:BackupManagerService"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 647
    :catchall_2d
    move-exception v1

    goto :goto_3e

    .line 644
    :catch_2f
    move-exception v1

    .line 645
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_30
    const-string v2, "Backup:BackupManagerService"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    .line 647
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3d

    .line 649
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_24

    goto :goto_23

    .line 655
    :cond_3d
    :goto_3d
    return-void

    .line 647
    :goto_3e
    if-eqz v0, :cond_4c

    .line 649
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 652
    goto :goto_4c

    .line 650
    :catch_44
    move-exception v2

    .line 651
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManagerService"

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    throw v1
.end method

.method private taskFinish(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 261
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_12

    goto :goto_21

    .line 264
    :cond_12
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 262
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_26
    return-void
.end method

.method private waitForTheLastWorkingTask()V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_23

    .line 501
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 502
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    if-nez v1, :cond_1e

    .line 504
    :try_start_13
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_20

    .line 507
    :goto_18
    goto :goto_7

    .line 505
    :catch_19
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_18

    .line 509
    :cond_1e
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 511
    :cond_23
    :goto_23
    return-void
.end method

.method private waitUntilAppKilled(Ljava/lang/String;)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;

    .line 593
    const/16 v0, 0x14

    .line 594
    .local v0, "MAX_ROUND":I
    const/4 v1, 0x0

    .line 595
    .local v1, "round":I
    const/4 v2, 0x1

    .line 596
    .local v2, "killed":Z
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 598
    .local v3, "am":Landroid/app/ActivityManager;
    :goto_e
    const/4 v2, 0x1

    .line 599
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 600
    .local v4, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 601
    .local v6, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_46

    .line 605
    .end local v6    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_45
    goto :goto_17

    .line 602
    .restart local v6    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_46
    :goto_46
    const/4 v2, 0x0

    .line 603
    nop

    .line 606
    .end local v6    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_48
    if-eqz v2, :cond_4b

    .line 607
    goto :goto_64

    .line 611
    :cond_4b
    const-wide/16 v5, 0x1f4

    :try_start_4d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_5b

    .line 615
    nop

    .line 616
    .end local v4    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    add-int/lit8 v4, v1, 0x1

    .local v4, "round":I
    const/16 v5, 0x14

    if-lt v1, v5, :cond_59

    .line 618
    .end local v1    # "round":I
    move v1, v4

    goto :goto_64

    .line 596
    :cond_59
    move v1, v4

    goto :goto_e

    .line 612
    .restart local v1    # "round":I
    .local v4, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_5b
    move-exception v5

    .line 613
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Backup:BackupManagerService"

    const-string v7, "interrupted while waiting"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    nop

    .line 618
    .end local v4    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_64
    if-eqz v2, :cond_82

    .line 619
    const-string v4, "Backup:BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is killed. continue our routine."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 621
    :cond_82
    const-string v4, "Backup:BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continue while app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is still alive!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_9d
    return-void
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;
    .param p2, "iCaller"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 451
    const-string v1, "Backup:BackupManagerService"

    const-string v2, "caller should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v0

    .line 455
    :cond_b
    monitor-enter p0

    .line 456
    :try_start_c
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 457
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    .line 458
    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    .line 459
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 460
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 462
    :cond_23
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 463
    monitor-exit p0

    return v0

    .line 465
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public addCompletedSize(J)V
    .registers 12
    .param p1, "size"    # J

    .line 342
    iget-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    .line 343
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_20

    .line 345
    :try_start_d
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    iget-wide v7, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    invoke-interface/range {v1 .. v8}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 349
    goto :goto_20

    .line 347
    :catch_1c
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method public backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .registers 28
    .param p1, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "readSide"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "feature"    # I
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "encryptedPwd"    # Ljava/lang/String;
    .param p7, "includeApk"    # Z
    .param p8, "forceBackup"    # Z
    .param p9, "shouldSkipData"    # Z
    .param p10, "observer"    # Lmiui/app/backup/IPackageBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 128
    .local v3, "pid":I
    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    .line 129
    iget v0, v1, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v3, v0, :cond_18

    .line 130
    const-string v0, "Backup:BackupManagerService"

    const-string v5, "You must acquire first to use the backup or restore service"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_18
    iget-object v0, v1, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v0, :cond_24

    .line 135
    const-string v0, "Backup:BackupManagerService"

    const-string v5, "Caller is null You must acquire first with a binder"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 139
    :cond_24
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 140
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    .line 141
    move-object/from16 v6, p6

    iput-object v6, v1, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    goto :goto_3d

    .line 144
    :cond_39
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    :goto_3d
    iget-object v0, v1, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "defaultIme":Ljava/lang/String;
    iget-object v0, v1, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 147
    .local v8, "isSystemApp":Z
    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz v8, :cond_5c

    invoke-direct {v1, v2}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_59

    invoke-direct {v1, v2}, Lcom/miui/server/BackupManagerService;->hasFutureTask(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 148
    :cond_59
    iput-boolean v9, v1, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    goto :goto_5e

    .line 150
    :cond_5c
    iput-boolean v0, v1, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 153
    :goto_5e
    const/4 v10, -0x1

    iput v10, v1, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 154
    iput-object v2, v1, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    .line 155
    const/4 v11, 0x0

    if-nez v8, :cond_69

    .line 156
    invoke-direct {v1, v2, v9, v11}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    .line 159
    :cond_69
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v12

    iput v12, v1, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    .line 160
    move/from16 v12, p9

    iput-boolean v12, v1, Lcom/miui/server/BackupManagerService;->mShouldSkipData:Z

    .line 162
    monitor-enter p0

    .line 163
    :try_start_74
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v13, v1, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_e1

    .line 165
    move-object/from16 v13, p10

    iput-object v13, v1, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    .line 166
    move/from16 v14, p4

    iput v14, v1, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    .line 167
    iput v9, v1, Lcom/miui/server/BackupManagerService;->mLastError:I

    .line 168
    iput v9, v1, Lcom/miui/server/BackupManagerService;->mProgType:I

    .line 170
    iput v0, v1, Lcom/miui/server/BackupManagerService;->mState:I

    .line 172
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    .line 173
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    .line 174
    iget-object v15, v1, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v1, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    invoke-static {v15, v10, v2, v11}, Lcom/miui/server/BackupManagerServiceProxy;->getPackageSizeInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 175
    iget-object v10, v1, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v10

    .line 176
    :try_start_9e
    new-array v11, v0, [Ljava/lang/String;

    aput-object v2, v11, v9
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_d8

    move-object/from16 v15, p1

    move/from16 v9, p7

    :try_start_a6
    invoke-static {v15, v11, v9}, Lcom/miui/server/BackupManagerServiceProxy;->fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 177
    iget-object v11, v1, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v11, v1, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v10
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_df

    .line 181
    if-nez v8, :cond_b9

    .line 182
    invoke-direct {v1, v2, v0, v7}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    .line 185
    :cond_b9
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    .line 186
    iput-object v10, v1, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    .line 187
    iput-object v10, v1, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    iput-boolean v0, v1, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 189
    invoke-direct {v1, v2}, Lcom/miui/server/BackupManagerService;->taskFinish(Ljava/lang/String;)V

    .line 190
    const/4 v0, -0x1

    iput v0, v1, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    .line 191
    const/4 v10, 0x0

    iput v10, v1, Lcom/miui/server/BackupManagerService;->mProgType:I

    .line 192
    iput v10, v1, Lcom/miui/server/BackupManagerService;->mState:I

    .line 193
    iput v0, v1, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 194
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    .line 195
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    .line 196
    return-void

    .line 179
    :catchall_d8
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v9, p7

    :goto_dd
    :try_start_dd
    monitor-exit v10
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_df

    throw v0

    :catchall_df
    move-exception v0

    goto :goto_dd

    .line 164
    :catchall_e1
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v14, p4

    move/from16 v9, p7

    move-object/from16 v13, p10

    :goto_ea
    :try_start_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_ec

    throw v0

    :catchall_ec
    move-exception v0

    goto :goto_ea
.end method

.method public delCacheBackup()V
    .registers 4

    .line 866
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCallingUid()I

    move-result v0

    .line 867
    .local v0, "uid":I
    const/16 v1, 0x264a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2648

    if-ne v0, v1, :cond_16

    .line 868
    :cond_c
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/backup"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 871
    .end local v1    # "file":Ljava/io/File;
    :cond_16
    return-void
.end method

.method public errorOccur(I)V
    .registers 5
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    if-nez v0, :cond_13

    .line 720
    iput p1, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    .line 721
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 722
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-interface {v0, v1, v2, p1}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onError(Ljava/lang/String;II)V

    .line 725
    :cond_13
    return-void
.end method

.method public getBackupTimeoutScale()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isProgRecordApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 745
    const/4 v0, 0x6

    return v0

    .line 747
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWorkingFeature()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method public getState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    return v0
.end method

.method public isNeedBeKilled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 356
    iget-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    return v0

    .line 358
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public isRunningFromMiui(I)Z
    .registers 3
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isServiceIdle()Z
    .registers 2

    .line 375
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onApkInstalled()V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 713
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    .line 715
    :cond_11
    return-void
.end method

.method public readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "inFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 305
    const/4 v0, 0x0

    move-object v1, v0

    .line 307
    .local v1, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    .line 309
    invoke-static {v1}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    move-result-object v2

    .line 310
    .local v2, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    if-eqz v2, :cond_51

    iget v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_51

    .line 311
    iget-object v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    .line 312
    iget v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    iput v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    .line 313
    iget-boolean v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    if-eqz v3, :cond_25

    move-object v3, v0

    goto :goto_27

    :cond_25
    iget-object v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;

    :goto_27
    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwdInBakFile:Ljava/lang/String;

    .line 315
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 316
    .local v3, "isSystemApp":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    .line 317
    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->hasFutureTask(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 318
    :cond_44
    iput-boolean v4, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    goto :goto_4a

    .line 320
    :cond_47
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 323
    :goto_4a
    if-nez v3, :cond_51

    .line 324
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5, v4, v0}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_5e

    .line 330
    .end local v2    # "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .end local v3    # "isSystemApp":Z
    :cond_51
    nop

    .line 332
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 335
    goto :goto_5d

    .line 333
    :catch_56
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5d
    return-void

    .line 330
    :catchall_5e
    move-exception v0

    if-eqz v1, :cond_6c

    .line 332
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 335
    goto :goto_6c

    .line 333
    :catch_65
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_6c
    :goto_6c
    throw v0
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .registers 4
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    monitor-enter p0

    .line 471
    if-eqz p1, :cond_23

    .line 472
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 473
    .local v0, "pid":I
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-ne v0, v1, :cond_1b

    .line 474
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V

    .line 475
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V

    .line 476
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    .line 478
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V

    goto :goto_23

    .line 480
    :cond_1b
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .end local v0    # "pid":I
    goto :goto_23

    .line 483
    :catchall_21
    move-exception v0

    goto :goto_25

    :cond_23
    :goto_23
    monitor-exit p0

    .line 484
    return-void

    .line 483
    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw v0
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .registers 12
    .param p1, "bakFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceBackup"    # Z
    .param p4, "observer"    # Lmiui/app/backup/IPackageBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCallingPid()I

    move-result v0

    .line 402
    .local v0, "pid":I
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v0, v1, :cond_10

    .line 403
    const-string v1, "Backup:BackupManagerService"

    const-string v2, "You must acquire first to use the backup or restore service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 407
    :cond_10
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v1, :cond_1c

    .line 408
    const-string v1, "Backup:BackupManagerService"

    const-string v2, "Caller is null You must acquire first with a binder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 412
    :cond_1c
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "defaultIme":Ljava/lang/String;
    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    .line 417
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    .line 418
    iput v2, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    .line 419
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 420
    const/4 v4, 0x2

    iput v4, p0, Lcom/miui/server/BackupManagerService;->mState:I

    .line 422
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    .line 423
    monitor-enter p0

    .line 424
    :try_start_3c
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 425
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_89

    .line 426
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 427
    :try_start_47
    iput-object p4, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    .line 428
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    .line 429
    invoke-static {p1}, Lcom/miui/server/BackupManagerServiceProxy;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 430
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_86

    .line 433
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v4, v5}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 434
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v1}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    .line 436
    :cond_6b
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    .line 437
    iput-object v4, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    .line 438
    iput-object v4, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 439
    iput-boolean v6, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 440
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/server/BackupManagerService;->taskFinish(Ljava/lang/String;)V

    .line 441
    iput v3, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    .line 442
    iput v2, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    .line 443
    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    .line 444
    iput v3, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    .line 445
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    .line 446
    return-void

    .line 432
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v2

    .line 425
    :catchall_89
    move-exception v2

    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v2
.end method

.method public setCustomProgress(III)V
    .registers 13
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iput p1, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    .line 381
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_12

    .line 382
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    int-to-long v5, p2

    int-to-long v7, p3

    move v4, p1

    invoke-interface/range {v1 .. v8}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 384
    :cond_12
    return-void
.end method

.method public setFutureTask(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    .line 203
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 205
    :cond_35
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageCount:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/miui/server/BackupManagerService;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v3, 0x2

    nop

    :cond_3f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_46
    goto :goto_9

    .line 208
    :cond_47
    return-void
.end method

.method public setIsNeedBeKilled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isNeedBeKilled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 364
    iput-boolean p2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    .line 366
    :cond_c
    return-void
.end method

.method public shouldSkipData()Z
    .registers 2

    .line 753
    iget-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mShouldSkipData:Z

    return v0
.end method

.method public startConfirmationUi(ILjava/lang/String;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/BackupManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/BackupManagerService$2;-><init>(Lcom/miui/server/BackupManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method public writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    .line 289
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/app/backup/BackupFileResolver;->writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_25
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    .line 293
    nop

    .line 295
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 298
    goto :goto_22

    .line 296
    :catch_1b
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :goto_22
    return-void

    .line 293
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 290
    :catch_25
    move-exception v1

    .line 291
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_26
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2c
    if-eqz v0, :cond_39

    .line 295
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 298
    goto :goto_39

    .line 296
    :catch_32
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1    # "e":Ljava/io/IOException;
    :cond_39
    :goto_39
    throw v1
.end method
