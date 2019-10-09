.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/app/ActivityManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbException;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$DefaultContainerConnection;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_MINIMUM_DEFRAG_INTERVAL:J = 0x5265c00L

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field private static final FLAG_STOP_TRIM:I = 0x4

.field private static final H_ABORT_IDLE_MAINT:I = 0xc

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_RUN_IDLE_MAINT:I = 0xb

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final LAST_DEFRAG_FILE:Ljava/lang/String; = "last-defrag"

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final WATCHDOG_ENABLE:Z = false

.field private static final ZRAM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.zram_enabled"

.field static sSelf:Lcom/android/server/StorageManagerService;


# instance fields
.field private isBackgroundDefragRunning:Z

.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mAppFuseLock:Ljava/lang/Object;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastDefrag:J

.field private final mLastDefragFile:Ljava/io/File;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mListener:Landroid/os/IVoldListener;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAppFuseName:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mSecureKeyguardShowing:Z

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private volatile mStoraged:Landroid/os/IStoraged;

.field private volatile mSystemReady:Z

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mVold:Landroid/os/IVold;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 408
    const-string/jumbo v0, "password"

    const-string v1, "default"

    const-string/jumbo v2, "pattern"

    const-string/jumbo v3, "pin"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 1432
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 270
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 273
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 276
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 280
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 287
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 293
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 304
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 306
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 416
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 419
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 442
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 445
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 448
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 523
    new-instance v2, Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    .line 542
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 555
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z

    .line 696
    new-instance v0, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 728
    new-instance v0, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 1044
    new-instance v0, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 1433
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1435
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1436
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1437
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1440
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1442
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "StorageManagerService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1443
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1444
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1447
    new-instance v2, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1450
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1451
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1452
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-fstrim"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1453
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_10d

    .line 1457
    :try_start_e4
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ee} :catch_ef

    goto :goto_10c

    .line 1458
    :catch_ef
    move-exception v4

    .line 1459
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create fstrim record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    .end local v4    # "e":Ljava/io/IOException;
    :goto_10c
    goto :goto_115

    .line 1462
    :cond_10d
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1466
    :goto_115
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-defrag"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    .line 1468
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 1469
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "storage-settings"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1471
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1472
    :try_start_138
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 1473
    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_138 .. :try_end_13c} :catchall_178

    .line 1475
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1477
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v4

    .line 1478
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1483
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1484
    .local v1, "screenOnFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1488
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1489
    :try_start_170
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1490
    monitor-exit v6

    .line 1496
    return-void

    .line 1490
    :catchall_175
    move-exception v4

    monitor-exit v6
    :try_end_177
    .catchall {:try_start_170 .. :try_end_177} :catchall_175

    throw v4

    .line 1473
    .end local v1    # "screenOnFilter":Landroid/content/IntentFilter;
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    :catchall_178
    move-exception v1

    :try_start_179
    monitor-exit v4
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/StorageManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/StorageManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # J

    .line 173
    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)Landroid/os/IVold;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVold;

    .line 173
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/StorageManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/StorageManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Z

    .line 173
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/StorageManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 173
    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)Landroid/os/IStoraged;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IStoraged;

    .line 173
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVoldTaskListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVoldTaskListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .line 173
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/StorageManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method private addInternalVolumeLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 855
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, v2}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 857
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 858
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 859
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 8
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3183
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3184
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3186
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-nez v1, :cond_1a

    .line 3187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3188
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 3190
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 3191
    .local v3, "o":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 3195
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_1e

    .line 3192
    .restart local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3198
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_3d
    :goto_3d
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    :try_start_40
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_4c

    .line 3213
    nop

    .line 3215
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    return-void

    .line 3201
    :catch_4c
    move-exception v2

    .line 3206
    .local v2, "e":Landroid/os/RemoteException;
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3207
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3208
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    :cond_5b
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 10
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3081
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_d

    .line 3082
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ALLOCATE_AGGRESSIVE"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    :cond_d
    and-int/lit8 p1, p1, -0x3

    .line 3088
    and-int/lit8 p1, p1, -0x5

    .line 3093
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3094
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3096
    .local v1, "token":J
    const/16 v3, 0x1a

    :try_start_21
    invoke-virtual {v0, v3, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 3097
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_49

    .line 3099
    or-int/lit8 p1, p1, 0x4

    .line 3102
    :cond_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3103
    nop

    .line 3105
    return p1

    .line 3102
    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private bootCompleted()V
    .registers 2

    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 1572
    return-void
.end method

.method private connect()V
    .registers 6

    .line 1503
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1504
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1506
    :try_start_a
    new-instance v2, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    .line 1516
    goto :goto_15

    .line 1514
    :catch_13
    move-exception v2

    .line 1515
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1519
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    if-eqz v0, :cond_1e

    .line 1520
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_26

    .line 1522
    :cond_1e
    const-string v2, "StorageManagerService"

    const-string/jumbo v3, "storaged not found; trying again"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :goto_26
    const-string/jumbo v2, "vold"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1526
    if-eqz v0, :cond_3a

    .line 1528
    :try_start_2f
    new-instance v2, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_38

    .line 1538
    goto :goto_3a

    .line 1536
    :catch_38
    move-exception v1

    .line 1537
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1541
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_57

    .line 1542
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1544
    :try_start_42
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v1, v2}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_56

    .line 1545
    :catch_4a
    move-exception v1

    .line 1546
    .restart local v1    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1547
    const-string v2, "StorageManagerService"

    const-string/jumbo v3, "vold listener rejected; trying again"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1548
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_56
    goto :goto_5f

    .line 1550
    :cond_57
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "vold not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :goto_5f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v1, :cond_68

    goto :goto_6c

    .line 1558
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    goto :goto_7a

    .line 1554
    :cond_6c
    :goto_6c
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$buonS_4R9p4O7J-YZEALUUKVETQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$buonS_4R9p4O7J-YZEALUUKVETQ;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1560
    :goto_7a
    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 7

    .line 1021
    :try_start_0
    const-string v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_6c

    .line 1024
    .local v0, "systemLocale":Ljava/lang/String;
    nop

    .line 1023
    nop

    .line 1025
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1026
    return-void

    .line 1029
    :cond_f
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from mount service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1031
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1032
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1034
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 1037
    goto :goto_46

    .line 1035
    :catch_3e
    move-exception v3

    .line 1036
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "StorageManagerService"

    const-string v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_46
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting system properties to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from mount service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string/jumbo v3, "persist.sys.locale"

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void

    .line 1022
    .end local v0    # "systemLocale":Ljava/lang/String;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "config":Landroid/content/res/Configuration;
    :catch_6c
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 3617
    if-eqz p1, :cond_7

    .line 3619
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3621
    goto :goto_7

    .line 3620
    :catch_6
    move-exception v0

    .line 3623
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 3607
    if-eqz p1, :cond_7

    .line 3609
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3611
    goto :goto_7

    .line 3610
    :catch_6
    move-exception v0

    .line 3613
    :cond_7
    :goto_7
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .registers 3
    .param p1, "bytes"    # [B

    .line 2692
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2693
    const-string v0, "!"

    return-object v0

    .line 2695
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 8

    .line 1413
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1414
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1416
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1418
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2b

    .line 1420
    .local v4, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    nop

    .line 1420
    nop

    .line 1422
    if-eqz v4, :cond_23

    .line 1425
    return-void

    .line 1423
    :cond_23
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1420
    .end local v4    # "isAdmin":Z
    :catchall_2b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "perm"    # Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 397
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_19

    .line 398
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 399
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_19
    monitor-exit v0

    return-object v1

    .line 402
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 337
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 338
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 339
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object v3

    .line 336
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 342
    .end local v1    # "i":I
    :cond_2f
    monitor-exit v0

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 342
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 361
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 362
    const-string v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 363
    :cond_19
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 364
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 366
    :cond_27
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 315
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_f

    .line 316
    monitor-exit v0

    return-object v1

    .line 318
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 325
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 326
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 327
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 324
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 330
    .end local v1    # "i":I
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_3f

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "partGuid"    # Ljava/lang/String;
    .param p2, "fsUuid"    # Ljava/lang/String;

    .line 1896
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1899
    goto :goto_c

    .line 1897
    :catch_6
    move-exception v0

    .line 1898
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1900
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 1575
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1576
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1578
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private handleDaemonConnected()V
    .registers 3

    .line 1008
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    .line 1009
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    .line 1013
    const-string v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1014
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1016
    :cond_18
    return-void
.end method

.method private handleSystemReady()V
    .registers 5

    .line 770
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    .line 771
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    .line 774
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceDefragIdler;->scheduleDefrag(Landroid/content/Context;)V

    .line 782
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zram_enabled"

    .line 783
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 782
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 791
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 792
    return-void
.end method

.method private initIfReadyAndConnected()V
    .registers 10

    .line 863
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thinking about init, mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDaemonConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_8e

    .line 866
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 870
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 871
    .local v0, "initLocked":Z
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 873
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 875
    .local v3, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_74

    .line 876
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_86

    .line 881
    :catch_72
    move-exception v4

    goto :goto_87

    .line 878
    :cond_74
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    .line 879
    invoke-direct {p0, v7}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v7

    .line 878
    invoke-interface {v4, v5, v6, v8, v7}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_86} :catch_72

    .line 883
    :goto_86
    goto :goto_8d

    .line 881
    :goto_87
    nop

    .line 882
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "StorageManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8d
    goto :goto_5c

    .line 886
    .end local v0    # "initLocked":Z
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8e
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1236
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 1242
    return v1

    .line 1240
    :pswitch_9
    nop

    .line 1245
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 1254
    :pswitch_11
    return v1

    .line 1252
    :pswitch_12
    nop

    .line 1257
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1390
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/enterprise/RestrictionsHelper;->isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1391
    return v1

    .line 1394
    :cond_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1396
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 1397
    .local v2, "isUsbRestricted":Z
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v3, :cond_2c

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1398
    const-string/jumbo v3, "no_usb_file_transfer"

    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 1398
    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 1402
    :cond_2c
    const/4 v3, 0x0

    .line 1403
    .local v3, "isTypeRestricted":Z
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v4, :cond_35

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v1, :cond_40

    .line 1404
    :cond_35
    const-string/jumbo v4, "no_physical_media"

    .line 1406
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 1405
    invoke-virtual {v0, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 1409
    :cond_40
    if-nez v2, :cond_47

    if-eqz v3, :cond_45

    goto :goto_47

    :cond_45
    const/4 v1, 0x0

    nop

    :cond_47
    :goto_47
    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .line 2328
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    .line 2329
    return v0

    .line 2332
    :cond_6
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 2333
    return v1

    .line 2336
    :cond_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/high16 v3, 0x10000000

    .line 2337
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2336
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2344
    .local v2, "packageUid":I
    if-ne p2, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_3

    return-void

    .line 825
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 827
    .local v0, "token":J
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 829
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 829
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 831
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1e
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "media"

    const/high16 v6, 0xc0000

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 835
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_46

    .line 836
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_4c

    .line 838
    .local v5, "am":Landroid/app/IActivityManager;
    :try_start_31
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 839
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, -0x1

    const-string/jumbo v9, "vold reset"

    .line 838
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_45
    .catchall {:try_start_31 .. :try_end_44} :catchall_4c

    .line 842
    goto :goto_47

    .line 843
    :catch_45
    move-exception v6

    .line 846
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :cond_46
    goto :goto_b

    .line 848
    :cond_47
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    nop

    .line 850
    return-void

    .line 848
    :catchall_4c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static synthetic lambda$connect$0(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 1555
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    .line 1556
    return-void
.end method

.method public static synthetic lambda$decryptStorage$1(Lcom/android/server/StorageManagerService;)V
    .registers 3

    .line 2444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeRestart()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2447
    goto :goto_c

    .line 2445
    :catch_6
    move-exception v0

    .line 2446
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2448
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"    # I

    .line 1330
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1331
    return-void

    .line 1334
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1335
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_4e

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_14

    goto :goto_4e

    .line 1340
    :cond_14
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    .line 1342
    .local v1, "label":Ljava/lang/String;
    :goto_21
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3f

    const/4 v5, 0x3

    if-ne p2, v5, :cond_2a

    goto :goto_3f

    .line 1345
    :cond_2a
    if-eqz p2, :cond_30

    const/16 v5, 0x8

    if-ne p2, v5, :cond_4d

    .line 1347
    :cond_30
    const v5, 0x3345e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4d

    .line 1344
    :cond_3f
    :goto_3f
    const v5, 0x3345d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1349
    :cond_4d
    :goto_4d
    return-void

    .line 1336
    .end local v1    # "label":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private onCleanupUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 954
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 958
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 961
    goto :goto_28

    .line 959
    :catch_22
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 965
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v1
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 7
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "volumeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1162
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1163
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1164
    add-int/lit8 v0, v0, 0x1

    .line 1161
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1168
    .end local v1    # "i":I
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1176
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_54

    .line 1177
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1180
    :cond_54
    iput v0, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1181
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    invoke-static {v3, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->access$2900(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1182
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .registers 6
    .param p1, "status"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v0, :cond_c

    .line 1354
    const-string v0, "StorageManagerService"

    const-string v1, "Odd, status but no move requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1360
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    .line 1362
    goto :goto_16

    .line 1361
    :catch_15
    move-exception v0

    .line 1366
    :goto_16
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3e

    .line 1367
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " copy phase finshed; persisting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1370
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1373
    :cond_3e
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1374
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1377
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1379
    :cond_69
    return-void
.end method

.method private onUnlockUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 924
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 931
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 934
    goto :goto_28

    .line 932
    :catch_22
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    const/4 v1, 0x0

    move v2, v1

    .line 939
    .local v2, "i":I
    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 940
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 941
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 942
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 943
    .local v4, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 945
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, "envState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v5, v5}, Lcom/android/server/StorageManagerService$Callbacks;->access$2100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "envState":Ljava/lang/String;
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 949
    .end local v2    # "i":I
    :cond_6d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_2d .. :try_end_79} :catchall_77

    throw v1
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1187
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void

    .line 1191
    :cond_23
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_ac

    .line 1192
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1193
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 1195
    .local v4, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string/jumbo v5, "private"

    iget-object v6, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1196
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1197
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found primary storage at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget v5, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1199
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v3

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1200
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_aa

    .line 1202
    :cond_77
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 1203
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found primary storage at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget v5, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1205
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v3

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1206
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1209
    .end local v0    # "storage":Landroid/os/storage/StorageManager;
    .end local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_aa
    :goto_aa
    goto/16 :goto_122

    :cond_ac
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_fe

    .line 1211
    const-string/jumbo v0, "primary_physical"

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1212
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 1213
    const-string v0, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found primary storage at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1215
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1220
    :cond_e3
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1221
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1224
    :cond_f0
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1225
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_122

    .line 1227
    :cond_fe
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v2, :cond_10c

    .line 1228
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_122

    .line 1231
    :cond_10c
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping automatic mounting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :goto_122
    return-void
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 14
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1264
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1265
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1266
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v0, :cond_46

    .line 1267
    new-instance v1, Landroid/os/storage/VolumeRecord;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 1268
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1270
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 1271
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1273
    :cond_3b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto :goto_55

    .line 1277
    :cond_46
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1278
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1279
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1284
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->access$3000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1288
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_8d

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v1, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    const-string v1, "android.os.storage.extra.FS_UUID"

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1295
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1298
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8d
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 1301
    .local v1, "newStateEnv":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 1305
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_a0
    if-ge v5, v3, :cond_c6

    aget v6, v2, v5

    .line 1306
    .local v6, "userId":I
    invoke-virtual {p1, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 1307
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7, v6, v4}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 1308
    .local v7, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1310
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$2100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    .end local v6    # "userId":I
    .end local v7    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 1316
    :cond_c6
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_dc

    iget v2, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_dc

    .line 1323
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1326
    :cond_dc
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 1327
    return-void
.end method

.method private readSettingsLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1585
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1587
    const/4 v0, 0x0

    .line 1589
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 1590
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1591
    .local v1, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1594
    :cond_20
    :goto_20
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1594
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_8c

    .line 1595
    const/4 v2, 0x2

    if-ne v3, v2, :cond_20

    .line 1596
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1597
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v6, "volumes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1598
    const-string/jumbo v6, "version"

    invoke-static {v1, v6, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1599
    .local v6, "version":I
    const-string/jumbo v7, "ro.vold.primary_physical"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1601
    .local v7, "primaryPhysical":Z
    const/4 v9, 0x3

    if-ge v6, v9, :cond_51

    if-lt v6, v2, :cond_4f

    if-nez v7, :cond_4f

    goto :goto_51

    :cond_4f
    move v4, v8

    nop

    :cond_51
    :goto_51
    move v2, v4

    .line 1603
    .local v2, "validAttr":Z
    if-eqz v2, :cond_5d

    .line 1604
    const-string/jumbo v4, "primaryStorageUuid"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1608
    .end local v2    # "validAttr":Z
    .end local v6    # "version":I
    .end local v7    # "primaryPhysical":Z
    :cond_5d
    goto :goto_72

    :cond_5e
    const-string/jumbo v2, "volume"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1609
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v2

    .line 1610
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v6, v2, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_72} :catch_8b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_72} :catch_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_72} :catch_75
    .catchall {:try_start_c .. :try_end_72} :catchall_73

    .line 1612
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_72
    :goto_72
    goto :goto_20

    .line 1621
    .end local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catchall_73
    move-exception v1

    goto :goto_87

    .line 1618
    :catch_75
    move-exception v1

    .line 1619
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_76
    const-string v2, "StorageManagerService"

    const-string v3, "Failed reading metadata"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1619
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_8c

    .line 1616
    :catch_7e
    move-exception v1

    .line 1617
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "StorageManagerService"

    const-string v3, "Failed reading metadata"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_73

    .line 1617
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_8c

    .line 1621
    :goto_87
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1614
    :catch_8b
    move-exception v1

    .line 1621
    :cond_8c
    :goto_8c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1622
    nop

    .line 1623
    return-void
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1654
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 1655
    .local v0, "type":I
    const-string v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1656
    .local v1, "fsUuid":Ljava/lang/String;
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1657
    .local v2, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1658
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1659
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1660
    const-string v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1661
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1662
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1663
    return-object v2
.end method

.method private refreshZramSettings()V
    .registers 5

    .line 800
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "propertyValue":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 802
    return-void

    .line 807
    :cond_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 805
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zram_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_23

    .line 808
    const-string v1, "1"

    goto :goto_25

    :cond_23
    const-string v1, "0"

    .line 809
    .local v1, "desiredPropertyValue":Ljava/lang/String;
    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 813
    const-string/jumbo v2, "persist.sys.zram_enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_31
    return-void
.end method

.method private remountUidExternalStorage(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .line 2137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2140
    goto :goto_c

    .line 2138
    :catch_6
    move-exception v0

    .line 2139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 3219
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3220
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3221
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3222
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3223
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 3225
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3226
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3230
    :cond_22
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3231
    return-void
.end method

.method private resetIfReadyAndConnected()V
    .registers 8

    .line 889
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thinking about reset, mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDaemonConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_92

    .line 892
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 893
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 896
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 899
    .local v2, "systemUnlockedUsers":[I
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 900
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 902
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 903
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_8f

    .line 906
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->reset()V

    .line 909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 910
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v4, v5, v6}, Landroid/os/IVold;->onUserAdded(II)V

    .line 911
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_57

    .line 912
    :cond_6d
    array-length v1, v2

    const/4 v3, 0x0

    :goto_6f
    if-ge v3, v1, :cond_80

    aget v4, v2, v3

    .line 913
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v5, v4}, Landroid/os/IVold;->onUserStarted(I)V

    .line 914
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v5, v4}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 912
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 916
    :cond_80
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v3, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v1, v3}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_87} :catch_88

    .line 919
    goto :goto_92

    .line 917
    :catch_88
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "systemUnlockedUsers":[I
    goto :goto_92

    .line 903
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_8f
    move-exception v2

    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v2

    .line 921
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_92
    :goto_92
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 348
    const-string v0, "internal"

    return-object v0

    .line 350
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 351
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_44

    iget-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    goto :goto_44

    .line 354
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :cond_44
    :goto_44
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private shouldBenchmark()Z
    .registers 13

    .line 371
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 373
    .local v0, "benchInterval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 374
    return v3

    .line 375
    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_20

    .line 376
    return v4

    .line 379
    :cond_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    move v5, v3

    .line 380
    .local v5, "i":I
    :goto_24
    :try_start_24
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 381
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 382
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 383
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-eqz v8, :cond_53

    if-eqz v7, :cond_53

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v10

    .line 385
    .local v8, "benchAge":J
    cmp-long v10, v8, v0

    if-ltz v10, :cond_53

    .line 386
    monitor-exit v2

    return v4

    .line 380
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v8    # "benchAge":J
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 390
    .end local v5    # "i":I
    :cond_56
    monitor-exit v2

    return v3

    .line 391
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private start()V
    .registers 1

    .line 1499
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    .line 1500
    return-void
.end method

.method private systemReady()V
    .registers 3

    .line 1563
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1564
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    .line 1567
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1568
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 11
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 753
    .local v0, "startMillis":J
    :cond_4
    :goto_4
    const-wide/16 v2, 0x1388

    :try_start_6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 754
    return-void

    .line 756
    :cond_f
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " still waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_3a} :catch_3b

    .line 761
    goto :goto_52

    .line 759
    :catch_3b
    move-exception v2

    .line 760
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_52
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v4, v0, p3

    cmp-long v2, v2, v4

    if-gtz v2, :cond_63

    goto :goto_4

    .line 763
    :cond_63
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " gave up waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private warnOnNotMounted()V
    .registers 5

    .line 2314
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 2316
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 2317
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2319
    monitor-exit v0

    return-void

    .line 2315
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2322
    .end local v1    # "i":I
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 2324
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    return-void

    .line 2322
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private writeSettingsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1627
    const/4 v0, 0x0

    move-object v1, v0

    .line 1629
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1631
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1632
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1633
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1634
    const-string/jumbo v3, "volumes"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1635
    const-string/jumbo v3, "version"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1636
    const-string/jumbo v3, "primaryStorageUuid"

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1638
    .local v3, "size":I
    const/4 v4, 0x0

    .line 1638
    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_4b

    .line 1639
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 1640
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v2, v5}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1638
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1642
    .end local v4    # "i":I
    :cond_4b
    const-string/jumbo v4, "volumes"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1643
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1645
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_59} :catch_5a

    .line 1650
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "size":I
    goto :goto_62

    .line 1646
    :catch_5a
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_62

    .line 1648
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1651
    .end local v0    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    return-void
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1667
    const-string/jumbo v0, "volume"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1668
    const-string/jumbo v0, "type"

    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1669
    const-string v0, "fsUuid"

    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1670
    const-string/jumbo v0, "partGuid"

    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1671
    const-string/jumbo v0, "nickname"

    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1672
    const-string/jumbo v0, "userFlags"

    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1673
    const-string v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1674
    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1675
    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1676
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1677
    return-void
.end method


# virtual methods
.method abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2110
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2113
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$15;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 2127
    goto :goto_16

    .line 2125
    :catch_10
    move-exception v0

    .line 2126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    .line 2132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2133
    return-void
.end method

.method public addUserKeyAuth(II[B[B)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 2708
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2711
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 2714
    goto :goto_19

    .line 2712
    :catch_13
    move-exception v0

    .line 2713
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2715
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return-void
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 14
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 3154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 3156
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3157
    .local v0, "allocatableBytes":J
    cmp-long v2, p2, v0

    if-gtz v2, :cond_48

    .line 3162
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 3163
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3167
    .local v3, "token":J
    :try_start_1e
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 3168
    .local v5, "path":Ljava/io/File;
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2c

    .line 3169
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    goto :goto_31

    .line 3171
    :cond_2c
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    .line 3174
    :goto_31
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_3d
    .catchall {:try_start_1e .. :try_end_36} :catchall_3b

    .line 3178
    .end local v5    # "path":Ljava/io/File;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3179
    nop

    .line 3180
    return-void

    .line 3178
    :catchall_3b
    move-exception v5

    goto :goto_44

    .line 3175
    :catch_3d
    move-exception v5

    .line 3176
    .local v5, "e":Ljava/io/IOException;
    :try_start_3e
    new-instance v6, Landroid/os/ParcelableException;

    invoke-direct {v6, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 3178
    .end local v5    # "e":Ljava/io/IOException;
    :goto_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3158
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v3    # "token":J
    :cond_48
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to allocate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " because only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " allocatable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 1742
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1745
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 1776
    nop

    .line 1777
    return-void

    .line 1774
    :catch_11
    move-exception v0

    .line 1775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 2490
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    .line 2495
    return v1

    .line 2498
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 2499
    const-string p2, ""

    goto :goto_1e

    .line 2500
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 2508
    :goto_1e
    const-string/jumbo v0, "lock_settings"

    .line 2509
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2508
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 2510
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string v2, "default_password"

    .line 2512
    .local v2, "currentPassword":Ljava/lang/String;
    :try_start_2b
    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_31

    move-object v2, v3

    .line 2515
    goto :goto_48

    .line 2513
    :catch_31
    move-exception v3

    .line 2514
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v3, p1, v2, p2}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_6a

    .line 2520
    :try_start_4d
    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    .line 2523
    goto :goto_68

    .line 2521
    :catch_51
    move-exception v3

    .line 2522
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t sanitize password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_68} :catch_6a

    .line 2524
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_68
    const/4 v1, 0x0

    return v1

    .line 2525
    :catch_6a
    move-exception v3

    .line 2526
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2527
    return v1

    .line 2501
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v2    # "currentPassword":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearPassword()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2657
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can clear password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeClearPassword()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 2662
    return-void

    .line 2663
    :catch_10
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2665
    return-void
.end method

.method public createUserKey(IIZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    .line 2671
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2674
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2677
    goto :goto_11

    .line 2675
    :catch_b
    move-exception v0

    .line 2676
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2678
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 6
    .param p1, "password"    # Ljava/lang/String;

    .line 2429
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2441
    :try_start_10
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$FwBKfigwURaFfB6T4-qmNa5mSBY;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$FwBKfigwURaFfB6T4-qmNa5mSBY;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_21} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_23

    .line 2449
    const/4 v0, 0x0

    return v0

    .line 2453
    :catch_23
    move-exception v0

    .line 2454
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2455
    const/4 v1, -0x1

    return v1

    .line 2450
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 2451
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const-string v1, "StorageManagerService"

    const-string v2, "fdeCheckPassword failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2452
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 2433
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyUserKey(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2682
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2685
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2688
    goto :goto_11

    .line 2686
    :catch_b
    move-exception v0

    .line 2687
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2689
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 2792
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2795
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2798
    goto :goto_11

    .line 2796
    :catch_b
    move-exception v0

    .line 2797
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2799
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3738
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StorageManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3740
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0xa0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3741
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3742
    :try_start_17
    const-string v2, "Disks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3744
    const/4 v2, 0x0

    move v3, v2

    .line 3744
    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 3745
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/DiskInfo;

    .line 3746
    .local v4, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v4, v0}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3744
    .end local v4    # "disk":Landroid/os/storage/DiskInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3748
    .end local v3    # "i":I
    :cond_37
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3750
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3751
    const-string v3, "Volumes:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3753
    move v3, v2

    .line 3753
    .restart local v3    # "i":I
    :goto_46
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 3754
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 3755
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v5, "private"

    iget-object v6, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 3755
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    goto :goto_65

    .line 3756
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_62
    invoke-virtual {v4, v0}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3753
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3758
    .end local v3    # "i":I
    :cond_68
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3760
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3761
    const-string v3, "Records:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3763
    nop

    .line 3763
    .local v2, "i":I
    :goto_77
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 3764
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 3765
    .local v3, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3763
    .end local v3    # "note":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 3767
    .end local v2    # "i":I
    :cond_8d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3769
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v2

    .line 3772
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v2, :cond_b5

    .line 3773
    const-string v3, "Internal storage total size: N/A"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e6

    .line 3775
    :cond_b5
    const-string v3, "Internal storage ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3777
    const-string v3, ") total size: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 3779
    const-string v3, " ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3781
    const-string v3, " MiB)"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    :goto_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_17 .. :try_end_11b} :catchall_1cd

    .line 3787
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 3788
    :try_start_11e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3789
    const-string/jumbo v1, "mObbMounts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3791
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3792
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3793
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    :goto_134
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 3794
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3795
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3797
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3798
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_165
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_175

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 3799
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3800
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_165

    .line 3801
    :cond_175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3802
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_134

    .line 3803
    :cond_179
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3805
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3806
    const-string/jumbo v3, "mObbPathToStateMap:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3808
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3809
    .local v3, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    :goto_192
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b4

    .line 3810
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3811
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3812
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3813
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3814
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_192

    .line 3815
    :cond_1b4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3816
    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    .end local v3    # "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    monitor-exit v2
    :try_end_1b8
    .catchall {:try_start_11e .. :try_end_1b8} :catchall_1ca

    .line 3818
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3819
    const-string v1, "Last maintenance: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3820
    iget-wide v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3821
    return-void

    .line 3816
    :catchall_1ca
    move-exception v1

    :try_start_1cb
    monitor-exit v2
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    throw v1

    .line 3785
    :catchall_1cd
    move-exception v2

    :try_start_1ce
    monitor-exit v1
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    throw v2
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 2461
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 2465
    const-string p2, ""

    goto :goto_16

    .line 2466
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2475
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1e

    .line 2479
    nop

    .line 2481
    return v1

    .line 2476
    :catch_1e
    move-exception v0

    .line 2477
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2478
    const/4 v1, -0x1

    return v1

    .line 2467
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2722
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2725
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2728
    goto :goto_11

    .line 2726
    :catch_b
    move-exception v0

    .line 2727
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2729
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    .line 1872
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1874
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1876
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1877
    .local v2, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 1878
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1879
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1881
    :cond_34
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/server/StorageManagerService$Callbacks;->access$3900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1875
    .end local v2    # "fsUuid":Ljava/lang/String;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1883
    .end local v1    # "i":I
    :cond_3c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1885
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1886
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1889
    :cond_51
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1890
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1891
    monitor-exit v0

    .line 1892
    return-void

    .line 1891
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1848
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1850
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1854
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_28

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1855
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1857
    :cond_28
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1861
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1862
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1863
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1866
    :cond_46
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1867
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 1868
    return-void

    .line 1867
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 6
    .param p1, "volId"    # Ljava/lang/String;

    .line 1730
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1734
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 1737
    goto :goto_19

    .line 1735
    :catch_13
    move-exception v1

    .line 1736
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_19
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 1904
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1907
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 1940
    nop

    .line 1941
    return-void

    .line 1938
    :catch_11
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 30
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v3

    .line 3112
    .end local p2    # "flags":I
    .local v3, "flags":I
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3113
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 3114
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3120
    .local v7, "token":J
    :try_start_2a
    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3122
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v9

    .line 3123
    .local v9, "usable":J
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 3124
    .local v11, "lowReserved":J
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v13

    .line 3126
    .local v13, "fullReserved":J
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v15

    move-wide/from16 v16, v11

    const-wide/16 v11, 0x0

    .end local v11    # "lowReserved":J
    .local v16, "lowReserved":J
    if-eqz v15, :cond_74

    .line 3127
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v18

    .line 3128
    .local v18, "cacheTotal":J
    invoke-virtual {v5, v0, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v20

    .line 3129
    .local v20, "cacheReserved":J
    move-object/from16 v22, v0

    sub-long v0, v18, v20

    .end local v0    # "path":Ljava/io/File;
    .local v22, "path":Ljava/io/File;
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_54} :catch_96
    .catchall {:try_start_2a .. :try_end_54} :catchall_92

    .line 3131
    .local v0, "cacheClearable":J
    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_66

    .line 3132
    add-long v23, v9, v0

    move-object/from16 v25, v5

    sub-long v4, v23, v13

    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .local v25, "storage":Landroid/os/storage/StorageManager;
    :try_start_5e
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_86
    .catchall {:try_start_5e .. :try_end_62} :catchall_9f

    .line 3148
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3132
    return-wide v4

    .line 3134
    .end local v25    # "storage":Landroid/os/storage/StorageManager;
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    :cond_66
    move-object/from16 v25, v5

    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .restart local v25    # "storage":Landroid/os/storage/StorageManager;
    add-long v4, v9, v0

    sub-long v4, v4, v16

    :try_start_6c
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_86
    .catchall {:try_start_6c .. :try_end_70} :catchall_9f

    .line 3148
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3134
    return-wide v4

    .line 3139
    .end local v18    # "cacheTotal":J
    .end local v20    # "cacheReserved":J
    .end local v22    # "path":Ljava/io/File;
    .end local v25    # "storage":Landroid/os/storage/StorageManager;
    .local v0, "path":Ljava/io/File;
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    :cond_74
    move-object/from16 v22, v0

    move-object/from16 v25, v5

    .end local v0    # "path":Ljava/io/File;
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .restart local v22    # "path":Ljava/io/File;
    .restart local v25    # "storage":Landroid/os/storage/StorageManager;
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_88

    .line 3140
    sub-long v0, v9, v13

    :try_start_7e
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_82} :catch_86
    .catchall {:try_start_7e .. :try_end_82} :catchall_9f

    .line 3148
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3140
    return-wide v0

    .line 3145
    .end local v9    # "usable":J
    .end local v13    # "fullReserved":J
    .end local v16    # "lowReserved":J
    .end local v22    # "path":Ljava/io/File;
    :catch_86
    move-exception v0

    goto :goto_99

    .line 3142
    .restart local v9    # "usable":J
    .restart local v13    # "fullReserved":J
    .restart local v16    # "lowReserved":J
    .restart local v22    # "path":Ljava/io/File;
    :cond_88
    sub-long v0, v9, v16

    :try_start_8a
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8e} :catch_86
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9f

    .line 3148
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3142
    return-wide v0

    .line 3148
    .end local v9    # "usable":J
    .end local v13    # "fullReserved":J
    .end local v16    # "lowReserved":J
    .end local v22    # "path":Ljava/io/File;
    .end local v25    # "storage":Landroid/os/storage/StorageManager;
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    :catchall_92
    move-exception v0

    move-object/from16 v25, v5

    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .restart local v25    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_a0

    .line 3145
    .end local v25    # "storage":Landroid/os/storage/StorageManager;
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    :catch_96
    move-exception v0

    move-object/from16 v25, v5

    .line 3146
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .local v0, "e":Ljava/io/IOException;
    .restart local v25    # "storage":Landroid/os/storage/StorageManager;
    :goto_99
    :try_start_99
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_9f

    .line 3148
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_9f
    move-exception v0

    :goto_a0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3052
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3055
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3057
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_1d
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 3059
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3057
    return-wide v3

    .line 3059
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3066
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3070
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3071
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 3075
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3070
    return-wide v2

    .line 3075
    :catchall_29
    move-exception v2

    goto :goto_32

    .line 3072
    :catch_2b
    move-exception v2

    .line 3073
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 3075
    .end local v2    # "e":Ljava/io/IOException;
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 3018
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 3020
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3021
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 3020
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3023
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3024
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getEncryptionState()I
    .registers 4

    .line 2416
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeComplete()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2421
    :catch_11
    move-exception v0

    .line 2422
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2423
    const/4 v1, -0x1

    return v1
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2609
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2614
    return-object v1

    .line 2618
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    .line 2619
    :catch_19
    move-exception v0

    .line 2620
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2621
    return-object v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2349
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2354
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2355
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2356
    .local v1, "state":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3e

    .line 2357
    if-nez v1, :cond_2f

    .line 2358
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find OBB mounted at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const/4 v0, 0x0

    return-object v0

    .line 2362
    :cond_2f
    iget-object v0, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2356
    .end local v1    # "state":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2644
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can retrieve password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 2649
    :catch_11
    move-exception v0

    .line 2650
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPasswordType()I
    .registers 4

    .line 2567
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2572
    :catch_11
    move-exception v0

    .line 2573
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2574
    const/4 v1, -0x1

    return v1
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 2234
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2236
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 41
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    move-object/from16 v1, p0

    .line 2933
    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2935
    .local v3, "userId":I
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v6, v0

    .line 2936
    .local v6, "forWrite":Z
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v7, v0

    .line 2937
    .local v7, "realState":Z
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    move v8, v0

    .line 2941
    .local v8, "includeInvisible":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2943
    .local v9, "token":J
    :try_start_24
    invoke-virtual {v1, v3}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    move v11, v0

    .line 2944
    .local v11, "userKeyUnlocked":Z
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_128

    move/from16 v12, p1

    move-object/from16 v13, p2

    :try_start_2f
    invoke-virtual {v0, v12, v13}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_126

    move v14, v0

    .line 2946
    .local v14, "storagePermission":Z
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2947
    nop

    .line 2946
    nop

    .line 2949
    const/4 v0, 0x0

    .line 2951
    .local v0, "foundPrimary":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2952
    .local v15, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2953
    move/from16 v17, v0

    const/4 v0, 0x0

    .line 2953
    .local v0, "i":I
    .local v17, "foundPrimary":Z
    :goto_45
    :try_start_45
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_bd

    .line 2954
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 2955
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v12, 0x2

    if-eqz v2, :cond_5f

    if-eq v2, v12, :cond_5f

    .line 2960
    goto :goto_b6

    .line 2958
    :cond_5f
    nop

    .line 2963
    const/4 v2, 0x0

    .line 2964
    .local v2, "match":Z
    if-eqz v6, :cond_6a

    .line 2965
    invoke-virtual {v5, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v18

    move/from16 v2, v18

    goto :goto_80

    .line 2967
    :cond_6a
    invoke-virtual {v5, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v18

    if-nez v18, :cond_7c

    if-eqz v8, :cond_79

    .line 2968
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_79

    goto :goto_7c

    :cond_79
    const/16 v18, 0x0

    goto :goto_7e

    :cond_7c
    :goto_7c
    const/16 v18, 0x1

    :goto_7e
    move/from16 v2, v18

    .line 2970
    :goto_80
    if-nez v2, :cond_83

    .line 2970
    .end local v2    # "match":Z
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    goto :goto_b6

    .line 2972
    .restart local v2    # "match":Z
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_83
    const/16 v18, 0x0

    .line 2973
    .local v18, "reportUnmounted":Z
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v12

    move/from16 v20, v2

    const/4 v2, 0x2

    if-ne v12, v2, :cond_93

    .line 2973
    .end local v2    # "match":Z
    .local v20, "match":Z
    if-nez v11, :cond_93

    .line 2974
    const/16 v18, 0x1

    goto :goto_99

    .line 2975
    :cond_93
    if-nez v14, :cond_99

    if-nez v7, :cond_99

    .line 2976
    const/16 v18, 0x1

    .line 2979
    .end local v18    # "reportUnmounted":Z
    .local v2, "reportUnmounted":Z
    :cond_99
    :goto_99
    move/from16 v2, v18

    iget-object v12, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12, v3, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 2981
    .local v12, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v18

    if-eqz v18, :cond_b1

    .line 2982
    move/from16 v21, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2983
    .end local v2    # "reportUnmounted":Z
    .local v21, "reportUnmounted":Z
    const/4 v2, 0x1

    .line 2953
    .end local v17    # "foundPrimary":Z
    .local v2, "foundPrimary":Z
    move/from16 v17, v2

    goto :goto_b6

    .line 2985
    .end local v21    # "reportUnmounted":Z
    .local v2, "reportUnmounted":Z
    .restart local v17    # "foundPrimary":Z
    :cond_b1
    move/from16 v21, v2

    .line 2985
    .end local v2    # "reportUnmounted":Z
    .restart local v21    # "reportUnmounted":Z
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2953
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v12    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v20    # "match":Z
    .end local v21    # "reportUnmounted":Z
    :goto_b6
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p3

    move/from16 v12, p1

    goto :goto_45

    .line 2988
    .end local v0    # "i":I
    :cond_bd
    monitor-exit v4
    :try_end_be
    .catchall {:try_start_45 .. :try_end_be} :catchall_123

    .line 2990
    if-nez v17, :cond_116

    .line 2991
    const-string v0, "StorageManagerService"

    const-string v2, "No primary storage defined yet; hacking together a stub"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2996
    .local v0, "primaryPhysical":Z
    const-string/jumbo v2, "stub_primary"

    .line 2997
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2998
    .local v4, "path":Ljava/io/File;
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v12, 0x104000e

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2999
    .local v5, "description":Ljava/lang/String;
    const/4 v12, 0x1

    .line 3000
    .local v12, "primary":Z
    move/from16 v24, v0

    .line 3001
    .local v24, "removable":Z
    xor-int/lit8 v25, v0, 0x1

    .line 3002
    .local v25, "emulated":Z
    const/16 v16, 0x0

    .line 3003
    .local v16, "allowMassStorage":Z
    const-wide/16 v32, 0x0

    .line 3004
    .local v32, "maxFileSize":J
    move/from16 v34, v0

    new-instance v0, Landroid/os/UserHandle;

    .line 3004
    .end local v0    # "primaryPhysical":Z
    .local v34, "primaryPhysical":Z
    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v29, v0

    .line 3005
    .local v29, "owner":Landroid/os/UserHandle;
    const/4 v0, 0x0

    .line 3006
    .local v0, "uuid":Ljava/lang/String;
    const-string/jumbo v35, "removed"

    .line 3008
    .local v35, "state":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/StorageVolume;

    const-string/jumbo v19, "stub_primary"

    const/16 v23, 0x1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string/jumbo v31, "removed"

    move-object/from16 v18, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v30, v0

    invoke-direct/range {v18 .. v31}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v36, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3013
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "description":Ljava/lang/String;
    .end local v12    # "primary":Z
    .end local v16    # "allowMassStorage":Z
    .end local v24    # "removable":Z
    .end local v25    # "emulated":Z
    .end local v29    # "owner":Landroid/os/UserHandle;
    .end local v32    # "maxFileSize":J
    .end local v34    # "primaryPhysical":Z
    .end local v35    # "state":Ljava/lang/String;
    :cond_116
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 2988
    :catchall_123
    move-exception v0

    :try_start_124
    monitor-exit v4
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v0

    .line 2946
    .end local v11    # "userKeyUnlocked":Z
    .end local v14    # "storagePermission":Z
    .end local v15    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v17    # "foundPrimary":Z
    :catchall_126
    move-exception v0

    goto :goto_12b

    :catchall_128
    move-exception v0

    move-object/from16 v13, p2

    :goto_12b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p1, "flags"    # I

    .line 3040
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3041
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeRecord;

    .line 3042
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3043
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    aput-object v3, v1, v2

    .line 3042
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3045
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3046
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "flags"    # I

    .line 3029
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3030
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 3031
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3032
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 3031
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3034
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3035
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isConvertibleToFBE()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2636
    :catch_11
    move-exception v0

    .line 2637
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2638
    const/4 v1, 0x0

    return v1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2367
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2369
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2370
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2774
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2776
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public lastMaintenance()J
    .registers 3

    .line 999
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2758
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2761
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1b

    .line 2765
    nop

    .line 2767
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2768
    :try_start_e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2769
    monitor-exit v0

    .line 2770
    return-void

    .line 2769
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1

    .line 2762
    :catch_1b
    move-exception v0

    .line 2763
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2764
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .line 2883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2884
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2885
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".ce_available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2888
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 2893
    if-nez v0, :cond_4b

    const/4 v3, 0x0

    .line 2894
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_4b

    .line 2895
    :cond_34
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepare "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2899
    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 2901
    .local v3, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2903
    const/4 v4, 0x0

    .line 2905
    .local v4, "appFile":Ljava/io/File;
    :try_start_5d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_e1

    move-object v4, v5

    .line 2908
    nop

    .line 2912
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 2913
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 2914
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_87

    goto :goto_9e

    .line 2928
    :cond_87
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2915
    :cond_9e
    :goto_9e
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 2916
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bb

    .line 2917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2921
    :cond_bb
    :try_start_bb
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v5, p2}, Landroid/os/IVold;->mkdirs(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c0} :catch_c1

    .line 2922
    return-void

    .line 2923
    :catch_c1
    move-exception v5

    .line 2924
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to prepare "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2906
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_e1
    move-exception v5

    .line 2907
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2889
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "appFile":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_101
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepare "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public monitor()V
    .registers 3

    .line 3827
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 3830
    goto :goto_c

    .line 3828
    :catch_6
    move-exception v0

    .line 3829
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 7
    .param p1, "volId"    # Ljava/lang/String;

    .line 1703
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1705
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1706
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1710
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 1713
    goto :goto_21

    .line 1711
    :catch_1b
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_21
    return-void

    .line 1707
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restricted by policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 16
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .line 2376
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    const-string v0, "canonicalPath cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    const-string/jumbo v0, "token cannot be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2381
    .local v0, "callingUid":I
    new-instance v9, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2383
    .local v1, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v2, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {v2, p0, v1, p3, v0}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V

    .line 2384
    .local v2, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2388
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 10

    .line 2829
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2831
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2834
    .local v1, "pid":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2835
    const/4 v3, 0x0

    .line 2836
    .local v3, "newlyCreated":Z
    :try_start_14
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v4, :cond_2c

    .line 2837
    new-instance v4, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v4}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 2838
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v6, "AppFuseBridge"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_5c

    .line 2839
    const/4 v3, 0x1

    .line 2842
    :cond_2c
    :try_start_2c
    iget v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2c .. :try_end_32} :catch_56
    .catchall {:try_start_2c .. :try_end_32} :catchall_5c

    .line 2844
    .local v4, "name":I
    :try_start_32
    new-instance v5, Lcom/android/internal/os/AppFuseMount;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v7, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v7, p0, v0, v1, v4}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;III)V

    .line 2845
    invoke-virtual {v6, v7}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_42
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_32 .. :try_end_42} :catch_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_42} :catch_56
    .catchall {:try_start_32 .. :try_end_42} :catchall_5c

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_5c

    .line 2844
    return-object v5

    .line 2846
    :catch_44
    move-exception v5

    .line 2847
    .local v5, "e":Lcom/android/internal/os/FuseUnavailableMountException;
    const/4 v6, 0x0

    if-eqz v3, :cond_51

    .line 2849
    :try_start_48
    const-string v7, "StorageManagerService"

    const-string v8, ""

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_48 .. :try_end_4f} :catch_56
    .catchall {:try_start_48 .. :try_end_4f} :catchall_5c

    .line 2850
    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_5c

    return-object v6

    .line 2853
    :cond_51
    :try_start_51
    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_51 .. :try_end_53} :catch_56
    .catchall {:try_start_51 .. :try_end_53} :catchall_5c

    .line 2857
    .end local v4    # "name":I
    .end local v5    # "e":Lcom/android/internal/os/FuseUnavailableMountException;
    nop

    .line 2858
    .end local v3    # "newlyCreated":Z
    :try_start_54
    monitor-exit v2

    goto :goto_10

    .line 2855
    .restart local v3    # "newlyCreated":Z
    :catch_56
    move-exception v4

    .line 2856
    .local v4, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2858
    .end local v3    # "newlyCreated":Z
    .end local v4    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_5c
    move-exception v3

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw v3
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"    # Z

    .line 971
    return-void
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1004
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1005
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .line 977
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    .line 978
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 980
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 983
    goto :goto_25

    .line 981
    :catch_1f
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "mountId"    # I
    .param p2, "fileId"    # I
    .param p3, "mode"    # I

    .line 2865
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2868
    .local v0, "pid":I
    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_d .. :try_end_10} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_28

    .line 2869
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_1d

    .line 2870
    const-string v3, "StorageManagerService"

    const-string v4, "FuseBridge has not been created"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    monitor-exit v2

    return-object v1

    .line 2873
    :cond_1d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v3, v0, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 2874
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    :try_start_27
    throw v3
    :try_end_28
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_27 .. :try_end_28} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_28} :catch_28

    .line 2875
    :catch_28
    move-exception v2

    .line 2876
    .local v2, "error":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    const-string v4, "The mount point has already been invalid"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2877
    return-object v1
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 7
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 1808
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1813
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1814
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    .line 1817
    goto :goto_22

    .line 1815
    :catch_1c
    move-exception v1

    .line 1816
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1794
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1795
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1797
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1799
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1800
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    .line 1803
    goto :goto_23

    .line 1801
    :catch_1d
    move-exception v1

    .line 1802
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1781
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1783
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1785
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1786
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 1789
    goto :goto_20

    .line 1787
    :catch_1a
    move-exception v1

    .line 1788
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1790
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .line 2781
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2784
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2787
    goto :goto_11

    .line 2785
    :catch_b
    move-exception v0

    .line 2786
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2788
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 1685
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 1686
    return-void
.end method

.method public runDefrag(Landroid/os/IVoldTaskListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;

    .line 1997
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2002
    :try_start_d
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_35

    .line 2003
    :catch_18
    move-exception v0

    .line 2004
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create defrag record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    .end local v0    # "e":Ljava/io/IOException;
    :goto_35
    goto :goto_83

    .line 2007
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2009
    .local v0, "timeSinceLast":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_6d

    .line 2010
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last storage defrag run in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds before, don\'t run storage defrag too frequently"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 2014
    .local v2, "extras":Landroid/os/PersistableBundle;
    const/4 v3, -0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2015
    return-void

    .line 2020
    .end local v2    # "extras":Landroid/os/PersistableBundle;
    :cond_6d
    :try_start_6d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/StorageManagerService;->mLastDefrag:J

    .line 2021
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastDefragFile:Ljava/io/File;

    iget-wide v3, p0, Lcom/android/server/StorageManagerService;->mLastDefrag:J

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7a} :catch_7b

    .line 2024
    goto :goto_83

    .line 2022
    :catch_7b
    move-exception v2

    .line 2023
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    const-string v4, "Unable to record last defrag!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    .end local v0    # "timeSinceLast":J
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_83
    :try_start_83
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->runDefrag(ZLandroid/os/IVoldTaskListener;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8e} :catch_8f

    .line 2042
    goto :goto_95

    .line 2040
    :catch_8f
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2043
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_95
    return-void
.end method

.method runDefrag(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1971
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z

    .line 1976
    :try_start_8
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->runDefrag(ZLandroid/os/IVoldTaskListener;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 1992
    goto :goto_1a

    .line 1990
    :catch_14
    move-exception v0

    .line 1991
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1993
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1944
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1947
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 1961
    goto :goto_16

    .line 1959
    :catch_10
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1962
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    .line 1966
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 1967
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 987
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 988
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .line 993
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 995
    return-void
.end method

.method public setDebugFlags(II)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 2145
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2147
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    .line 2152
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2156
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2163
    .local v3, "token":J
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    .line 2164
    .local v0, "emulateFbe":Z
    :goto_24
    :try_start_24
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_40

    .line 2169
    .end local v0    # "emulateFbe":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    goto :goto_55

    .line 2169
    :catchall_40
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2157
    .end local v3    # "token":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2153
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation not supported on device with native FBE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2173
    :cond_55
    :goto_55
    and-int/lit8 v0, p2, 0x3

    const/16 v3, 0xa

    if-eqz v0, :cond_87

    .line 2176
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_62

    .line 2177
    const-string v0, "force_on"

    .line 2177
    .local v0, "value":Ljava/lang/String;
    :goto_61
    goto :goto_6b

    .line 2178
    .end local v0    # "value":Ljava/lang/String;
    :cond_62
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_69

    .line 2179
    const-string v0, "force_off"

    goto :goto_61

    .line 2181
    :cond_69
    const-string v0, ""

    .line 2184
    .restart local v0    # "value":Ljava/lang/String;
    :goto_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2186
    .local v4, "token":J
    :try_start_6f
    const-string/jumbo v6, "persist.sys.adoptable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_82

    .line 2191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2192
    goto :goto_87

    .line 2191
    :catchall_82
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2195
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_87
    :goto_87
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_b7

    .line 2198
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_92

    .line 2199
    const-string v0, "force_on"

    .line 2199
    .restart local v0    # "value":Ljava/lang/String;
    :goto_91
    goto :goto_9b

    .line 2200
    .end local v0    # "value":Ljava/lang/String;
    :cond_92
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_99

    .line 2201
    const-string v0, "force_off"

    goto :goto_91

    .line 2203
    :cond_99
    const-string v0, ""

    .line 2206
    .restart local v0    # "value":Ljava/lang/String;
    :goto_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2208
    .restart local v4    # "token":J
    :try_start_9f
    const-string/jumbo v6, "persist.sys.sdcardfs"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_b2

    .line 2213
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    goto :goto_b7

    .line 2213
    :catchall_b2
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2217
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_b7
    :goto_b7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_e2

    .line 2218
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_c0

    goto :goto_c1

    :cond_c0
    move v1, v2

    :goto_c1
    move v0, v1

    .line 2220
    .local v0, "enabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2222
    .local v1, "token":J
    :try_start_c6
    const-string/jumbo v4, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_d9
    .catchall {:try_start_c6 .. :try_end_d9} :catchall_dd

    .line 2227
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    goto :goto_e2

    .line 2227
    :catchall_dd
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2230
    .end local v0    # "enabled":Z
    .end local v1    # "token":J
    :cond_e2
    :goto_e2
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2590
    return-void

    .line 2594
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    .line 2595
    return-void

    .line 2596
    :catch_17
    move-exception v0

    .line 2597
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2598
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 2241
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2247
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    .line 2251
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f5

    .line 2254
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2255
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2258
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 2259
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2260
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_63

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2261
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2262
    const-string v2, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failing move due to locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/16 v2, -0xa

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2264
    monitor-exit v0

    return-void

    .line 2266
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_63
    goto :goto_2a

    .line 2270
    :cond_64
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    const-string/jumbo v2, "primary_physical"

    .line 2271
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_d7

    .line 2279
    :cond_79
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2280
    .local v2, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 2282
    .local v3, "to":Landroid/os/storage/VolumeInfo;
    const/4 v4, -0x6

    if-nez v2, :cond_a3

    .line 2283
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing from volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2285
    monitor-exit v0

    return-void

    .line 2286
    :cond_a3
    if-nez v3, :cond_c0

    .line 2287
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing to volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2289
    monitor-exit v0

    return-void

    .line 2292
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_8 .. :try_end_c1} :catchall_114

    .line 2295
    :try_start_c1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v5, Lcom/android/server/StorageManagerService$16;

    invoke-direct {v5, p0}, Lcom/android/server/StorageManagerService$16;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v1, v4, v5}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cf} :catch_d0

    .line 2310
    goto :goto_d6

    .line 2308
    :catch_d0
    move-exception v0

    .line 2309
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d6
    return-void

    .line 2272
    .end local v2    # "from":Landroid/os/storage/VolumeInfo;
    .end local v3    # "to":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d7
    :goto_d7
    :try_start_d7
    const-string v2, "StorageManagerService"

    const-string v3, "Skipping move to/from primary physical"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2274
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2275
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2276
    monitor-exit v0

    return-void

    .line 2252
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Move already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2248
    :cond_fd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage already at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2292
    :catchall_114
    move-exception v1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_d7 .. :try_end_116} :catchall_114

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .line 1822
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1824
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1826
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1827
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1828
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3800(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1829
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1830
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 1831
    return-void

    .line 1830
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 1835
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1837
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1840
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1841
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3800(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1842
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1843
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 1844
    return-void

    .line 1843
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IStorageShutdownObserver;

    .line 1695
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1697
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1699
    return-void
.end method

.method public stopDefrag(Landroid/os/IVoldTaskListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2068
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2071
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->stopDefrag(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 2084
    nop

    .line 2085
    return-void

    .line 2082
    :catch_11
    move-exception v0

    .line 2083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method stopDefrag(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2046
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2049
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->stopDefrag(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 2063
    goto :goto_16

    .line 2061
    :catch_10
    move-exception v0

    .line 2062
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2064
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method stopTrim(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2088
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2091
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/StorageManagerService$14;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$14;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 2105
    goto :goto_17

    .line 2103
    :catch_11
    move-exception v0

    .line 2104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 2733
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2735
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2738
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_31

    .line 2739
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secret required to unlock secure user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2743
    :cond_31
    :goto_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 2744
    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 2743
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_3f

    .line 2748
    goto :goto_46

    .line 2745
    :catch_3f
    move-exception v0

    .line 2746
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2747
    return-void

    .line 2751
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2752
    :try_start_49
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2753
    monitor-exit v0

    .line 2754
    return-void

    .line 2753
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;

    .line 1718
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1722
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 1725
    goto :goto_17

    .line 1723
    :catch_11
    move-exception v1

    .line 1724
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 16
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .line 2392
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2396
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2397
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_50

    .line 2399
    if-eqz v1, :cond_39

    .line 2401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2402
    .local v0, "callingUid":I
    new-instance v10, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2404
    .local v2, "newState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v3, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2405
    .local v3, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2409
    .end local v0    # "callingUid":I
    .end local v2    # "newState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v3    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_4f

    .line 2410
    :cond_39
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :goto_4f
    return-void

    .line 2397
    .end local v1    # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 1690
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 1691
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_30

    .line 2541
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2553
    :try_start_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 2554
    const/4 v0, 0x0

    return v0

    .line 2555
    :catch_1f
    move-exception v0

    .line 2556
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2557
    const/4 v1, -0x1

    return v1

    .line 2545
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_30
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to access the crypt keeper"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
