.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field public static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field public static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final COMPRESS_FULL_BACKUPS:Z = true

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEBUG_BACKUP_TRACE:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field private static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field public static final MORE_DEBUG:Z = false

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TIMEOUT_INTERVAL:J = 0x2710L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

.field private volatile mBackupRunning:Z

.field private final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseStateDir:Ljava/io/File;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCurrentOpLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field private mProvisioned:Z

.field private mProvisionedObserver:Landroid/database/ContentObserver;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRegisterTransportsRequestedTime:J

.field private final mRng:Ljava/security/SecureRandom;

.field private mRunBackupIntent:Landroid/app/PendingIntent;

.field private mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private mRunInitIntent:Landroid/app/PendingIntent;

.field private mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 909
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

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;
    .param p3, "backupThread"    # Landroid/os/HandlerThread;
    .param p4, "baseStateDir"    # Ljava/io/File;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p1

    .line 788
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 289
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 639
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 641
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 642
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 643
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 645
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 654
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 663
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 664
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 665
    iput-wide v3, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 669
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 1031
    new-instance v3, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1200
    new-instance v3, Lcom/android/server/backup/BackupManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 789
    iput-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 791
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 792
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 794
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 795
    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 796
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 798
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 800
    new-instance v3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 801
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 802
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    .line 805
    new-instance v3, Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 809
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_f0

    move v4, v6

    goto :goto_f1

    :cond_f0
    move v4, v5

    :goto_f1
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 811
    const-string v4, "backup_auto_restore"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_fd

    move v4, v6

    goto :goto_fe

    :cond_fd
    move v4, v5

    :goto_fe
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    .line 814
    new-instance v4, Lcom/android/server/backup/internal/ProvisionedObserver;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v4, v1, v7}, Lcom/android/server/backup/internal/ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 815
    const-string v4, "device_provisioned"

    .line 816
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 815
    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 819
    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 820
    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 821
    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v7}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_13d

    .line 822
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELinux restorecon failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_13d
    move-object/from16 v7, p5

    iput-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 827
    new-instance v8, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 830
    new-instance v8, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v8, v1}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 831
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 832
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.app.backup.intent.RUN"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "android.permission.BACKUP"

    invoke-virtual {v2, v9, v8, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 836
    new-instance v9, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v9, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v9

    .line 838
    const-string v9, "android.app.backup.intent.INIT"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "android.permission.BACKUP"

    invoke-virtual {v2, v9, v8, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 842
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.app.backup.intent.RUN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v9, "backupIntent":Landroid/content/Intent;
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    invoke-static {v2, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 846
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.app.backup.intent.INIT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v11, "initIntent":Landroid/content/Intent;
    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    invoke-static {v2, v5, v11, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 851
    new-instance v5, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v12, "pending"

    invoke-direct {v5, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 852
    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 853
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 855
    new-instance v5, Lcom/android/server/backup/BackupManagerConstants;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v12, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v5, v10, v12}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 859
    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    .line 862
    new-instance v5, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v12, "fb-schedule"

    invoke-direct {v5, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 863
    invoke-direct {v1}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    .line 868
    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 869
    :try_start_1d9
    invoke-direct {v1, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 870
    monitor-exit v5
    :try_end_1dd
    .catchall {:try_start_1d9 .. :try_end_1dd} :catchall_21e

    .line 872
    move-object/from16 v10, p6

    iput-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 873
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;

    invoke-direct {v5, v1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/backup/BackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 875
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;

    invoke-direct {v12, v5}, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;-><init>(Lcom/android/server/backup/TransportManager;)V

    const-wide/16 v13, 0xbb8

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$BackupManagerService$7naKh6MW6ryzdPxgJfM5jV1nHp4;

    invoke-direct {v5, v1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$7naKh6MW6ryzdPxgJfM5jV1nHp4;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v0, v5, v13, v14}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 883
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "*backup*"

    invoke-virtual {v0, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 885
    new-instance v0, Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupPolicyEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    .line 886
    return-void

    .line 870
    :catchall_21e
    move-exception v0

    move-object/from16 v10, p6

    :goto_221
    :try_start_221
    monitor-exit v5
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_223

    throw v0

    :catchall_223
    move-exception v0

    goto :goto_221
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/BackupManagerConstants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/BackupManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 160
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1323
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1324
    .local v0, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_12

    .line 1326
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 1327
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1326
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1331
    :cond_12
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1333
    :cond_16
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1341
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1342
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1343
    :cond_1a
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1344
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1345
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_33

    .line 1346
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 1347
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1349
    :cond_33
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x10

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1355
    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1356
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1358
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "uid":I
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :cond_47
    goto :goto_4

    .line 1359
    :cond_48
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1403
    const/high16 v0, 0x8000000

    .line 1404
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 1405
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1406
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "a":I
    :goto_e
    if-ltz v3, :cond_49

    .line 1407
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1409
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1410
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3e

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_3e

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2c

    goto :goto_3e

    .line 1418
    :cond_2c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v5, v6

    .line 1420
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_41

    .line 1413
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_3e
    :goto_3e
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_41} :catch_42

    .line 1424
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_41
    goto :goto_46

    .line 1422
    :catch_42
    move-exception v5

    .line 1423
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1406
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 1426
    .end local v3    # "a":I
    :cond_49
    return-object v1
.end method

.method private static backupSettingMigrated(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 2753
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2754
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2755
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)Lcom/android/server/backup/BackupManagerService;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Lcom/android/server/backup/Trampoline;
    .param p2, "backupThread"    # Landroid/os/HandlerThread;

    .line 744
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 745
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v1

    .line 746
    .local v1, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_e

    .line 747
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 750
    :cond_e
    nop

    .line 752
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_transport"

    .line 751
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "transport":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 754
    const/4 v2, 0x0

    .line 757
    :cond_20
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v11, Lcom/android/server/backup/TransportManager;

    invoke-direct {v11, p0, v1, v2}, Lcom/android/server/backup/TransportManager;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 767
    .local v11, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backup"

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 770
    .local v9, "baseStateDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backup_stage"

    invoke-direct {v10, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    .local v10, "dataDir":Ljava/io/File;
    new-instance v3, Lcom/android/server/backup/BackupManagerService;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v3
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2242
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_25

    .line 2243
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataChanged but no participant pkg=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2243
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return-void

    .line 2248
    :cond_25
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2250
    :try_start_28
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2253
    new-instance v1, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v1, p1}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2254
    .local v1, "req":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 2260
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2263
    .end local v1    # "req":Lcom/android/server/backup/internal/BackupRequest;
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_47

    .line 2266
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2267
    return-void

    .line 2263
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2273
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2273
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 2275
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2276
    :try_start_16
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 2277
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v1

    .line 2281
    :cond_27
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2282
    const-string v0, "@pm@"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    .line 2284
    :cond_3a
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2285
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2286
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v1
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .line 1942
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1943
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_22

    .line 1944
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1945
    .local v2, "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1946
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1943
    .end local v2    # "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1949
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3566
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 3567
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3569
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3570
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3571
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3572
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3573
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3574
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_d

    .line 3575
    :cond_35
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3578
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3579
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_14

    const-string v2, "enabled"

    goto :goto_16

    :cond_14
    const-string v2, "disabled"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v2, :cond_26

    const-string/jumbo v2, "not "

    goto :goto_28

    :cond_26
    const-string v2, ""

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "provisioned / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, "not "

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pending init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3579
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-restore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-eqz v2, :cond_60

    const-string v2, "enabled"

    goto :goto_62

    :cond_60
    const-string v2, "disabled"

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3583
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_75

    const-string v1, "Backup currently running"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3584
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "Backup in progress"

    goto :goto_80

    :cond_7e
    const-string v1, "No backups running"

    :goto_80
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last backup pass started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3585
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  next scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    const-string v1, "Transport whitelist:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3591
    .local v2, "transport":Landroid/content/ComponentName;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    .end local v2    # "transport":Landroid/content/ComponentName;
    goto :goto_d1

    .line 3595
    :cond_ea
    const-string v1, "Available transports:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 3597
    .local v1, "transports":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1b7

    .line 3598
    array-length v3, v1

    move v4, v2

    :goto_f8
    if-ge v4, v3, :cond_1b7

    aget-object v5, v1, v4

    .line 3599
    .local v5, "t":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_110

    const-string v7, "  * "

    goto :goto_112

    .line 3600
    :cond_110
    const-string v7, "    "

    :goto_112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3599
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_3 .. :try_end_11f} :catchall_3bc

    .line 3602
    :try_start_11f
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3603
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3604
    .local v6, "dir":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3605
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3604
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3607
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3606
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_166
    if-ge v9, v8, :cond_196

    aget-object v10, v7, v9

    .line 3609
    .local v10, "f":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "       "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " state bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3609
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_193} :catch_197
    .catchall {:try_start_11f .. :try_end_193} :catchall_3bc

    .line 3608
    .end local v10    # "f":Ljava/io/File;
    add-int/lit8 v9, v9, 0x1

    goto :goto_166

    .line 3615
    .end local v6    # "dir":Ljava/io/File;
    :cond_196
    goto :goto_1b3

    .line 3612
    :catch_197
    move-exception v6

    .line 3613
    .local v6, "e":Ljava/lang/Exception;
    :try_start_198
    const-string v7, "BackupManagerService"

    const-string v8, "Error in transport"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f8

    .line 3619
    :cond_1b7
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 3621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending init: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3623
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_1dc

    .line 3627
    :cond_1fd
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v3
    :try_end_200
    .catchall {:try_start_198 .. :try_end_200} :catchall_3bc

    .line 3628
    :try_start_200
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_234

    .line 3629
    const-string v4, "Most recent backup trace:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_213
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_234

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3631
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_213

    .line 3634
    :cond_234
    monitor-exit v3
    :try_end_235
    .catchall {:try_start_200 .. :try_end_235} :catchall_3b9

    .line 3637
    :try_start_235
    const-string v3, "Ancestral: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    const-string v3, "Current:   "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3640
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3643
    .local v3, "N":I
    const-string v4, "Participants:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    nop

    .line 3644
    .local v2, "i":I
    :goto_25d
    if-ge v2, v3, :cond_29d

    .line 3645
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3646
    .local v4, "uid":I
    const-string v5, "  uid: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3648
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 3649
    .local v5, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_279
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3650
    .local v7, "app":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    .end local v7    # "app":Ljava/lang/String;
    goto :goto_279

    .line 3644
    .end local v4    # "uid":I
    .end local v5    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_29a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25d

    .line 3654
    .end local v2    # "i":I
    :cond_29d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_2af

    const-string/jumbo v4, "none"

    goto :goto_2b9

    :cond_2af
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2b9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3654
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v2, :cond_2ee

    .line 3657
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3658
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_2cd

    .line 3662
    :cond_2ee
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v2

    .line 3663
    .local v2, "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ever backed up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_310
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_331

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3665
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_310

    .line 3668
    :cond_331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending key/value backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_355
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_376

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/BackupRequest;

    .line 3670
    .local v5, "req":Lcom/android/server/backup/internal/BackupRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    .end local v5    # "req":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_355

    .line 3673
    :cond_376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup queue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_396
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3675
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3676
    iget-wide v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 3677
    const-string v6, " : "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3678
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    goto :goto_396

    .line 3680
    .end local v1    # "transports":[Ljava/lang/String;
    .end local v2    # "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "N":I
    :cond_3b7
    monitor-exit v0
    :try_end_3b8
    .catchall {:try_start_235 .. :try_end_3b8} :catchall_3bc

    .line 3681
    return-void

    .line 3634
    .restart local v1    # "transports":[Ljava/lang/String;
    :catchall_3b9
    move-exception v2

    :try_start_3ba
    monitor-exit v3
    :try_end_3bb
    .catchall {:try_start_3ba .. :try_end_3bb} :catchall_3b9

    :try_start_3bb
    throw v2

    .line 3680
    .end local v1    # "transports":[Ljava/lang/String;
    :catchall_3bc
    move-exception v1

    monitor-exit v0
    :try_end_3be
    .catchall {:try_start_3bb .. :try_end_3be} :catchall_3bc

    throw v1
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .registers 10
    .param p1, "transportName"    # Ljava/lang/String;

    .line 1985
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1986
    const-string v0, "BackupManagerService"

    const-string v2, "Transport not registered; full data backup not performed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    return v1

    .line 1993
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, "transportDirName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1995
    .local v2, "stateDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1996
    .local v3, "pmState":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_37

    .line 1998
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup requested but dataset not yet initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_3a

    .line 2000
    return v1

    .line 2005
    .end local v0    # "transportDirName":Ljava/lang/String;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "pmState":Ljava/io/File;
    :cond_37
    nop

    .line 2007
    const/4 v0, 0x1

    return v0

    .line 2002
    :catch_3a
    move-exception v0

    .line 2003
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get transport name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return v1
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .registers 1

    .line 305
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .registers 5
    .param p1, "operationType"    # I

    .line 1735
    packed-switch p1, :pswitch_data_22

    .line 1741
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v0, -0x1

    return v0

    .line 1739
    :pswitch_1b
    const/16 v0, 0x12

    return v0

    .line 1737
    :pswitch_1e
    const/16 v0, 0x11

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private initPackageTracking()V
    .registers 8

    .line 892
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 893
    :try_start_b
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1c} :catch_61
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_58

    .local v0, "tokenStream":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 895
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 896
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    .line 897
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 898
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 900
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 901
    .local v3, "numPackages":I
    if-ltz v3, :cond_4c

    .line 902
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 903
    const/4 v4, 0x0

    .line 903
    .local v4, "i":I
    :goto_3e
    if-ge v4, v3, :cond_4c

    .line 904
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 905
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_49} :catch_52
    .catchall {:try_start_1d .. :try_end_49} :catchall_50

    .line 903
    .end local v5    # "pkgName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 909
    .end local v2    # "version":I
    .end local v3    # "numPackages":I
    .end local v4    # "i":I
    :cond_4c
    :try_start_4c
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_4f} :catch_61
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_58

    goto :goto_69

    :catchall_50
    move-exception v2

    goto :goto_54

    .line 893
    :catch_52
    move-exception v1

    :try_start_53
    throw v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    .line 909
    :goto_54
    :try_start_54
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_58} :catch_61
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_58

    .line 912
    .end local v0    # "tokenStream":Ljava/io/DataInputStream;
    :catch_58
    move-exception v0

    .line 913
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to read token file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6a

    .line 909
    :catch_61
    move-exception v0

    .line 911
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    const-string v1, "BackupManagerService"

    const-string v2, "No ancestral data"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    :goto_69
    nop

    .line 916
    :goto_6a
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 917
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 919
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_7b
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 922
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_ba

    .line 926
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 927
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 933
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 934
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 937
    return-void

    .line 922
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sdFilter":Landroid/content/IntentFilter;
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method private isAllowedByMandatoryBackupTransportPolicy(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "transport"    # Landroid/content/ComponentName;

    .line 3140
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    .line 3141
    .local v0, "mandatoryBackupTransport":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 3142
    const/4 v1, 0x1

    return v1

    .line 3144
    :cond_a
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isAllowedByMandatoryBackupTransportPolicy(Ljava/lang/String;)Z
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3120
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    .line 3121
    .local v0, "mandatoryBackupTransport":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 3122
    const/4 v1, 0x1

    return v1

    .line 3126
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3127
    invoke-virtual {v1, v0}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_a .. :try_end_10} :catch_17

    .line 3131
    .local v1, "mandatoryBackupTransportName":Ljava/lang/String;
    nop

    .line 3130
    nop

    .line 3132
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 3128
    .end local v1    # "mandatoryBackupTransportName":Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 3129
    .local v1, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "mandatory backup transport not registered!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    const/4 v2, 0x0

    return v2
.end method

.method public static synthetic lambda$7naKh6MW6ryzdPxgJfM5jV1nHp4(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method public static synthetic lambda$QlgHuOXOPKAZpwyUhPFAintPnqM(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$clearBackupData$3(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 2396
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$initializeTransports$2(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 2344
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static synthetic lambda$parseLeftoverJournals$0(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1079
    const-string v0, "BackupManagerService"

    const-string v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method public static synthetic lambda$requestBackup$1(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 1637
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$restoreAtInstall$6(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 3339
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3341
    return-void
.end method

.method public static synthetic lambda$selectBackupTransportAsync$5(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 8
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3084
    const/4 v0, 0x0

    .line 3085
    .local v0, "transportName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3086
    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v1

    .line 3087
    .local v1, "result":I
    if-nez v1, :cond_1d

    .line 3089
    :try_start_9
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3090
    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3091
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_13} :catch_14

    .line 3095
    goto :goto_1d

    .line 3092
    :catch_14
    move-exception v2

    .line 3093
    .local v2, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v3, "BackupManagerService"

    const-string v4, "Transport got unregistered"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const/4 v1, -0x1

    .line 3099
    .end local v2    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :cond_1d
    :goto_1d
    if-eqz p2, :cond_34

    .line 3100
    if-eqz v0, :cond_27

    .line 3101
    :try_start_21
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_34

    .line 3106
    :catch_25
    move-exception v2

    goto :goto_2b

    .line 3103
    :cond_27
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_25

    goto :goto_34

    .line 3106
    :goto_2b
    nop

    .line 3107
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v4, "ISelectBackupTransportCallback listener not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_35

    .line 3108
    :cond_34
    :goto_34
    nop

    .line 3109
    :goto_35
    return-void
.end method

.method public static synthetic lambda$setBackupEnabled$4(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p1, "transportNames"    # Ljava/util/List;
    .param p2, "transportDirNames"    # Ljava/util/List;
    .param p3, "name"    # Ljava/lang/String;

    .line 2843
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 2845
    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_6} :catch_f

    .line 2850
    .local v0, "dirName":Ljava/lang/String;
    nop

    .line 2849
    nop

    .line 2851
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2852
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2853
    return-void

    .line 2846
    .end local v0    # "dirName":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 2848
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unexpected unregistered transport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2849
    return-void
.end method

.method private onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "transportDirName"    # Ljava/lang/String;

    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    .line 1179
    .local v0, "timeMs":J
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms after first request (delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    .end local v0    # "timeMs":J
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1184
    .local v0, "stateDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1186
    new-instance v1, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1187
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1188
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1189
    :try_start_50
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1192
    const-wide/32 v3, 0xea60

    .line 1193
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1193
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1195
    .end local v3    # "delay":J
    monitor-exit v2

    goto :goto_6a

    :catchall_67
    move-exception v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_67

    throw v3

    .line 1197
    :cond_6a
    :goto_6a
    return-void
.end method

.method private parseLeftoverJournals()V
    .registers 8

    .line 1074
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1075
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/DataChangedJournal;

    .line 1076
    .local v2, "journal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1078
    :try_start_1e
    new-instance v3, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_27

    .line 1085
    goto :goto_3e

    .line 1083
    :catch_27
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    .end local v2    # "journal":Lcom/android/server/backup/DataChangedJournal;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3e
    :goto_3e
    goto :goto_a

    .line 1088
    :cond_3f
    return-void
.end method

.method private static readBackupEnableState(I)Z
    .registers 8
    .param p0, "userId"    # I

    .line 2759
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2760
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2761
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    .line 2762
    :try_start_19
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_34

    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2763
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_23} :catch_2e
    .catchall {:try_start_1f .. :try_end_23} :catchall_2c

    .line 2764
    .local v5, "state":I
    if-eqz v5, :cond_27

    const/4 v6, 0x1

    goto :goto_28

    .line 2765
    :cond_27
    move v6, v3

    :goto_28
    :try_start_28
    invoke-static {v4, v2}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_34

    .line 2764
    return v6

    .line 2765
    .end local v5    # "state":I
    :catchall_2c
    move-exception v5

    goto :goto_30

    .line 2762
    :catch_2e
    move-exception v4

    :try_start_2f
    throw v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 2765
    :goto_30
    :try_start_30
    invoke-static {v4, v2}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34

    .end local v2    # "fin":Ljava/io/FileInputStream;
    :catch_34
    move-exception v2

    .line 2767
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Cannot read enable state; assuming disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_44

    .line 2771
    :cond_3d
    const-string v2, "BackupManagerService"

    const-string v4, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :goto_44
    return v3
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .line 940
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 941
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 942
    .local v3, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 943
    invoke-static {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v4

    .line 945
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 946
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_16e

    move-object v7, v0

    .line 947
    .local v7, "fstream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1b
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_167
    .catchall {:try_start_1b .. :try_end_20} :catchall_164

    move-object v9, v0

    .line 946
    .local v9, "bufStream":Ljava/io/BufferedInputStream;
    nop

    .line 948
    :try_start_22
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_159
    .catchall {:try_start_22 .. :try_end_27} :catchall_156

    move-object v10, v0

    .line 946
    .local v10, "in":Ljava/io/DataInputStream;
    nop

    .line 949
    :try_start_29
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v11, v0

    .line 950
    .local v11, "version":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_52

    .line 951
    const-string v0, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown backup schedule version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_47} :catch_148
    .catchall {:try_start_29 .. :try_end_47} :catchall_145

    .line 952
    nop

    .line 1005
    :try_start_48
    invoke-static {v8, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_159
    .catchall {:try_start_48 .. :try_end_4b} :catchall_156

    :try_start_4b
    invoke-static {v8, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_167
    .catchall {:try_start_4b .. :try_end_4e} :catchall_164

    :try_start_4e
    invoke-static {v8, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_16e

    .line 952
    return-object v8

    .line 955
    :cond_52
    :try_start_52
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v12, v0

    .line 956
    .local v12, "N":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 962
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(I)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_62} :catch_148
    .catchall {:try_start_52 .. :try_end_62} :catchall_145

    move-object v13, v0

    .line 964
    .local v13, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    move v0, v14

    .local v0, "i":I
    :goto_65
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v12, :cond_f6

    .line 965
    :try_start_68
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 966
    .local v16, "pkgName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_72} :catch_148
    .catchall {:try_start_68 .. :try_end_72} :catchall_f2

    move-wide/from16 v19, v17

    .line 967
    .local v19, "lastBackup":J
    move-object/from16 v8, v16

    :try_start_76
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_ee
    .catchall {:try_start_76 .. :try_end_79} :catchall_f2

    .line 969
    .end local v16    # "pkgName":Ljava/lang/String;
    .local v8, "pkgName":Ljava/lang/String;
    :try_start_79
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 970
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v16

    if-eqz v16, :cond_9e

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 971
    invoke-static {v14, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 973
    new-instance v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_91} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_91} :catch_ee
    .catchall {:try_start_79 .. :try_end_91} :catchall_f2

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    :try_start_97
    invoke-direct {v5, v8, v11, v12}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .end local v12    # "N":I
    .end local v19    # "lastBackup":J
    .local v11, "lastBackup":J
    .local v21, "version":I
    .local v22, "N":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 976
    .end local v21    # "version":I
    .end local v22    # "N":I
    .local v11, "version":I
    .restart local v12    # "N":I
    .restart local v19    # "lastBackup":J
    :cond_9e
    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    .end local v12    # "N":I
    .end local v19    # "lastBackup":J
    .local v11, "lastBackup":J
    .restart local v21    # "version":I
    .restart local v22    # "N":I
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " no longer eligible for full backup"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_bf} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_bf} :catch_ee
    .catchall {:try_start_97 .. :try_end_bf} :catchall_f2

    .line 985
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_bf
    goto :goto_e4

    .line 980
    :catch_c0
    move-exception v0

    goto :goto_c9

    .end local v21    # "version":I
    .end local v22    # "N":I
    .local v11, "version":I
    .restart local v12    # "N":I
    .restart local v19    # "lastBackup":J
    :catch_c2
    move-exception v0

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    .line 982
    .end local v12    # "N":I
    .end local v19    # "lastBackup":J
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v11, "lastBackup":J
    .restart local v21    # "version":I
    .restart local v22    # "N":I
    :goto_c9
    :try_start_c9
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not installed; dropping from full backup"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_e4} :catch_ee
    .catchall {:try_start_c9 .. :try_end_e4} :catchall_f2

    .line 964
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v11    # "lastBackup":J
    :goto_e4
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .local v0, "i":I
    move/from16 v11, v21

    move/from16 v12, v22

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto/16 :goto_65

    .line 946
    .end local v0    # "i":I
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "version":I
    .end local v22    # "N":I
    :catch_ee
    move-exception v0

    move-object v8, v0

    const/4 v5, 0x0

    goto :goto_14b

    .line 1005
    :catchall_f2
    move-exception v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_14d

    .line 990
    .local v11, "version":I
    .restart local v12    # "N":I
    .restart local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f6
    move/from16 v21, v11

    move/from16 v22, v12

    .end local v11    # "version":I
    .end local v12    # "N":I
    .restart local v21    # "version":I
    .restart local v22    # "N":I
    :try_start_fa
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_102} :catch_142
    .catchall {:try_start_fa .. :try_end_102} :catchall_13e

    if-eqz v5, :cond_130

    :try_start_104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 991
    .local v5, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_12f

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 992
    invoke-static {v6, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 994
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12f

    .line 998
    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-direct {v6, v8, v11, v12}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_12e} :catch_ee
    .catchall {:try_start_104 .. :try_end_12e} :catchall_f2

    .line 999
    const/4 v2, 0x1

    .line 1002
    .end local v5    # "app":Landroid/content/pm/PackageInfo;
    :cond_12f
    goto :goto_fe

    .line 1004
    :cond_130
    :try_start_130
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_142
    .catchall {:try_start_130 .. :try_end_133} :catchall_13e

    .line 1005
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "version":I
    .end local v22    # "N":I
    const/4 v5, 0x0

    :try_start_134
    invoke-static {v5, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_137} :catch_154
    .catchall {:try_start_134 .. :try_end_137} :catchall_151

    .end local v10    # "in":Ljava/io/DataInputStream;
    :try_start_137
    invoke-static {v5, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_13a} :catch_167
    .catchall {:try_start_137 .. :try_end_13a} :catchall_162

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    :try_start_13a
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_16e

    .line 1009
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_17c

    .line 1005
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_13e
    move-exception v0

    const/4 v5, 0x0

    move-object v8, v5

    goto :goto_14d

    .line 946
    :catch_142
    move-exception v0

    const/4 v5, 0x0

    goto :goto_14a

    .line 1005
    :catchall_145
    move-exception v0

    move-object v5, v8

    goto :goto_14d

    .line 946
    :catch_148
    move-exception v0

    move-object v5, v8

    :goto_14a
    move-object v8, v0

    :goto_14b
    :try_start_14b
    throw v8
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14c

    .line 1005
    :catchall_14c
    move-exception v0

    :goto_14d
    :try_start_14d
    invoke-static {v8, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_151} :catch_154
    .catchall {:try_start_14d .. :try_end_151} :catchall_151

    .end local v10    # "in":Ljava/io/DataInputStream;
    :catchall_151
    move-exception v0

    move-object v8, v5

    goto :goto_15e

    .line 946
    :catch_154
    move-exception v0

    goto :goto_15b

    .line 1005
    :catchall_156
    move-exception v0

    move-object v5, v8

    goto :goto_15e

    .line 946
    :catch_159
    move-exception v0

    move-object v5, v8

    :goto_15b
    move-object v8, v0

    :try_start_15c
    throw v8
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15d

    .line 1005
    :catchall_15d
    move-exception v0

    :goto_15e
    :try_start_15e
    invoke-static {v8, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_15e .. :try_end_162} :catch_167
    .catchall {:try_start_15e .. :try_end_162} :catchall_162

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    :catchall_162
    move-exception v0

    goto :goto_16a

    :catchall_164
    move-exception v0

    move-object v5, v8

    goto :goto_16a

    .line 946
    :catch_167
    move-exception v0

    move-object v8, v0

    :try_start_169
    throw v8
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_164

    .line 1005
    :goto_16a
    :try_start_16a
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_16e} :catch_16e

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    :catch_16e
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to read backup schedule"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1008
    const/4 v3, 0x0

    .line 1012
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17c
    :goto_17c
    if-nez v3, :cond_1b9

    .line 1015
    const/4 v2, 0x1

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 1017
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1018
    .local v5, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_1b6

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_1b6

    .line 1020
    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1b8

    .line 1022
    :cond_1b6
    const-wide/16 v8, 0x0

    :goto_1b8
    goto :goto_18d

    .line 1025
    :cond_1b9
    if-eqz v2, :cond_1be

    .line 1026
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1028
    :cond_1be
    return-object v3
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1387
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1395
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1396
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_e
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .line 1363
    if-nez p1, :cond_b

    .line 1364
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "removePackageParticipants with null list"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return-void

    .line 1372
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    .line 1374
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1375
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_2f

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1376
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1379
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1372
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1383
    :cond_32
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2671
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2673
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2674
    return-void
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .registers 9
    .param p1, "newTransportName"    # Ljava/lang/String;

    .line 3149
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_transport"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3153
    const-string v0, "BMS.updateStateForTransport()"

    .line 3154
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3155
    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    .line 3156
    .local v1, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_46

    .line 3158
    :try_start_17
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 3159
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 3165
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_40

    .line 3160
    :catch_22
    move-exception v4

    .line 3163
    .local v4, "e":Ljava/lang/Exception;
    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 3164
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not available: current token = 0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_40
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_63

    .line 3168
    :cond_46
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not registered: current token = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 3173
    :goto_63
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2677
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2678
    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    if-nez v1, :cond_13

    .line 2680
    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 2681
    goto :goto_3

    :catch_11
    move-exception v1

    goto :goto_3

    .line 2683
    :cond_13
    :try_start_13
    monitor-exit v0

    .line 2684
    return-void

    .line 2683
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static writeBackupEnableState(ZI)V
    .registers 11
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .line 2778
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2779
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2780
    .local v1, "enableFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "backup_enabled-stage"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2781
    .local v2, "stage":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1f} :catch_39

    .line 2782
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_1f
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write(I)V

    .line 2783
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2784
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_28} :catch_2f
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 2786
    :try_start_28
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_39

    .line 2797
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_67

    .line 2786
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_2c
    move-exception v5

    move-object v6, v3

    goto :goto_35

    .line 2781
    :catch_2f
    move-exception v5

    :try_start_30
    throw v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 2786
    :catchall_31
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_35
    :try_start_35
    invoke-static {v6, v4}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_39} :catch_39

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_39
    move-exception v4

    .line 2789
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2789
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    sget-object v5, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v5, v5, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2793
    .local v5, "r":Landroid/content/ContentResolver;
    const-string v6, "backup_enabled"

    invoke-static {v5, v6, v3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2795
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2796
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2798
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/ContentResolver;
    :goto_67
    return-void
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .line 1069
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2293
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2297
    goto :goto_31

    .line 2294
    :catch_12
    move-exception v0

    .line 2295
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2298
    .end local v0    # "e":Ljava/io/IOException;
    :goto_31
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 13
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2699
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2f

    .line 2709
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2718
    .local v0, "oldId":J
    :try_start_33
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_88

    .line 2719
    :try_start_36
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 2720
    .local v3, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v3, :cond_78

    .line 2721
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2722
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2724
    if-eqz p2, :cond_6d

    .line 2725
    instance-of v4, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v4, :cond_54

    .line 2726
    const/4 v4, 0x2

    goto :goto_56

    .line 2727
    :cond_54
    const/16 v4, 0xa

    .line 2729
    .local v4, "verb":I
    :goto_56
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2730
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 2732
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 2735
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2736
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2737
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2738
    .end local v4    # "verb":I
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_7f

    .line 2739
    :cond_6d
    const-string v4, "BackupManagerService"

    const-string v5, "User rejected full backup/restore operation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_7f

    .line 2744
    :cond_78
    const-string v4, "BackupManagerService"

    const-string v5, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_36 .. :try_end_80} :catchall_85

    .line 2748
    .end local v3    # "params":Lcom/android/server/backup/params/AdbParams;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2749
    nop

    .line 2750
    return-void

    .line 2746
    :catchall_85
    move-exception v3

    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 2748
    :catchall_88
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 29
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v13, p4

    move/from16 v14, p6

    .line 2450
    move-object/from16 v15, p10

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 2454
    .local v16, "callingUserHandle":I
    if-nez v16, :cond_1b5

    .line 2459
    if-nez v14, :cond_29

    .line 2460
    if-nez v13, :cond_29

    .line 2464
    if-eqz v15, :cond_21

    array-length v0, v15

    if-eqz v0, :cond_21

    goto :goto_29

    .line 2465
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2471
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    .line 2474
    .local v11, "oldId":J
    :try_start_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_187

    if-nez v0, :cond_6b

    .line 2475
    :try_start_34
    const-string v0, "BackupManagerService"

    const-string v2, "Backup not supported before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_66

    .line 2519
    :try_start_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 2522
    goto :goto_5b

    .line 2520
    :catch_3f
    move-exception v0

    move-object v2, v0

    .line 2521
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return-void

    .line 2518
    :catchall_66
    move-exception v0

    move-object v2, v0

    move-wide v13, v11

    goto/16 :goto_18a

    .line 2480
    :cond_6b
    :try_start_6b
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting backup: apks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " obb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shared="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " all="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " system="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " includekeyvalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pkgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const-string v0, "BackupManagerService"

    const-string v2, "Beginning adb backup..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    new-instance v0, Lcom/android/server/backup/params/AdbBackupParams;
    :try_end_c2
    .catchall {:try_start_6b .. :try_end_c2} :catchall_187

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v10

    move v5, v9

    move v6, v13

    move/from16 v7, p5

    move v8, v14

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide v13, v11

    move/from16 v11, p9

    .end local v11    # "oldId":J
    .local v13, "oldId":J
    move-object v12, v15

    :try_start_d3
    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    move-object v2, v0

    .line 2489
    .local v2, "params":Lcom/android/server/backup/params/AdbBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v3, v0

    .line 2490
    .local v3, "token":I
    iget-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_df
    .catchall {:try_start_d3 .. :try_end_df} :catchall_184

    .line 2491
    :try_start_df
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2492
    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_df .. :try_end_e5} :catchall_181

    .line 2495
    :try_start_e5
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v0, "fullback"

    .line 2499
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    .line 2498
    invoke-static {v1, v3, v0, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13e

    .line 2501
    const-string v0, "BackupManagerService"

    const-string v4, "Unable to launch backup confirmation UI"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_113
    .catchall {:try_start_e5 .. :try_end_113} :catchall_184

    .line 2519
    :try_start_113
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    .line 2522
    goto :goto_133

    .line 2520
    :catch_117
    move-exception v0

    move-object v4, v0

    .line 2521
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v0    # "e":Ljava/io/IOException;
    :goto_133
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    const-string v0, "BackupManagerService"

    const-string v4, "Adb backup processing complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    return-void

    .line 2507
    :cond_13e
    :try_start_13e
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2512
    invoke-direct {v1, v3, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2515
    const-string v0, "BackupManagerService"

    const-string v4, "Waiting for backup completion..."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-direct {v1, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_155
    .catchall {:try_start_13e .. :try_end_155} :catchall_184

    .line 2519
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    :try_start_155
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_159

    .line 2522
    goto :goto_175

    .line 2520
    :catch_159
    move-exception v0

    move-object v2, v0

    .line 2521
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v0    # "e":Ljava/io/IOException;
    :goto_175
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    nop

    .line 2526
    return-void

    .line 2492
    .restart local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .restart local v3    # "token":I
    :catchall_181
    move-exception v0

    :try_start_182
    monitor-exit v4
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_181

    :try_start_183
    throw v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_184

    .line 2518
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    :catchall_184
    move-exception v0

    move-object v2, v0

    goto :goto_18a

    .end local v13    # "oldId":J
    .restart local v11    # "oldId":J
    :catchall_187
    move-exception v0

    move-wide v13, v11

    move-object v2, v0

    .line 2519
    .end local v11    # "oldId":J
    .restart local v13    # "oldId":J
    :goto_18a
    :try_start_18a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_18e

    .line 2522
    goto :goto_1aa

    .line 2520
    :catch_18e
    move-exception v0

    move-object v3, v0

    .line 2521
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1aa
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    const-string v0, "BackupManagerService"

    const-string v3, "Adb backup processing complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 2455
    .end local v13    # "oldId":J
    :cond_1b5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Backup supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 2590
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2594
    .local v0, "callingUserHandle":I
    if-nez v0, :cond_11b

    .line 2598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2603
    .local v1, "oldId":J
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_46

    .line 2604
    const-string v3, "BackupManagerService"

    const-string v4, "Full restore not permitted before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_f4

    .line 2641
    :try_start_20
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 2644
    goto :goto_3b

    .line 2642
    :catch_24
    move-exception v3

    .line 2643
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    return-void

    .line 2608
    :cond_46
    :try_start_46
    const-string v3, "BackupManagerService"

    const-string v4, "Beginning restore..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    new-instance v3, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v3, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2611
    .local v3, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    .line 2612
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_f4

    .line 2613
    :try_start_59
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2614
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_f1

    .line 2617
    :try_start_5f
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting restore confirmation UI, token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    const-string v5, "fullrest"

    .line 2621
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    .line 2620
    invoke-static {p0, v4, v5, v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 2623
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to launch restore confirmation"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_8d
    .catchall {:try_start_5f .. :try_end_8d} :catchall_f4

    .line 2641
    :try_start_8d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    .line 2644
    goto :goto_a8

    .line 2642
    :catch_91
    move-exception v5

    .line 2643
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .end local v5    # "e":Ljava/io/IOException;
    :goto_a8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    const-string v5, "BackupManagerService"

    const-string v6, "adb restore processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    return-void

    .line 2629
    :cond_b3
    :try_start_b3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2634
    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2637
    const-string v5, "BackupManagerService"

    const-string v6, "Waiting for restore completion..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-direct {p0, v3}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_ca
    .catchall {:try_start_b3 .. :try_end_ca} :catchall_f4

    .line 2641
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    :try_start_ca
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 2644
    goto :goto_e5

    .line 2642
    :catch_ce
    move-exception v3

    .line 2643
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .end local v3    # "e":Ljava/io/IOException;
    :goto_e5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    nop

    .line 2648
    return-void

    .line 2614
    .local v3, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .restart local v4    # "token":I
    :catchall_f1
    move-exception v6

    :try_start_f2
    monitor-exit v5
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    :try_start_f3
    throw v6
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f4

    .line 2640
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    :catchall_f4
    move-exception v3

    .line 2641
    :try_start_f5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 2644
    goto :goto_110

    .line 2642
    :catch_f9
    move-exception v4

    .line 2643
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .end local v4    # "e":Ljava/io/IOException;
    :goto_110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    const-string v4, "BackupManagerService"

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 2595
    .end local v1    # "oldId":J
    :cond_11b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addBackupTrace(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v0

    .line 724
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    monitor-exit v0

    .line 727
    return-void

    .line 725
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .line 3261
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3262
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_33

    .line 3263
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentConnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " agent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 3265
    .local v1, "agent":Landroid/app/IBackupAgent;
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 3267
    .end local v1    # "agent":Landroid/app/IBackupAgent;
    goto :goto_52

    .line 3268
    :cond_33
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    :goto_52
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3272
    monitor-exit v0

    .line 3273
    return-void

    .line 3272
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3281
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3282
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_12

    .line 3283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    goto :goto_31

    .line 3286
    :cond_12
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :goto_31
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3290
    monitor-exit v0

    .line 3291
    return-void

    .line 3290
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public backupNow()V
    .registers 6

    .line 2411
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2414
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2415
    .local v0, "result":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v1, :cond_23

    .line 2416
    const-string v1, "BackupManagerService"

    const-string v2, "Not running backup while in battery save mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_44

    .line 2419
    :cond_23
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2423
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_32
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_32} :catch_35
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    .line 2427
    goto :goto_3e

    .line 2431
    :catchall_33
    move-exception v2

    goto :goto_45

    .line 2424
    :catch_35
    move-exception v2

    .line 2426
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_36
    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "run-backup intent cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_3e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 2431
    monitor-exit v1

    .line 2433
    :goto_44
    return-void

    .line 2431
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_33

    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "currentPw"    # Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 37
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v11, p0

    .line 2022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2025
    .local v12, "now":J
    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v1

    .line 2026
    :try_start_9
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v14, v2

    .line 2027
    .local v14, "fullBackupInterval":J
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v9, v2

    .line 2028
    .local v9, "keyValueBackupInterval":J
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_2ab

    .line 2029
    const/4 v1, 0x0

    .line 2030
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide v2, v14

    .line 2032
    .local v2, "latency":J
    iget-boolean v0, v11, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2a7

    iget-boolean v0, v11, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v0, :cond_27

    .line 2040
    move-wide/from16 v25, v9

    goto/16 :goto_2a9

    .line 2045
    :cond_27
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x4

    .line 2046
    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    .line 2047
    .local v8, "result":Landroid/os/PowerSaveState;
    iget-boolean v0, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_41

    .line 2048
    const-string v0, "BackupManagerService"

    const-string v5, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v9, v10, v5}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2050
    return v4

    .line 2054
    :cond_41
    const-string v0, "BackupManagerService"

    const-string v5, "Beginning scheduled full backup operation"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v7, v11, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2059
    :try_start_4b
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_29c

    if-eqz v0, :cond_61

    .line 2060
    :try_start_4f
    const-string v0, "BackupManagerService"

    const-string v5, "Backup triggered but one already/still running!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    return v4

    .line 2188
    :catchall_58
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    goto/16 :goto_2a3

    .line 2067
    :cond_61
    const/4 v0, 0x1

    .line 2073
    .local v0, "runBackup":Z
    :goto_62
    :try_start_62
    iget-object v6, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_292

    if-nez v6, :cond_77

    .line 2076
    :try_start_6a
    const-string v6, "BackupManagerService"

    const-string v5, "Backup queue empty; doing nothing"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_58

    .line 2078
    const/4 v0, 0x0

    .line 2079
    nop

    .line 2156
    move-wide v4, v2

    move-object v2, v1

    goto/16 :goto_1df

    .line 2082
    :cond_77
    const/4 v5, 0x0

    .line 2084
    .local v5, "headBusy":Z
    :try_start_78
    iget-object v6, v11, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v6

    .line 2085
    .local v6, "transportName":Ljava/lang/String;
    invoke-direct {v11, v6}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v17
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_292

    if-nez v17, :cond_86

    .line 2089
    const/4 v0, 0x0

    .line 2093
    move-wide v2, v9

    .line 2096
    :cond_86
    if-eqz v0, :cond_1d6

    .line 2097
    :try_start_88
    iget-object v4, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_1c9

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_8d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2097
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v19, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    check-cast v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_1bc

    move-object v1, v4

    .line 2098
    .end local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide/from16 v20, v2

    :try_start_96
    iget-wide v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_1b1

    .line 2098
    .end local v2    # "latency":J
    .local v20, "latency":J
    sub-long v2, v12, v2

    .line 2099
    .local v2, "timeSinceRun":J
    cmp-long v4, v2, v14

    if-ltz v4, :cond_a0

    const/4 v4, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v4, 0x0

    .line 2100
    .end local v0    # "runBackup":Z
    .local v4, "runBackup":Z
    :goto_a1
    if-nez v4, :cond_ac

    .line 2106
    sub-long v19, v14, v2

    .line 2107
    .end local v20    # "latency":J
    .local v19, "latency":J
    nop

    .line 2156
    move-object v2, v1

    move v0, v4

    move-wide/from16 v4, v19

    goto/16 :goto_1df

    .line 2111
    .end local v19    # "latency":J
    .restart local v20    # "latency":J
    :cond_ac
    :try_start_ac
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_ae} :catch_19c
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_ae} :catch_192
    .catchall {:try_start_ac .. :try_end_ae} :catchall_1b1

    move-wide/from16 v22, v2

    :try_start_b0
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 2111
    .end local v2    # "timeSinceRun":J
    .local v22, "timeSinceRun":J
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2112
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b0 .. :try_end_bb} :catch_18c
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_bb} :catch_186
    .catchall {:try_start_b0 .. :try_end_bb} :catchall_1b1

    if-nez v2, :cond_d6

    .line 2120
    :try_start_bd
    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bd .. :try_end_c3} :catch_cf
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c3} :catch_c8
    .catchall {:try_start_bd .. :try_end_c3} :catchall_1b1

    .line 2121
    const/4 v5, 0x1

    .line 2122
    nop

    .line 2154
    move v0, v4

    goto/16 :goto_1da

    .line 2150
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_c8
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto/16 :goto_199

    .line 2144
    :catch_cf
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto/16 :goto_1a3

    .line 2125
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_d6
    :try_start_d6
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_da
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_da} :catch_18c
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_da} :catch_186
    .catchall {:try_start_d6 .. :try_end_da} :catchall_1b1

    .line 2126
    .local v2, "privFlags":I
    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_ee

    :try_start_de
    iget-object v3, v11, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move/from16 v24, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2126
    .end local v2    # "privFlags":I
    .local v24, "privFlags":I
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2127
    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v2
    :try_end_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_de .. :try_end_ea} :catch_cf
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_ea} :catch_c8
    .catchall {:try_start_de .. :try_end_ea} :catchall_1b1

    if-eqz v2, :cond_f0

    const/4 v2, 0x1

    goto :goto_f1

    .line 2127
    .end local v24    # "privFlags":I
    .restart local v2    # "privFlags":I
    :cond_ee
    move/from16 v24, v2

    .line 2127
    .end local v2    # "privFlags":I
    .restart local v24    # "privFlags":I
    :cond_f0
    const/4 v2, 0x0

    :goto_f1
    move v5, v2

    .line 2129
    if-eqz v5, :cond_17a

    .line 2130
    :try_start_f4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v25, 0x36ee80

    add-long v2, v2, v25

    move-object/from16 v27, v0

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f4 .. :try_end_101} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_101} :catch_16a
    .catchall {:try_start_f4 .. :try_end_101} :catchall_1b1

    .line 2130
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v27, "appInfo":Landroid/content/pm/PackageInfo;
    move/from16 v28, v4

    const v4, 0x6ddd00

    .line 2132
    .end local v4    # "runBackup":Z
    .local v28, "runBackup":Z
    :try_start_106
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_10a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_10a} :catch_164
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10a} :catch_15e
    .catchall {:try_start_106 .. :try_end_10a} :catchall_1b1

    move/from16 v29, v5

    int-to-long v4, v0

    .line 2132
    .end local v5    # "headBusy":Z
    .local v29, "headBusy":Z
    add-long/2addr v2, v4

    .line 2134
    .local v2, "nextEligible":J
    :try_start_10e
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2135
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10e .. :try_end_11d} :catch_158
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_11d} :catch_152
    .catchall {:try_start_10e .. :try_end_11d} :catchall_1b1

    move-object/from16 v30, v6

    :try_start_11f
    const-string v6, "Full backup time but "

    .line 2135
    .end local v6    # "transportName":Ljava/lang/String;
    .local v30, "transportName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is busy; deferring to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2137
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2135
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long v4, v2, v14

    invoke-virtual {v11, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_148
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11f .. :try_end_148} :catch_14d
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_148} :catch_149
    .catchall {:try_start_11f .. :try_end_148} :catchall_1b1

    .line 2142
    .end local v2    # "nextEligible":J
    .end local v24    # "privFlags":I
    .end local v27    # "appInfo":Landroid/content/pm/PackageInfo;
    goto :goto_180

    .line 2150
    :catch_149
    move-exception v0

    move/from16 v5, v29

    goto :goto_199

    .line 2144
    :catch_14d
    move-exception v0

    move/from16 v5, v29

    goto/16 :goto_1a3

    .line 2150
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_152
    move-exception v0

    move-object/from16 v30, v6

    move/from16 v5, v29

    .line 2150
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_199

    .line 2144
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_158
    move-exception v0

    move-object/from16 v30, v6

    move/from16 v5, v29

    .line 2144
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_1a3

    .line 2150
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_15e
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    .line 2150
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v29    # "headBusy":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_199

    .line 2144
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_164
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    .line 2144
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v29    # "headBusy":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_1a3

    .line 2150
    .end local v28    # "runBackup":Z
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_16a
    move-exception v0

    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    .line 2150
    .end local v4    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    .restart local v29    # "headBusy":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_199

    .line 2144
    .end local v28    # "runBackup":Z
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_172
    move-exception v0

    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    .line 2144
    .end local v4    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    .restart local v29    # "headBusy":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_1a3

    .line 2152
    .end local v28    # "runBackup":Z
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :cond_17a
    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    .line 2154
    .end local v4    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    .restart local v29    # "headBusy":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    :goto_180
    move/from16 v0, v28

    move/from16 v5, v29

    goto/16 :goto_1da

    .line 2150
    .end local v28    # "runBackup":Z
    .end local v29    # "headBusy":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_186
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    .line 2150
    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_199

    .line 2144
    .end local v28    # "runBackup":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_18c
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    .line 2144
    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    goto :goto_1a3

    .line 2150
    .end local v22    # "timeSinceRun":J
    .end local v28    # "runBackup":Z
    .end local v30    # "transportName":Ljava/lang/String;
    .local v2, "timeSinceRun":J
    .restart local v4    # "runBackup":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_192
    move-exception v0

    move-wide/from16 v22, v2

    move/from16 v28, v4

    move-object/from16 v30, v6

    .line 2154
    .end local v2    # "timeSinceRun":J
    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v28    # "runBackup":Z
    :goto_199
    move/from16 v0, v28

    goto :goto_1da

    .line 2144
    .end local v28    # "runBackup":Z
    .restart local v2    # "timeSinceRun":J
    .restart local v4    # "runBackup":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_19c
    move-exception v0

    move-wide/from16 v22, v2

    move/from16 v28, v4

    move-object/from16 v30, v6

    .line 2149
    .end local v2    # "timeSinceRun":J
    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "timeSinceRun":J
    .restart local v28    # "runBackup":Z
    .restart local v30    # "transportName":Ljava/lang/String;
    :goto_1a3
    :try_start_1a3
    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_1a9
    .catchall {:try_start_1a3 .. :try_end_1a9} :catchall_1b1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1ae

    const/4 v2, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v2, 0x0

    :goto_1af
    move v0, v2

    .line 2152
    .end local v28    # "runBackup":Z
    .local v0, "runBackup":Z
    goto :goto_1da

    .line 2188
    .end local v0    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v22    # "timeSinceRun":J
    .end local v30    # "transportName":Ljava/lang/String;
    :catchall_1b1
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v20

    goto/16 :goto_2a3

    .line 2188
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v20    # "latency":J
    .local v2, "latency":J
    .local v19, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :catchall_1bc
    move-exception v0

    move-wide/from16 v20, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-object/from16 v1, v19

    .line 2188
    .end local v2    # "latency":J
    .restart local v20    # "latency":J
    goto/16 :goto_2a3

    .line 2188
    .end local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v20    # "latency":J
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    :catchall_1c9
    move-exception v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    .line 2188
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .restart local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v20    # "latency":J
    goto/16 :goto_2a3

    .line 2154
    .end local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v20    # "latency":J
    .restart local v0    # "runBackup":Z
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    .restart local v5    # "headBusy":Z
    :cond_1d6
    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    .line 2154
    .end local v2    # "latency":J
    .restart local v20    # "latency":J
    :goto_1da
    if-nez v5, :cond_28b

    .line 2156
    .end local v5    # "headBusy":Z
    move-object v2, v1

    move-wide/from16 v4, v20

    .line 2156
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v20    # "latency":J
    .local v2, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v4, "latency":J
    :goto_1df
    if-nez v0, :cond_224

    .line 2158
    :try_start_1e1
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    move-wide/from16 v31, v4

    .line 2161
    .local v31, "deferTime":J
    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;
    :try_end_1fd
    .catchall {:try_start_1e1 .. :try_end_1fd} :catchall_216

    move-wide/from16 v33, v4

    move-wide/from16 v4, v31

    :try_start_201
    invoke-direct {v3, v11, v4, v5}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 2161
    .end local v31    # "deferTime":J
    .local v4, "deferTime":J
    .local v33, "latency":J
    invoke-virtual {v1, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2167
    monitor-exit v7
    :try_end_208
    .catchall {:try_start_201 .. :try_end_208} :catchall_20a

    const/4 v1, 0x0

    return v1

    .line 2188
    .end local v0    # "runBackup":Z
    .end local v4    # "deferTime":J
    :catchall_20a
    move-exception v0

    move-object v1, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v33

    goto/16 :goto_2a3

    .line 2188
    .end local v33    # "latency":J
    .local v4, "latency":J
    :catchall_216
    move-exception v0

    move-wide/from16 v33, v4

    move-object v1, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v33

    .line 2188
    .end local v4    # "latency":J
    .restart local v33    # "latency":J
    goto/16 :goto_2a3

    .line 2171
    .end local v33    # "latency":J
    .restart local v0    # "runBackup":Z
    .restart local v4    # "latency":J
    :cond_224
    move-wide/from16 v33, v4

    .line 2171
    .end local v4    # "latency":J
    .restart local v33    # "latency":J
    :try_start_226
    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2172
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v6, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2173
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v5, [Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 2174
    .local v3, "pkg":[Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "BMS.beginFullBackup()"
    :try_end_244
    .catchall {:try_start_226 .. :try_end_244} :catchall_27b

    move-object v1, v11

    move-object/from16 v21, v2

    move-object v2, v4

    .line 2174
    .end local v2    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v21, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide/from16 v22, v33

    move/from16 v4, v16

    .line 2174
    .end local v33    # "latency":J
    .local v22, "latency":J
    move/from16 v16, v5

    move-object/from16 v5, p1

    move-object/from16 v24, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    .line 2174
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .local v17, "result":Landroid/os/PowerSaveState;
    move-wide/from16 v25, v9

    move/from16 v9, v19

    .line 2174
    .end local v9    # "keyValueBackupInterval":J
    .local v25, "keyValueBackupInterval":J
    move-object/from16 v10, v20

    :try_start_25e
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2186
    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2187
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2188
    .end local v0    # "runBackup":Z
    .end local v3    # "pkg":[Ljava/lang/String;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    monitor-exit v24
    :try_end_274
    .catchall {:try_start_25e .. :try_end_274} :catchall_275

    .line 2190
    return v16

    .line 2188
    :catchall_275
    move-exception v0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    goto :goto_2a3

    .line 2188
    .end local v17    # "result":Landroid/os/PowerSaveState;
    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "latency":J
    .end local v25    # "keyValueBackupInterval":J
    .restart local v2    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    .restart local v33    # "latency":J
    :catchall_27b
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v22, v33

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    .line 2188
    .end local v2    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .end local v33    # "latency":J
    .restart local v17    # "result":Landroid/os/PowerSaveState;
    .restart local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v22    # "latency":J
    .restart local v25    # "keyValueBackupInterval":J
    goto :goto_2a3

    .line 2067
    .end local v17    # "result":Landroid/os/PowerSaveState;
    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "latency":J
    .end local v25    # "keyValueBackupInterval":J
    .restart local v0    # "runBackup":Z
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    .restart local v20    # "latency":J
    :cond_28b
    const/16 v16, 0x1

    move-wide/from16 v2, v20

    const/4 v4, 0x0

    .line 2067
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v17    # "result":Landroid/os/PowerSaveState;
    .restart local v25    # "keyValueBackupInterval":J
    goto/16 :goto_62

    .line 2188
    .end local v0    # "runBackup":Z
    .end local v17    # "result":Landroid/os/PowerSaveState;
    .end local v20    # "latency":J
    .end local v25    # "keyValueBackupInterval":J
    .local v2, "latency":J
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_292
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    .line 2188
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v17    # "result":Landroid/os/PowerSaveState;
    .restart local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v25    # "keyValueBackupInterval":J
    goto :goto_2a3

    .line 2188
    .end local v17    # "result":Landroid/os/PowerSaveState;
    .end local v19    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v25    # "keyValueBackupInterval":J
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_29c
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    .line 2188
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v17    # "result":Landroid/os/PowerSaveState;
    .restart local v25    # "keyValueBackupInterval":J
    :goto_2a3
    :try_start_2a3
    monitor-exit v24
    :try_end_2a4
    .catchall {:try_start_2a3 .. :try_end_2a4} :catchall_2a5

    throw v0

    :catchall_2a5
    move-exception v0

    goto :goto_2a3

    .line 2040
    .end local v17    # "result":Landroid/os/PowerSaveState;
    .end local v25    # "keyValueBackupInterval":J
    .restart local v9    # "keyValueBackupInterval":J
    :cond_2a7
    move-wide/from16 v25, v9

    .line 2040
    .end local v9    # "keyValueBackupInterval":J
    .restart local v25    # "keyValueBackupInterval":J
    :goto_2a9
    const/4 v4, 0x0

    return v4

    .line 2028
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .end local v14    # "fullBackupInterval":J
    .end local v25    # "keyValueBackupInterval":J
    :catchall_2ab
    move-exception v0

    :try_start_2ac
    monitor-exit v1
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_2ab

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .line 3384
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRestoreSession: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    const/4 v0, 0x1

    .line 3389
    .local v0, "needPermission":Z
    const/4 v1, 0x0

    if-nez p2, :cond_73

    .line 3390
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3392
    if-eqz p1, :cond_73

    .line 3393
    move-object v2, v1

    .line 3395
    .local v2, "app":Landroid/content/pm/PackageInfo;
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_32} :catch_40

    move-object v2, v3

    .line 3399
    nop

    .line 3401
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_73

    .line 3405
    const/4 v0, 0x0

    .line 3405
    .end local v2    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_73

    .line 3396
    .restart local v2    # "app":Landroid/content/pm/PackageInfo;
    :catch_40
    move-exception v1

    .line 3397
    .local v1, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked to restore nonexistent pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3410
    .end local v1    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "app":Landroid/content/pm/PackageInfo;
    :cond_73
    :goto_73
    if-eqz v0, :cond_7f

    .line 3411
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "beginRestoreSession"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 3414
    :cond_7f
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "restoring self on current transport; no permission needed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    :goto_87
    monitor-enter p0

    .line 3418
    :try_start_88
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v2, :cond_95

    .line 3419
    const-string v2, "BackupManagerService"

    const-string v3, "Restore session requested but one already active"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    monitor-exit p0

    return-object v1

    .line 3422
    :cond_95
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v2, :cond_a2

    .line 3423
    const-string v2, "BackupManagerService"

    const-string v3, "Restore session requested but currently running backups"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    monitor-exit p0

    return-object v1

    .line 3426
    :cond_a2
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3427
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 3428
    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 3427
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3429
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_88 .. :try_end_b7} :catchall_ba

    .line 3430
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v1

    .line 3429
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1481
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 1482
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_aa

    .line 1484
    :try_start_a
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, p2, v6}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1486
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long/2addr v4, v7

    .line 1491
    .local v4, "timeoutMark":J
    :goto_32
    iget-boolean v7, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v7, :cond_66

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_9e
    .catchall {:try_start_a .. :try_end_3e} :catchall_aa

    cmp-long v7, v7, v4

    if-gez v7, :cond_66

    .line 1494
    :try_start_42
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_9e
    .catchall {:try_start_42 .. :try_end_49} :catchall_aa

    .line 1500
    :goto_49
    goto :goto_32

    .line 1495
    :catch_4a
    move-exception v7

    .line 1497
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_4b
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iput-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 1499
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .end local v7    # "e":Ljava/lang/InterruptedException;
    goto :goto_49

    .line 1504
    :cond_66
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-ne v6, v2, :cond_82

    .line 1505
    const-string v2, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout waiting for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1508
    :cond_82
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got agent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_9c} :catch_9e
    .catchall {:try_start_4b .. :try_end_9c} :catchall_aa

    move-object v0, v2

    .line 1513
    .end local v4    # "timeoutMark":J
    :cond_9d
    goto :goto_9f

    .line 1511
    :catch_9e
    move-exception v2

    .line 1514
    :goto_9f
    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_aa

    .line 1515
    if-nez v0, :cond_a9

    .line 1517
    :try_start_a2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_a8

    .line 1520
    goto :goto_a9

    .line 1518
    :catch_a8
    move-exception v1

    .line 1522
    :cond_a9
    :goto_a9
    return-object v0

    .line 1514
    :catchall_aa
    move-exception v2

    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v2
.end method

.method public cancelBackups()V
    .registers 10

    .line 1685
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1691
    .local v0, "oldToken":J
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    .local v2, "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_71

    .line 1693
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    :try_start_16
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 1694
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/Operation;

    .line 1695
    .local v5, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1696
    .local v6, "token":I
    iget v7, v5, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_38

    .line 1697
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    .end local v5    # "op":Lcom/android/server/backup/internal/Operation;
    .end local v6    # "token":I
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1700
    .end local v4    # "i":I
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_6e

    .line 1701
    :try_start_3c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1702
    .local v4, "token":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V

    .line 1703
    .end local v4    # "token":Ljava/lang/Integer;
    goto :goto_40

    .line 1706
    :cond_55
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1707
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x6ddd00

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_69
    .catchall {:try_start_3c .. :try_end_69} :catchall_71

    .line 1709
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1710
    nop

    .line 1711
    return-void

    .line 1700
    .restart local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_6e
    move-exception v4

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 1709
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_71
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearApplicationDataSynchronous(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keepSystemState"    # Z

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1534
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_47

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_10

    .line 1539
    return-void

    .line 1544
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_10
    nop

    .line 1546
    new-instance v0, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 1548
    .local v0, "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1549
    const/4 v3, 0x1

    :try_start_1a
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_44

    .line 1551
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, p2, v0, v1}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_44

    .line 1554
    goto :goto_23

    .line 1552
    :catch_22
    move-exception v3

    .line 1557
    :goto_23
    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 1558
    .local v3, "timeoutMark":J
    :goto_2a
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_44

    cmp-long v5, v5, v3

    if-gez v5, :cond_42

    .line 1560
    :try_start_36
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_44

    .line 1564
    :goto_3d
    goto :goto_2a

    .line 1561
    :catch_3e
    move-exception v5

    .line 1563
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_3d

    .line 1566
    .end local v3    # "timeoutMark":J
    :cond_42
    monitor-exit v2

    .line 1567
    return-void

    .line 1566
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v1

    .line 1541
    .end local v0    # "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    :catch_47
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to clear data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2355
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupData() of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_a5

    .line 2363
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 2362
    nop

    .line 2368
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2368
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    .line 2370
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_4e

    .line 2375
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_48
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2378
    .restart local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_4e
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2381
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2382
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2383
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.clearBackupData()"

    .line 2385
    invoke-virtual {v4, p1, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 2386
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v4, :cond_7d

    .line 2388
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v6, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v6, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2390
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2391
    monitor-exit v2

    return-void

    .line 2393
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2394
    .local v5, "oldId":J
    new-instance v3, Lcom/android/server/backup/-$$Lambda$BackupManagerService$drk8n83Z0hBmm5D4bbaFMr5WuzA;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$drk8n83Z0hBmm5D4bbaFMr5WuzA;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 2397
    .local v3, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2398
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v8, 0x4

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2401
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2402
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    .end local v3    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v5    # "oldId":J
    .end local v7    # "msg":Landroid/os/Message;
    monitor-exit v2

    goto :goto_a4

    :catchall_a1
    move-exception v3

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_5e .. :try_end_a3} :catchall_a1

    throw v3

    .line 2405
    :cond_a4
    :goto_a4
    return-void

    .line 2360
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_a5
    move-exception v0

    .line 2361
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - not clearing backup data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return-void
.end method

.method public clearBackupTrace()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 733
    monitor-exit v0

    .line 735
    return-void

    .line 733
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearPendingInits()V
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 536
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 4
    .param p1, "currentSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3434
    monitor-enter p0

    .line 3435
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_d

    .line 3436
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 3438
    :cond_d
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3440
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 3442
    :goto_1e
    monitor-exit p0

    .line 3443
    return-void

    .line 3442
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2305
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_7

    .line 2315
    return-void

    .line 2318
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 2319
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_30

    .line 2320
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2320
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return-void

    .line 2325
    :cond_30
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$6;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2330
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2235
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2236
    return-void
.end method

.method public deviceIsEncrypted()Z
    .registers 6

    .line 1894
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_12

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 1896
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    if-eq v1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1894
    :goto_13
    return v0

    .line 1898
    :catch_14
    move-exception v1

    .line 1901
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with storagemanager service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return v0
.end method

.method public deviceIsProvisioned()Z
    .registers 4

    .line 2436
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2437
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3536
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3538
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3540
    .local v0, "identityToken":J
    if-eqz p3, :cond_72

    .line 3541
    :try_start_11
    array-length v2, p3

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_72

    aget-object v4, p3, v3

    .line 3542
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 3543
    const-string v2, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3544
    const-string v2, "  -h       : this help text"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    const-string v2, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_70

    .line 3561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3546
    return-void

    .line 3547
    :cond_32
    :try_start_32
    const-string v5, "agents"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3548
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_70

    .line 3561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3549
    return-void

    .line 3550
    :cond_41
    :try_start_41
    const-string/jumbo v5, "transportclients"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3551
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_70

    .line 3561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3552
    return-void

    .line 3553
    :cond_57
    :try_start_57
    const-string/jumbo v5, "transportstats"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3554
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_70

    .line 3561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3555
    return-void

    .line 3541
    .end local v4    # "arg":Ljava/lang/String;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3561
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 3559
    :cond_72
    :try_start_72
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_70

    .line 3561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3562
    nop

    .line 3563
    return-void

    .line 3561
    :goto_7a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public endFullBackup()V
    .registers 4

    .line 2199
    new-instance v0, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2216
    .local v0, "endFullBackupRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2217
    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .line 1955
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 1956
    .local v0, "newEntry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1960
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 1966
    const/4 v2, -0x1

    .line 1967
    .local v2, "which":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_36

    .line 1968
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .end local v2    # "which":I
    .local v3, "which":I
    move v2, v3

    .end local v3    # "which":I
    .restart local v2    # "which":I
    :goto_1b
    if-ltz v2, :cond_36

    .line 1969
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1970
    .local v3, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-wide v4, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_33

    .line 1971
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1972
    goto :goto_36

    .line 1968
    .end local v3    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 1976
    :cond_36
    :goto_36
    if-gez v2, :cond_3e

    .line 1978
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1980
    .end local v2    # "which":I
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_43

    .line 1981
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1982
    return-void

    .line 1980
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;

    .line 3509
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3514
    .local v0, "oldToken":J
    :try_start_d
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 3515
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3516
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3517
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3518
    .local v4, "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_2e

    aget-object v7, p1, v6

    .line 3519
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3520
    invoke-static {v3, v7, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 3522
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3518
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 3525
    :cond_2e
    if-eqz v3, :cond_35

    .line 3526
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3528
    :cond_35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_45

    .line 3530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3528
    return-object v5

    .line 3530
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 21
    .param p1, "pkgNames"    # [Ljava/lang/String;

    move-object/from16 v11, p0

    .line 2530
    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 2535
    .local v13, "callingUserHandle":I
    if-nez v13, :cond_95

    .line 2539
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v14

    .line 2540
    .local v14, "transportName":Ljava/lang/String;
    invoke-direct {v11, v14}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2541
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2544
    :cond_27
    const-string v0, "BackupManagerService"

    const-string v1, "fullTransportBackup()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    .line 2549
    .local v9, "oldId":J
    :try_start_33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v15, v0

    .line 2550
    .local v15, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-string v16, "BMS.fullTransportBackup()"
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_8f

    move-object v1, v11

    move-object v3, v12

    move-object v6, v15

    move-wide/from16 v17, v9

    move v9, v0

    .end local v9    # "oldId":J
    .local v17, "oldId":J
    move-object/from16 v10, v16

    :try_start_4a
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    move-object v1, v0

    .line 2562
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2563
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_8b

    .line 2566
    :goto_5e
    :try_start_5e
    invoke-virtual {v15}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_61} :catch_84
    .catchall {:try_start_5e .. :try_end_61} :catchall_8b

    .line 2567
    nop

    .line 2574
    :try_start_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2575
    .local v2, "now":J
    array-length v0, v12
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_8b

    const/4 v4, 0x0

    :goto_68
    if-ge v4, v0, :cond_76

    :try_start_6a
    aget-object v5, v12, v4

    .line 2576
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v11, v5, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_72

    .line 2575
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 2579
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "now":J
    .end local v15    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_72
    move-exception v0

    move-wide/from16 v2, v17

    goto :goto_91

    :cond_76
    move-wide/from16 v2, v17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2580
    .end local v17    # "oldId":J
    .local v2, "oldId":J
    nop

    .line 2584
    .end local v2    # "oldId":J
    :goto_7c
    const-string v0, "BackupManagerService"

    const-string v1, "Done with full transport backup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    return-void

    .line 2568
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v15    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v17    # "oldId":J
    :catch_84
    move-exception v0

    move-wide/from16 v2, v17

    .line 2571
    .end local v17    # "oldId":J
    .restart local v2    # "oldId":J
    nop

    .line 2566
    move-wide/from16 v17, v2

    goto :goto_5e

    .line 2579
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "oldId":J
    .end local v15    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v17    # "oldId":J
    :catchall_8b
    move-exception v0

    move-wide/from16 v2, v17

    .end local v17    # "oldId":J
    .restart local v2    # "oldId":J
    goto :goto_91

    .end local v2    # "oldId":J
    .restart local v9    # "oldId":J
    :catchall_8f
    move-exception v0

    move-wide v2, v9

    .end local v9    # "oldId":J
    .restart local v2    # "oldId":J
    :goto_91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2536
    .end local v2    # "oldId":J
    .end local v14    # "transportName":Ljava/lang/String;
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateRandomIntegerToken()I
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 691
    .local v0, "token":I
    if-gez v0, :cond_9

    neg-int v0, v0

    .line 692
    :cond_9
    and-int/lit16 v0, v0, -0x100

    .line 693
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 694
    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getAncestralToken()J
    .registers 3

    .line 515
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    return-wide v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1573
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 1577
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1578
    :try_start_e
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1582
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    move-wide v0, v3

    .line 1584
    :cond_21
    monitor-exit v2

    .line 1586
    return-wide v0

    .line 1584
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v3
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 2

    .line 3686
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3180
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3187
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3188
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_10
    move-exception v0

    .line 3189
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get configuration intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .registers 3

    .line 523
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .line 2913
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 2917
    .local v0, "currentTransport":Ljava/lang/String;
    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3223
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3231
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3232
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_10
    move-exception v0

    .line 3233
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3242
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3250
    .local v0, "label":Ljava/lang/String;
    return-object v0

    .line 3251
    .end local v0    # "label":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 3252
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management label from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3205
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3213
    .local v0, "string":Ljava/lang/String;
    return-object v0

    .line 3214
    .end local v0    # "string":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 3215
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get destination string from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const/4 v1, 0x0

    return-object v1
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getLastBackupPass()J
    .registers 3

    .line 426
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 7

    .line 2939
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v0

    .line 2940
    .local v0, "whitelistedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2941
    .local v1, "whitelistedTransports":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2942
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2943
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 2944
    add-int/lit8 v2, v2, 0x1

    .line 2945
    .end local v4    # "component":Landroid/content/ComponentName;
    goto :goto_11

    .line 2946
    :cond_26
    return-object v1
.end method

.method public getWakelock()Landroid/os/PowerManager$WakeLock;
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "cancelAll"    # Z

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1810
    :try_start_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 1817
    const/4 v2, -0x1

    if-eqz v0, :cond_13

    iget v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_14

    :cond_13
    move v3, v2

    .line 1818
    .local v3, "state":I
    :goto_14
    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 1821
    const-string v2, "BackupManagerService"

    const-string v4, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v0, 0x0

    .line 1825
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_56

    .line 1826
    :cond_25
    if-nez v3, :cond_56

    .line 1827
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iput v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1835
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-eqz v2, :cond_4b

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne v2, v4, :cond_56

    .line 1836
    :cond_4b
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v4, v0, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1839
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1840
    .end local v3    # "state":I
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_68

    .line 1843
    if-eqz v0, :cond_67

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_67

    .line 1847
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v1, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 1849
    :cond_67
    return-void

    .line 1840
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v2
.end method

.method public hasBackupPassword()Z
    .registers 2

    .line 1104
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 2335
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeTransport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2343
    .local v0, "oldId":J
    :try_start_27
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2344
    new-instance v2, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2345
    .local v2, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_40

    .line 2348
    .end local v2    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    nop

    .line 2350
    return-void

    .line 2348
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3487
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3492
    .local v0, "oldToken":J
    :try_start_d
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 3493
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3494
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3495
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3496
    invoke-static {v3, p1, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    .line 3498
    .local v4, "eligible":Z
    if-eqz v3, :cond_22

    .line 3499
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_27

    .line 3501
    :cond_22
    nop

    .line 3503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3501
    return v4

    .line 3503
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligible":Z
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isBackupEnabled()Z
    .registers 4

    .line 2905
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .registers 7

    .line 1854
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1855
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1856
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 1857
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v4, :cond_21

    .line 1858
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1855
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1861
    .end local v2    # "i":I
    :cond_24
    monitor-exit v0

    .line 1862
    return v1

    .line 1861
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public isBackupRunning()Z
    .registers 2

    .line 418
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isClearingData()Z
    .registers 2

    .line 438
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 365
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isProvisioned()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .registers 2

    .line 446
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 2931
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    .line 2923
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1433
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1435
    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_38

    aget-object v3, v0, v2

    .line 1436
    .local v3, "receiver":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1437
    .local v4, "notification":Landroid/content/Intent;
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const v5, 0x10000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1441
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1435
    .end local v3    # "receiver":Ljava/lang/String;
    .end local v4    # "notification":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1445
    :cond_38
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method public makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 3

    .line 703
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    .line 704
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 705
    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    .line 706
    return-object v0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    .line 713
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 715
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 716
    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    .line 717
    return-object v0
.end method

.method public opComplete(IJ)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "result"    # J

    .line 3452
    const/4 v0, 0x0

    .line 3453
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3454
    :try_start_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 3455
    if-eqz v0, :cond_47

    .line 3456
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 3459
    const/4 v0, 0x0

    .line 3460
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_47

    .line 3461
    :cond_1b
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 3463
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received duplicate ack for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3463
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const/4 v0, 0x0

    .line 3467
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_47

    .line 3468
    :cond_41
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v2, :cond_47

    .line 3471
    iput v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 3474
    :cond_47
    :goto_47
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3475
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_6b

    .line 3478
    if-eqz v0, :cond_6a

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_6a

    .line 3479
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 3480
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3481
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3483
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6a
    return-void

    .line 3475
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p5, "operationType"    # I

    .line 1716
    if-eqz p5, :cond_29

    const/4 v0, 0x1

    if-eq p5, v0, :cond_29

    .line 1717
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1717
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void

    .line 1726
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1728
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v3, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1730
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1731
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1732
    return-void

    .line 1731
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .line 1092
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    .line 1093
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1094
    return-object v0
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "transportDirName"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1123
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "_need_init_"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1125
    .local v2, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_23

    .line 1129
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2d

    .line 1131
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_2d

    goto :goto_22

    .line 1132
    :catch_21
    move-exception v3

    .line 1134
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "initPendingFile":Ljava/io/File;
    :goto_22
    goto :goto_2b

    .line 1137
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "initPendingFile":Ljava/io/File;
    :cond_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1138
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1140
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "initPendingFile":Ljava/io/File;
    :goto_2b
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public removeOperation(I)V
    .registers 6
    .param p1, "token"    # I

    .line 1751
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1752
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1753
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1753
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_25
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1757
    monitor-exit v0

    .line 1758
    return-void

    .line 1757
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "flags"    # I

    .line 1591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/BackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 26
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1597
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "requestBackup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_12a

    array-length v0, v2

    if-lt v0, v6, :cond_12a

    .line 1608
    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    const/16 v8, -0x7d1

    if-eqz v0, :cond_f6

    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v0, :cond_27

    goto/16 :goto_f6

    .line 1623
    :cond_27
    :try_start_27
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1625
    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    .line 1624
    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1626
    .local v5, "transportDirName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v9, "BMS.requestBackup()"

    .line 1627
    invoke-virtual {v0, v9}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_3b
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_27 .. :try_end_3b} :catch_ea

    move-object v15, v0

    .line 1634
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    nop

    .line 1633
    nop

    .line 1636
    new-instance v11, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;

    .line 1636
    .local v11, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v11, v1, v15}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 1639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1640
    .local v10, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1641
    .local v9, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v2

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_54
    if-ge v4, v3, :cond_96

    aget-object v12, v2, v4

    .line 1642
    .local v12, "packageName":Ljava/lang/String;
    const-string v0, "@pm@"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1643
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    goto :goto_92

    .line 1647
    :cond_64
    :try_start_64
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x8000000

    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1649
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 1651
    invoke-static {v13, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1653
    goto :goto_92

    .line 1655
    :cond_7a
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1656
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 1658
    :cond_86
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_8b} :catch_8c

    .line 1663
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_8b
    goto :goto_92

    .line 1660
    :catch_8c
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    invoke-static {v13, v12, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1641
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_92
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_54

    .line 1665
    :cond_96
    const/16 v0, 0xb0c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 1666
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1665
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1673
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c1

    const/4 v12, 0x1

    goto :goto_c3

    :cond_c1
    move/from16 v12, v16

    .line 1675
    .local v12, "nonIncrementalBackup":Z
    :goto_c3
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1676
    .local v0, "msg":Landroid/os/Message;
    new-instance v8, Lcom/android/server/backup/params/BackupParams;

    const/16 v17, 0x1

    move-object v3, v8

    move-object v4, v15

    move-object v6, v9

    move-object v7, v10

    move-object v2, v8

    move-object v8, v13

    move-object/from16 v18, v9

    move-object v9, v14

    .line 1676
    .end local v9    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v19, v10

    move-object v10, v11

    .line 1676
    .end local v10    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v20, v11

    move/from16 v11, v17

    .line 1676
    .end local v11    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .local v20, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct/range {v3 .. v12}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZ)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1678
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1679
    return v16

    .line 1628
    .end local v0    # "msg":Landroid/os/Message;
    .end local v5    # "transportDirName":Ljava/lang/String;
    .end local v12    # "nonIncrementalBackup":Z
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v18    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :catch_ea
    move-exception v0

    .line 1629
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1630
    const/16 v2, 0x32

    const/4 v5, 0x1

    invoke-static {v14, v2, v4, v5, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1633
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v3

    .line 1609
    .end local v0    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_f6
    :goto_f6
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup requested but e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-static {v13, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1612
    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_122

    .line 1613
    const/16 v0, 0xd

    goto :goto_124

    .line 1614
    :cond_122
    const/16 v0, 0xe

    .line 1615
    .local v0, "logTag":I
    :goto_124
    const/4 v2, 0x3

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1617
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v8

    .line 1600
    .end local v0    # "logTag":I
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_12a
    const-string v0, "BackupManagerService"

    const-string v2, "No packages named for backup request"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1602
    const/16 v0, 0x31

    const/4 v2, 0x1

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .line 1605
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No packages are provided for backup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetBackupState(Ljava/io/File;)V
    .registers 10
    .param p1, "stateFileDir"    # Ljava/io/File;

    .line 1147
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    .line 1150
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 1154
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v4, v2, :cond_2c

    aget-object v5, v1, v4

    .line 1156
    .local v5, "sf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_need_init_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1157
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1154
    .end local v5    # "sf":Ljava/io/File;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1160
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_60

    .line 1163
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1164
    :try_start_30
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1165
    .local v0, "N":I
    nop

    .local v3, "i":I
    :goto_37
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_5b

    .line 1166
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1167
    .local v3, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_58

    .line 1168
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1169
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1170
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_48

    .line 1165
    .end local v3    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_58
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_37

    .line 1173
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_5b
    monitor-exit v1

    .line 1174
    return-void

    .line 1173
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw v0

    .line 1160
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .line 3297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_28

    .line 3298
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attemping install-time restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    return-void

    .line 3303
    :cond_28
    const/4 v0, 0x0

    .line 3305
    .local v0, "skip":Z
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v9

    .line 3307
    .local v9, "restoreSet":J
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAtInstall pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3308
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restoreSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3307
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_63

    .line 3313
    const/4 v0, 0x1

    .line 3316
    :cond_63
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v2, "BMS.restoreAtInstall()"

    .line 3317
    invoke-virtual {v1, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v11

    .line 3318
    .local v11, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v11, :cond_75

    .line 3319
    const-string v1, "BackupManagerService"

    const-string v2, "No transport client"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    const/4 v0, 0x1

    .line 3323
    :cond_75
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_92

    .line 3325
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-restorable state: auto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const/4 v0, 0x1

    .line 3330
    :cond_92
    if-nez v0, :cond_d4

    .line 3336
    :try_start_94
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3338
    new-instance v8, Lcom/android/server/backup/-$$Lambda$BackupManagerService$XAHW8jFVbxm2U5esUnLTgJC_Z6Y;

    invoke-direct {v8, p0, v11}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$XAHW8jFVbxm2U5esUnLTgJC_Z6Y;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 3346
    .local v8, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v12, v1

    .line 3347
    .local v12, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3348
    move-object v1, v11

    move-wide v4, v9

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v1

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3356
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b7} :catch_b8

    .line 3361
    .end local v8    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v12    # "msg":Landroid/os/Message;
    goto :goto_d4

    .line 3357
    :catch_b8
    move-exception v1

    .line 3359
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    const/4 v0, 0x1

    .line 3364
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d4
    :goto_d4
    if-eqz v0, :cond_ee

    .line 3367
    if-eqz v11, :cond_df

    .line 3368
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v2, "BMS.restoreAtInstall()"

    invoke-virtual {v1, v11, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3373
    :cond_df
    const-string v1, "BackupManagerService"

    const-string v2, "Finishing install immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :try_start_e6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_ec} :catch_ed

    .line 3376
    goto :goto_ee

    :catch_ed
    move-exception v1

    .line 3378
    :cond_ee
    :goto_ee
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .line 2226
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2227
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .registers 21
    .param p1, "transportMinLatency"    # J

    move-object/from16 v1, p0

    .line 1912
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1913
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 1917
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 1918
    .local v3, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 1919
    .local v5, "timeSinceLast":J
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v7
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_4c

    .line 1920
    .local v7, "interval":J
    cmp-long v0, v5, v7

    if-gez v0, :cond_2a

    sub-long v9, v7, v5

    goto :goto_2c

    :cond_2a
    const-wide/16 v9, 0x0

    .line 1921
    .local v9, "appLatency":J
    :goto_2c
    move-wide/from16 v11, p1

    :try_start_2e
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1922
    .local v13, "latency":J
    new-instance v0, Lcom/android/server/backup/BackupManagerService$3;

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 1928
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v15, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    move-wide/from16 v16, v3

    const-wide/16 v3, 0x9c4

    .end local v3    # "upcomingLastBackup":J
    .local v16, "upcomingLastBackup":J
    invoke-virtual {v15, v0, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1929
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v5    # "timeSinceLast":J
    .end local v7    # "interval":J
    .end local v9    # "appLatency":J
    .end local v13    # "latency":J
    .end local v16    # "upcomingLastBackup":J
    goto :goto_4a

    .line 1931
    :cond_41
    move-wide/from16 v11, p1

    const-string v0, "BackupManagerService"

    const-string v3, "Full backup queue empty; not scheduling"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :goto_4a
    monitor-exit v2

    .line 1935
    return-void

    .line 1934
    :catchall_4c
    move-exception v0

    move-wide/from16 v11, p1

    :goto_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_51

    throw v0

    :catchall_51
    move-exception v0

    goto :goto_4f
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3041
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isAllowedByMandatoryBackupTransportPolicy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3046
    const-string v0, "BackupManagerService"

    const-string v1, "Failed to select transport - disallowed by device owner policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3050
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3052
    .local v0, "oldId":J
    :try_start_22
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3053
    .local v2, "previousTransportName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 3054
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): previous transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_4f

    .line 3056
    nop

    .line 3058
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3056
    return-object v2

    .line 3058
    .end local v2    # "previousTransportName":Ljava/lang/String;
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 9
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3065
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isAllowedByMandatoryBackupTransportPolicy(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3069
    if-eqz p2, :cond_28

    .line 3070
    :try_start_12
    const-string v0, "BackupManagerService"

    const-string v1, "Failed to select transport - disallowed by device owner policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const/16 v0, -0x7d1

    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_28

    .line 3073
    :catch_1f
    move-exception v0

    .line 3074
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "ISelectBackupTransportCallback listener not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 3075
    :cond_28
    :goto_28
    nop

    .line 3076
    :goto_29
    return-void

    .line 3078
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3080
    .local v0, "oldId":J
    :try_start_2e
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3081
    .local v2, "transportString":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransportAsync(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_5d

    .line 3111
    .end local v2    # "transportString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3112
    nop

    .line 3113
    return-void

    .line 3111
    :catchall_5d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 2
    .param p1, "activeRestoreSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 463
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 464
    return-void
.end method

.method public setActivityManager(Landroid/app/IActivityManager;)V
    .registers 2
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .line 345
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 346
    return-void
.end method

.method public setAlarmManager(Landroid/app/AlarmManager;)V
    .registers 2
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;

    .line 353
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 354
    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p1, "ancestralPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 512
    return-void
.end method

.method public setAncestralToken(J)V
    .registers 3
    .param p1, "ancestralToken"    # J

    .line 519
    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 520
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 6
    .param p1, "doAutoRestore"    # Z

    .line 2875
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2882
    .local v0, "oldId":J
    :try_start_24
    monitor-enter p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3c

    .line 2883
    :try_start_25
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    .line 2884
    nop

    .line 2883
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2885
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    .line 2886
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_39

    .line 2888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2889
    nop

    .line 2890
    return-void

    .line 2886
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 2888
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 13
    .param p1, "enable"    # Z

    .line 2803
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2806
    const-string v0, "BackupManagerService"

    const-string v1, "Cannot disable backups when the mandatory backups policy is active."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    return-void

    .line 2810
    :cond_1c
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup enabled => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2814
    .local v0, "oldId":J
    :try_start_36
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    .line 2815
    .local v2, "wasEnabled":Z
    monitor-enter p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_ac

    .line 2816
    const/4 v3, 0x0

    :try_start_3a
    invoke-static {p1, v3}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    .line 2817
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    .line 2818
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_a9

    .line 2820
    :try_start_40
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_ac

    .line 2821
    if-eqz p1, :cond_5a

    if-nez v2, :cond_5a

    :try_start_47
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_5a

    .line 2823
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2824
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_a1

    .line 2866
    :catchall_58
    move-exception v3

    goto :goto_a7

    .line 2825
    :cond_5a
    if-nez p1, :cond_a1

    .line 2829
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 2834
    if-eqz v2, :cond_a1

    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_a1

    .line 2837
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2838
    .local v5, "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2839
    .local v6, "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v8, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 2856
    move v7, v3

    .line 2856
    .local v7, "i":I
    :goto_7c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_96

    .line 2857
    nop

    .line 2859
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2860
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2857
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2856
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 2862
    .end local v7    # "i":I
    :cond_96
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2866
    .end local v5    # "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a1
    :goto_a1
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_47 .. :try_end_a2} :catchall_58

    .line 2868
    .end local v2    # "wasEnabled":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2869
    nop

    .line 2870
    return-void

    .line 2866
    .restart local v2    # "wasEnabled":Z
    :goto_a7
    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_58

    :try_start_a8
    throw v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ac

    .line 2818
    :catchall_a9
    move-exception v3

    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 2868
    .end local v2    # "wasEnabled":Z
    :catchall_ac
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupHandler(Lcom/android/server/backup/internal/BackupHandler;)V
    .registers 2
    .param p1, "backupHandler"    # Lcom/android/server/backup/internal/BackupHandler;

    .line 393
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 394
    return-void
.end method

.method public setBackupManagerBinder(Landroid/app/backup/IBackupManager;)V
    .registers 2
    .param p1, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;

    .line 357
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 358
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .param p1, "available"    # Z

    .line 2895
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    return-void
.end method

.method public setBackupRunning(Z)V
    .registers 2
    .param p1, "backupRunning"    # Z

    .line 422
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 423
    return-void
.end method

.method public setBaseStateDir(Ljava/io/File;)V
    .registers 2
    .param p1, "baseStateDir"    # Ljava/io/File;

    .line 483
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 484
    return-void
.end method

.method public setClearingData(Z)V
    .registers 2
    .param p1, "clearingData"    # Z

    .line 442
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    .line 443
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 322
    return-void
.end method

.method public setCurrentToken(J)V
    .registers 3
    .param p1, "currentToken"    # J

    .line 527
    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 528
    return-void
.end method

.method public setDataDir(Ljava/io/File;)V
    .registers 2
    .param p1, "dataDir"    # Ljava/io/File;

    .line 491
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 492
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 369
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    .line 370
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 2
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .line 499
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 500
    return-void
.end method

.method public setLastBackupPass(J)V
    .registers 3
    .param p1, "lastBackupPass"    # J

    .line 430
    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    .line 431
    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 329
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 330
    return-void
.end method

.method public setPackageManagerBinder(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManagerBinder"    # Landroid/content/pm/IPackageManager;

    .line 337
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 338
    return-void
.end method

.method public setPendingBackups(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "pendingBackups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/internal/BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 411
    return-void
.end method

.method public setProvisioned(Z)V
    .registers 2
    .param p1, "provisioned"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 378
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .registers 2
    .param p1, "restoreInProgress"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    .line 451
    return-void
.end method

.method public setRunInitIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "runInitIntent"    # Landroid/app/PendingIntent;

    .line 401
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 402
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .registers 2
    .param p1, "runningFullBackupTask"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 544
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 545
    return-void
.end method

.method public setWakelock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .param p1, "wakelock"    # Landroid/os/PowerManager$WakeLock;

    .line 385
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 386
    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 5
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2687
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2688
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2689
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2690
    monitor-exit v0

    .line 2691
    return-void

    .line 2690
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public startConfirmationUi(ILjava/lang/String;)Z
    .registers 6
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 2654
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v1, "com.android.backupconfirm"

    const-string v2, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2657
    const-string v1, "conftoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2658
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2659
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_20

    .line 2662
    .end local v0    # "confIntent":Landroid/content/Intent;
    nop

    .line 2663
    const/4 v0, 0x1

    return v0

    .line 2660
    :catch_20
    move-exception v0

    .line 2661
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 1868
    if-nez p1, :cond_3

    .line 1870
    return-void

    .line 1875
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1880
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_21

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 1881
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1883
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_21} :catch_22

    .line 1889
    :cond_21
    goto :goto_2a

    .line 1887
    :catch_22
    move-exception v0

    .line 1888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public unlockSystemUser()V
    .registers 10

    .line 571
    const-string v0, "backup migrate"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    move-result v3

    if-nez v3, :cond_57

    .line 574
    const-string v3, "BackupManagerService"

    const-string v4, "Backup enable apparently not migrated"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 577
    .local v3, "r":Landroid/content/ContentResolver;
    const-string v4, "backup_enabled"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 579
    .local v4, "enableState":I
    if-ltz v4, :cond_50

    .line 581
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating enable state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    if-eqz v4, :cond_37

    move v8, v7

    goto :goto_38

    :cond_37
    move v8, v0

    :goto_38
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    move v7, v0

    :goto_46
    invoke-static {v7, v0}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    .line 584
    const-string v5, "backup_enabled"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_57

    .line 588
    :cond_50
    const-string v5, "BackupManagerService"

    const-string v6, "Backup not yet configured; retaining null enable state"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v3    # "r":Landroid/content/ContentResolver;
    .end local v4    # "enableState":I
    :cond_57
    :goto_57
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 594
    const-string v3, "backup enable"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 596
    :try_start_5f
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_68} :catch_69

    .line 599
    goto :goto_6a

    .line 597
    :catch_69
    move-exception v0

    .line 600
    :goto_6a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    return-void
.end method

.method updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 22
    .param p1, "callingUid"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v1, p0

    .line 3000
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    const-string/jumbo v0, "transportComponent can\'t be null"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    const-string/jumbo v0, "name can\'t be null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3005
    const-string v0, "currentDestinationString can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    :goto_29
    if-nez p7, :cond_2d

    move v4, v0

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    if-ne v3, v4, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    const-string v3, "dataManagementLabel should be null iff dataManagementIntent is null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3012
    :try_start_37
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 3013
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3014
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_45} :catch_74

    .line 3015
    .local v0, "transportUid":I
    move v12, p1

    if-ne v12, v0, :cond_6a

    .line 3020
    .end local v0    # "transportUid":I
    nop

    .line 3022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 3024
    .local v7, "oldId":J
    :try_start_4e
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_64

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p4

    move-object v6, v11

    move-wide v9, v7

    move-object/from16 v7, p6

    .line 3024
    .end local v7    # "oldId":J
    .local v9, "oldId":J
    move-object/from16 v8, p7

    :try_start_5a
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_62

    .line 3032
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3033
    nop

    .line 3034
    return-void

    .line 3032
    :catchall_62
    move-exception v0

    goto :goto_66

    .line 3032
    .end local v9    # "oldId":J
    .restart local v7    # "oldId":J
    :catchall_64
    move-exception v0

    move-wide v9, v7

    .line 3032
    .end local v7    # "oldId":J
    .restart local v9    # "oldId":J
    :goto_66
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3016
    .end local v9    # "oldId":J
    .restart local v0    # "transportUid":I
    :cond_6a
    :try_start_6a
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the transport can change its description"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_72} :catch_72

    .line 3018
    .end local v0    # "transportUid":I
    :catch_72
    move-exception v0

    goto :goto_76

    :catch_74
    move-exception v0

    move v12, p1

    .line 3019
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_76
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Transport package not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 15
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;

    .line 2981
    nop

    .line 2982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2981
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2989
    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .registers 6
    .param p1, "token"    # I

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "finalState":I
    const/4 v1, 0x0

    .line 1769
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1771
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    move-object v1, v3

    .line 1772
    if-nez v1, :cond_11

    .line 1774
    goto :goto_21

    .line 1776
    :cond_11
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_38

    if-nez v3, :cond_1d

    .line 1778
    :try_start_15
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_38

    goto :goto_1c

    .line 1779
    :catch_1b
    move-exception v3

    .line 1780
    :goto_1c
    goto :goto_5

    .line 1788
    :cond_1d
    :try_start_1d
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    move v0, v3

    .line 1789
    nop

    .line 1793
    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_38

    .line 1795
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 1796
    if-eqz v1, :cond_32

    .line 1797
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v3, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1803
    :cond_32
    const/4 v2, 0x1

    if-ne v0, v2, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    return v2

    .line 1793
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method public writeRestoreTokens()V
    .registers 6

    .line 1452
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_69

    .line 1452
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 1454
    const/4 v2, 0x1

    :try_start_c
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1457
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1458
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1461
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_22

    .line 1462
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_5d

    .line 1464
    :cond_22
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1465
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1467
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_5c} :catch_63
    .catchall {:try_start_c .. :try_end_5c} :catchall_61

    .line 1469
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_4d

    .line 1471
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_69

    .line 1473
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    goto :goto_71

    .line 1471
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :catchall_61
    move-exception v2

    goto :goto_65

    .line 1452
    :catch_63
    move-exception v1

    :try_start_64
    throw v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    .line 1471
    :goto_65
    :try_start_65
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_69

    .line 1471
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :catch_69
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to write token file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    .end local v0    # "e":Ljava/io/IOException;
    :goto_71
    return-void
.end method
