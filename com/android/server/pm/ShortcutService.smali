.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$DumpFilter;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;
    }
.end annotation


# static fields
.field private static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEBUG:Z = false

.field static final DEBUG_LOAD:Z = false

.field static final DEBUG_PROCSTATE:Z = false

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DUMMY_MAIN_ACTIVITY:Ljava/lang/String; = "android.__dummy__"

.field private static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field private static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field static final OPERATION_ADD:I = 0x1

.field static final OPERATION_SET:I = 0x0

.field static final OPERATION_UPDATE:I = 0x2

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2000

.field private static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x4

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mContext:Landroid/content/Context;

.field private mDirtyUserIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mIconPersistQuality:I

.field private mLastWtfStacktrace:Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxIconDimension:I

.field private mMaxShortcuts:I

.field mMaxUpdatesPerInterval:I

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetInterval:J

.field private mSaveDelayMillis:I

.field private final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field private final mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field private final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field private final mShortcutNonPersistentUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutNonPersistentUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnlockedUsers"
    .end annotation
.end field

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field

.field private mWtfCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 172
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 257
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    .line 264
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 422
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 423
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "onlyForPackageManagerApis"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 426
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 281
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 287
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 326
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 329
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 335
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 345
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 372
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "getHomeActivities()"

    const-string v3, "Launcher permission check"

    const-string v4, "getPackageInfo()"

    const-string v5, "getPackageInfo(SIG)"

    const-string v6, "getApplicationInfo"

    const-string v7, "cleanupDanglingBitmaps"

    const-string v8, "getActivity+metadata"

    const-string v9, "getInstalledPackages"

    const-string v10, "checkPackageChanges"

    const-string v11, "getApplicationResources"

    const-string/jumbo v12, "resourceNameLookup"

    const-string v13, "getLauncherActivity"

    const-string v14, "checkLauncherActivity"

    const-string v15, "isActivityEnabled"

    const-string/jumbo v16, "packageUpdateCheck"

    const-string v17, "asyncPreloadUserDelay"

    const-string v18, "getDefaultLauncher()"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 409
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 491
    new-instance v1, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1080
    new-instance v1, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;

    invoke-direct {v1, v0}, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    .line 2839
    new-instance v1, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2874
    new-instance v1, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 427
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 428
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 429
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 430
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 431
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 432
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 431
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 433
    const-class v1, Landroid/os/UserManagerInternal;

    .line 434
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 433
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 435
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 436
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 435
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 437
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 438
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 437
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 440
    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 441
    new-instance v1, Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 442
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 444
    if-eqz p3, :cond_10f

    .line 445
    return-void

    .line 452
    :cond_10f
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 458
    const/16 v10, 0x3e8

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 459
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v4, "preferedActivityFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 465
    iget-object v11, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v14, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 468
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v5, "localeFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 471
    iget-object v11, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v14, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 474
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 476
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/pm/PackageInfo;

    .line 149
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/ShortcutService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/ShortcutService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/util/List;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/pm/ShortcutInfo;
    .param p4, "x4"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x5"    # Landroid/os/Bundle;
    .param p6, "x6"    # Landroid/content/IntentSender;

    .line 149
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method private assignImplicitRanks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1722
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1723
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1722
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1725
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z

    .line 2461
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2462
    :try_start_3
    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$7yTF58WvWYAkuD-B4tHmI0K7nyI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$7yTF58WvWYAkuD-B4tHmI0K7nyI;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 2465
    monitor-exit v0

    .line 2466
    return-void

    .line 2465
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 12
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 1297
    .local v0, "start":J
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 1299
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    .line 1300
    .local v3, "bitmapDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1301
    .local v4, "children":[Ljava/io/File;
    if-nez v4, :cond_13

    .line 1302
    return-void

    .line 1304
    :cond_13
    array-length v5, v4

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_34

    aget-object v7, v4, v6

    .line 1305
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_20

    .line 1306
    goto :goto_31

    .line 1308
    :cond_20
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1312
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 1316
    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_31

    .line 1318
    :cond_2e
    invoke-direct {p0, p1, v2, v8, v7}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V

    .line 1304
    .end local v7    # "child":Ljava/io/File;
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 1321
    :cond_34
    const/4 v5, 0x5

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1322
    return-void
.end method

.method private cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "user"    # Lcom/android/server/pm/ShortcutUser;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/io/File;

    .line 1333
    nop

    .line 1334
    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object v0

    .line 1336
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 1337
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1338
    goto :goto_27

    .line 1340
    :cond_1a
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1341
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 1345
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1336
    .end local v4    # "child":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1348
    :cond_2a
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "clear"    # Z

    .line 3960
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3962
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3964
    .local v1, "users":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 3964
    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 3965
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3964
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3968
    .end local v2    # "i":I
    :cond_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3970
    .local v2, "result":Lorg/json/JSONObject;
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3971
    const-string/jumbo v3, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3972
    const-string v3, "iconSize"

    iget v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3974
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_47} :catch_4a
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    .line 3977
    .end local v1    # "users":Lorg/json/JSONArray;
    .end local v2    # "result":Lorg/json/JSONObject;
    goto :goto_52

    .line 3978
    :catchall_48
    move-exception v1

    goto :goto_54

    .line 3975
    :catch_4a
    move-exception v1

    .line 3976
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4b
    const-string v2, "ShortcutService"

    const-string v3, "Unable to write in json"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3978
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_52
    monitor-exit v0

    .line 3979
    return-void

    .line 3978
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_48

    throw v1
.end method

.method private dumpCurrentTime(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3950
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    return-void
.end method

.method private dumpDumpFiles(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3982
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3983
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 3985
    monitor-exit v0

    .line 3986
    return-void

    .line 3985
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3839
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3840
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 3843
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3844
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 3845
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3846
    .local v1, "now":J
    const-string v3, "Now: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3847
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3848
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3849
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3851
    const-string v3, "  Raw last reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3852
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 3853
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3854
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v3

    .line 3857
    .local v3, "last":J
    const-string v5, "  Last reset: ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3858
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 3859
    const-string v5, "] "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3860
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v5

    .line 3863
    .local v5, "next":J
    const-string v7, "  Next reset: ["

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 3865
    const-string v7, "] "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3866
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3867
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3868
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3870
    const-string v7, "  Config:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3871
    const-string v7, "    Max icon dim: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3872
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3873
    const-string v7, "    Icon format: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3874
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3875
    const-string v7, "    Icon quality: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3876
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3877
    const-string v7, "    saveDelayMillis: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3878
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3879
    const-string v7, "    resetInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3880
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 3881
    const-string v7, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3882
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3883
    const-string v7, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3884
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3885
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3887
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v8, "  "

    invoke-virtual {v7, p1, v8}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3889
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3890
    const-string v7, "  #Failures: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3891
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3893
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v7, :cond_e3

    .line 3894
    const-string v7, "  Last failure stack trace: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3895
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3899
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string v8, "  "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3904
    .end local v1    # "now":J
    .end local v3    # "last":J
    .end local v5    # "next":J
    :cond_f0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_f2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_117

    .line 3905
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 3906
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 3907
    const-string v4, "  "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3908
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3904
    .end local v3    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    .line 3912
    .end local v2    # "i":I
    :cond_117
    nop

    .local v1, "i":I
    :goto_118
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13d

    .line 3913
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 3914
    .local v2, "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 3915
    const-string v3, "  "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3916
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3912
    .end local v2    # "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    :cond_13a
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 3919
    .end local v1    # "i":I
    :cond_13d
    monitor-exit v0

    .line 3920
    return-void

    .line 3919
    :catchall_13f
    move-exception v1

    monitor-exit v0
    :try_end_141
    .catchall {:try_start_3 .. :try_end_141} :catchall_13f

    throw v1
.end method

.method private dumpUid(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3923
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3924
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 3927
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3928
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 3929
    .local v3, "state":I
    const-string v4, "    UID="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3931
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3933
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3934
    const-string v4, "  [FG]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    :cond_38
    const-string v4, "  last FG="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3937
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 3938
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3926
    .end local v2    # "uid":I
    .end local v3    # "state":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3940
    .end local v1    # "i":I
    :cond_4c
    monitor-exit v0

    .line 3941
    return-void

    .line 3940
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1541
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1542
    return-void

    .line 1544
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .registers 3

    .line 1532
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1533
    return-void

    .line 1535
    :cond_7
    const-string v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1520
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1523
    return-void

    .line 1521
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystem()V
    .registers 3

    .line 1526
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1529
    return-void

    .line 1527
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrShell()V
    .registers 3

    .line 1514
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1515
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system or shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :cond_15
    :goto_15
    return-void
.end method

.method private fillInDefaultActivity(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1706
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1707
    .local v0, "defaultActivity":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_47

    .line 1708
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1709
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_44

    .line 1710
    if-nez v0, :cond_41

    .line 1711
    nop

    .line 1712
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 1711
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1713
    if-eqz v0, :cond_28

    move v4, v2

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1713
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1716
    :cond_41
    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 1707
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1719
    .end local v1    # "i":I
    :cond_47
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z

    .line 1695
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1696
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 7
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z
    .param p3, "forPinRequest"    # Z

    .line 1663
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1664
    const-string v0, "ShortcutService"

    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_d
    const-string v0, "Null shortcut detected"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 1670
    nop

    .line 1671
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot publish shortcut: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1670
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1674
    nop

    .line 1675
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot publish shortcut: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1680
    :cond_77
    const/4 v0, 0x0

    if-nez p2, :cond_8d

    .line 1681
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    .line 1682
    if-nez p3, :cond_8d

    .line 1683
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_87

    const/4 v1, 0x1

    goto :goto_88

    :cond_87
    move v1, v0

    :goto_88
    const-string v2, "Cannot publish shortcut: target activity is not set"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1687
    :cond_8d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 1688
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 1691
    :cond_9a
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    .line 1692
    return-void
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J
    .param p4, "afterOta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 3271
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 3272
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_22

    .line 3273
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3278
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez p4, :cond_1a

    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_1f

    .line 3283
    :cond_1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3272
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3286
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 3944
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3945
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3946
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .registers 4

    .line 659
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 661
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private getCallingUserId()I
    .registers 2

    .line 4248
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .registers 3

    .line 3352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3353
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3354
    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "cloneFlags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2156
    .local p4, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2159
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2161
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3028
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3029
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3030
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3031
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3032
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 3033
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3034
    return-void

    .line 3032
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3073
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3075
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 3076
    return-void

    .line 3084
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3085
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3087
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3088
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 3090
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3091
    return-void

    .line 3088
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3067
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3070
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3057
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3060
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3041
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3042
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3043
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3045
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3046
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3048
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 3049
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3050
    return-void

    .line 3048
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private initialize()V
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    .line 670
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V

    .line 671
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 3289
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3290
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, p3

    if-ne v1, p3, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1510
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isCallerSystem()Z
    .registers 3

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1505
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method static isClockValid(J)Z
    .registers 4
    .param p0, "time"    # J

    .line 1133
    const-wide/32 v0, 0x54a48e00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3298
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 3306
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3294
    if-eqz p0, :cond_f

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 3302
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 3318
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3310
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 3314
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private isProcessStateForeground(I)Z
    .registers 3
    .param p1, "processState"    # I

    .line 532
    const/4 v0, 0x4

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isUserLoadedLocked(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static synthetic lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinnedVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$applyRestore$11(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3606
    const-string v0, "Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3607
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3608
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3609
    return-void
.end method

.method public static synthetic lambda$applyRestore$12(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3635
    const-string v0, "Finish time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3636
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3638
    return-void
.end method

.method public static synthetic lambda$checkPackageChanges$6(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5
    .param p1, "gonePackages"    # Ljava/util/ArrayList;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 2973
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2974
    return-void

    .line 2976
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2981
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2983
    :cond_20
    return-void
.end method

.method public static synthetic lambda$cleanUpPackageForAllLoadedUsers$2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z
    .param p4, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 2463
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$3(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageUserId"    # I
    .param p2, "l"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 2495
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$4(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$10(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1
    .param p0, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$8(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$9(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    .line 3563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void
.end method

.method static synthetic lambda$handleLocaleChanged$5(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1
    .param p0, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method public static synthetic lambda$handleUnlockUser$0(Lcom/android/server/pm/ShortcutService;JI)V
    .registers 6
    .param p1, "start"    # J
    .param p3, "userId"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    const/16 v1, 0xf

    :try_start_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 626
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static synthetic lambda$notifyListeners$1(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2b

    .line 1639
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1640
    monitor-exit v0

    return-void

    .line 1643
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1644
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 1646
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_27

    .line 1647
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v2, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_2b

    .line 1646
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1650
    .end local v0    # "i":I
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    :cond_27
    goto :goto_2c

    .line 1644
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 1649
    :catch_2b
    move-exception v0

    .line 1651
    :goto_2c
    return-void
.end method

.method public static synthetic lambda$rescanUpdatedPackagesLocked$7(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "userId"    # I
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3012
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3014
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3015
    return-void
.end method

.method static synthetic lambda$verifyStatesInner$13(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p0, "u"    # Lcom/android/server/pm/ShortcutUser;

    .line 4411
    sget-object v0, Lcom/android/server/pm/-$$Lambda$sAnQjWlQDJoJcSwHDDCKcU2fneU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$sAnQjWlQDJoJcSwHDDCKcU2fneU;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamicVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$w7_ouiisHmMMzTkQ_HUAHbawlLY(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private loadBaseStateLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 907
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 909
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 913
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_c} :catch_c7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_c} :catch_a9

    .line 913
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 914
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 915
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 918
    :cond_1a
    :goto_1a
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .line 918
    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_8e

    .line 919
    const/4 v6, 0x2

    if-eq v7, v6, :cond_26

    .line 920
    goto :goto_1a

    .line 922
    :cond_26
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 924
    .local v6, "depth":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 925
    .local v9, "tag":Ljava/lang/String;
    if-ne v6, v8, :cond_55

    .line 926
    const-string/jumbo v8, "root"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 927
    const-string v8, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid root tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_4f} :catch_96
    .catchall {:try_start_d .. :try_end_4f} :catchall_94

    .line 942
    if-eqz v3, :cond_54

    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_c7
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_54} :catch_a9

    .line 928
    :cond_54
    return-void

    .line 933
    :cond_55
    const/4 v8, -0x1

    :try_start_56
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x418aefa

    if-eq v10, v11, :cond_60

    goto :goto_6a

    :cond_60
    const-string/jumbo v10, "last_reset_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    const/4 v8, 0x0

    :cond_6a
    :goto_6a
    if-eqz v8, :cond_83

    .line 938
    const-string v8, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    goto :goto_8d

    .line 935
    .restart local v6    # "depth":I
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_83
    const-string/jumbo v8, "value"

    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_8c} :catch_96
    .catchall {:try_start_56 .. :try_end_8c} :catchall_94

    .line 936
    nop

    .line 941
    .end local v6    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    :goto_8d
    goto :goto_1a

    .line 942
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :cond_8e
    if-eqz v3, :cond_c8

    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_93} :catch_c7
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_93} :catch_a9

    goto :goto_c8

    :catchall_94
    move-exception v5

    goto :goto_98

    .line 913
    :catch_96
    move-exception v4

    :try_start_97
    throw v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_94

    .line 942
    :goto_98
    if-eqz v3, :cond_a8

    if-eqz v4, :cond_a5

    :try_start_9c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_9f} :catch_c7
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_9f} :catch_a9

    goto :goto_a8

    :catch_a0
    move-exception v6

    :try_start_a1
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_a8
    :goto_a8
    throw v5
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_a9} :catch_c7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a9} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a1 .. :try_end_a9} :catch_a9

    .line 944
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_a9
    move-exception v3

    .line 945
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 947
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_c9

    .line 942
    :catch_c7
    move-exception v0

    .line 948
    :cond_c8
    :goto_c8
    nop

    .line 950
    :goto_c9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    .line 951
    return-void
.end method

.method private loadConfigurationLocked()V
    .registers 2

    .line 678
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 679
    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1046
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 1047
    .local v1, "ret":Lcom/android/server/pm/ShortcutUser;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1048
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1051
    :goto_13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 1051
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_3b

    .line 1052
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    .line 1053
    goto :goto_13

    .line 1055
    :cond_1f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1057
    .local v3, "depth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, "tag":Ljava/lang/String;
    if-ne v3, v5, :cond_37

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1063
    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 1064
    goto :goto_13

    .line 1066
    :cond_37
    invoke-static {v3, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    .line 1067
    .end local v3    # "depth":I
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_13

    .line 1068
    :cond_3b
    return-object v1
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 10
    .param p1, "userId"    # I

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1018
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1022
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_41

    .line 1028
    .local v3, "in":Ljava/io/FileInputStream;
    nop

    .line 1027
    nop

    .line 1030
    const/4 v4, 0x0

    :try_start_11
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_15} :catch_1d
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_11 .. :try_end_15} :catch_1d
    .catchall {:try_start_11 .. :try_end_15} :catchall_1b

    move-object v2, v4

    .line 1031
    .local v2, "ret":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 1036
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1031
    return-object v2

    .line 1036
    .end local v2    # "ret":Lcom/android/server/pm/ShortcutUser;
    :catchall_1b
    move-exception v2

    goto :goto_3d

    .line 1032
    :catch_1d
    move-exception v4

    .line 1033
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_1b

    .line 1034
    nop

    .line 1036
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1034
    return-object v2

    .line 1036
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 1023
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_41
    move-exception v3

    .line 1027
    .local v3, "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1635
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 1652
    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 752
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 756
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 786
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 788
    const/4 v1, 0x0

    return-object v1

    .line 790
    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 3676
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    .line 3677
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    if-nez p0, :cond_8

    .line 3678
    return-object v0

    .line 3681
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 3682
    .local v2, "argIndex":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_100

    .line 3683
    add-int/lit8 v3, v2, 0x1

    .local v3, "argIndex":I
    aget-object v2, p0, v2

    .line 3685
    .local v2, "arg":Ljava/lang/String;
    const-string v4, "-c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 3686
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3687
    goto/16 :goto_fd

    .line 3689
    :cond_1f
    const-string v4, "--checkin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3690
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3691
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setCheckInClear(Z)V

    .line 3692
    goto/16 :goto_fd

    .line 3694
    :cond_2f
    const-string v4, "-a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f6

    const-string v4, "--all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto/16 :goto_f6

    .line 3699
    :cond_41
    const-string v4, "-u"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f2

    const-string v4, "--uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto/16 :goto_f2

    .line 3703
    :cond_53
    const-string v4, "-f"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ee

    const-string v4, "--files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    goto/16 :goto_ee

    .line 3707
    :cond_65
    const-string v4, "-n"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    const-string v4, "--no-main"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    goto/16 :goto_ea

    .line 3711
    :cond_77
    const-string v4, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 3712
    array-length v4, p0

    if-ge v3, v4, :cond_97

    .line 3716
    add-int/lit8 v4, v3, 0x1

    .local v4, "argIndex":I
    :try_start_84
    aget-object v3, p0, v3

    .end local v3    # "argIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addUser(I)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8d} :catch_8e

    .line 3719
    goto :goto_df

    .line 3717
    :catch_8e
    move-exception v1

    .line 3718
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid user ID"

    invoke-direct {v3, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3713
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "argIndex":I
    .restart local v3    # "argIndex":I
    :cond_97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing user ID for --user"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3722
    :cond_9f
    const-string v4, "-p"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    const-string v4, "--package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    goto :goto_d1

    .line 3730
    :cond_b0
    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 3735
    .end local v2    # "arg":Ljava/lang/String;
    move v2, v3

    goto :goto_100

    .line 3731
    .restart local v2    # "arg":Ljava/lang/String;
    :cond_ba
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3723
    :cond_d1
    :goto_d1
    array-length v4, p0

    if-ge v3, v4, :cond_e2

    .line 3726
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "argIndex":I
    aget-object v3, p0, v3

    .end local v3    # "argIndex":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpDetails(Z)V

    .line 3728
    nop

    .line 3681
    .end local v4    # "argIndex":I
    .local v2, "argIndex":I
    :goto_df
    move v2, v4

    goto/16 :goto_a

    .line 3724
    .local v2, "arg":Ljava/lang/String;
    .restart local v3    # "argIndex":I
    :cond_e2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing package name for --package"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3708
    :cond_ea
    :goto_ea
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpMain(Z)V

    .line 3709
    goto :goto_fd

    .line 3704
    :cond_ee
    :goto_ee
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3705
    goto :goto_fd

    .line 3700
    :cond_f2
    :goto_f2
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3701
    goto :goto_fd

    .line 3695
    :cond_f6
    :goto_f6
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3696
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3697
    nop

    .line 3681
    .end local v2    # "arg":Ljava/lang/String;
    :goto_fd
    move v2, v3

    goto/16 :goto_a

    .line 3735
    .end local v3    # "argIndex":I
    .local v2, "argIndex":I
    :cond_100
    :goto_100
    array-length v1, p0

    if-ge v2, v1, :cond_10c

    .line 3736
    add-int/lit8 v1, v2, 0x1

    .local v1, "argIndex":I
    aget-object v2, p0, v2

    .end local v2    # "argIndex":I
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackage(Ljava/lang/String;)V

    .line 3735
    move v2, v1

    goto :goto_100

    .line 3738
    .end local v1    # "argIndex":I
    .restart local v2    # "argIndex":I
    :cond_10c
    return-object v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 760
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 764
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 809
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 810
    .local v0, "parsed":Landroid/content/Intent;
    if-nez v0, :cond_e

    .line 812
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 814
    :cond_e
    return-object v0
.end method

.method static parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 795
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 797
    .local v1, "parsed":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 799
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    .line 802
    goto :goto_1a

    .line 800
    :catch_12
    move-exception v2

    .line 801
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v3, "ShortcutService"

    const-string v4, "Error parsing intent"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_1a
    :goto_1a
    return-object v1
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 768
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 772
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 774
    return-wide p2

    .line 777
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v1

    .line 778
    :catch_10
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p4, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultIntent"    # Landroid/content/IntentSender;

    .line 1967
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1968
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1971
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    const-string v2, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1981
    if-eqz p3, :cond_2f

    .line 1982
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 1984
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1987
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutPackage;->updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V

    .line 1989
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1994
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v2    # "id":Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z

    move-result v1

    .line 1996
    .local v1, "ret":Z
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3f

    .line 1998
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2000
    return v1

    .line 1996
    .end local v1    # "ret":Z
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private rescanUpdatedPackagesLocked(IJ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 3002
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3006
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3007
    .local v1, "now":J
    nop

    .line 3008
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    .line 3011
    .local v8, "afterOta":Z
    new-instance v9, Lcom/android/server/pm/-$$Lambda$ShortcutService$XepsJlzLd-VitYi8_ThhUsx37Ok;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$XepsJlzLd-VitYi8_ThhUsx37Ok;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    .line 3019
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3022
    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "forBackup"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 989
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 992
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 993
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 994
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 996
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 998
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1000
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1001
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1002
    return-void
.end method

.method private saveUserLocked(I)V
    .registers 9
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 965
    .local v0, "path":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 967
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 968
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 969
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 971
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 973
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 975
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_25} :catch_26

    .line 982
    goto :goto_44

    .line 979
    :catch_26
    move-exception v3

    .line 980
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 983
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method private scheduleSaveBaseState()V
    .registers 2

    .line 1072
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1073
    return-void
.end method

.method private scheduleSaveInner(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1086
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1088
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 1092
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1093
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1094
    return-void

    .line 1090
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1728
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1729
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 1728
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1731
    .end local v0    # "i":I
    :cond_14
    return-object p1
.end method

.method static shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 3538
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "maxSize"    # I

    .line 1455
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1456
    .local v0, "ow":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1457
    .local v1, "oh":I
    if-gt v0, p1, :cond_d

    if-gt v1, p1, :cond_d

    .line 1461
    return-object p0

    .line 1463
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1466
    .local v2, "longerDimension":I
    mul-int v3, v0, p1

    div-int/2addr v3, v2

    .line 1467
    .local v3, "nw":I
    mul-int v4, v1, p1

    div-int/2addr v4, v2

    .line 1473
    .local v4, "nh":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1474
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1476
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1478
    .local v7, "dst":Landroid/graphics/RectF;
    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1480
    return-object v5
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 6
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unloadUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 654
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 655
    return-void
.end method

.method private updateTimesLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 1144
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1146
    .local v2, "prevLastResetTime":J
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 1148
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_3f

    .line 1149
    :cond_11
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_27

    .line 1151
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1152
    const-string v4, "ShortcutService"

    const-string v5, "Clock rewound"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_3f

    .line 1157
    :cond_27
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-gtz v4, :cond_3f

    .line 1158
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    rem-long/2addr v4, v6

    .line 1159
    .local v4, "offset":J
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    div-long v6, v0, v6

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1162
    .end local v4    # "offset":J
    :cond_3f
    :goto_3f
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_48

    .line 1163
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 1165
    :cond_48
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1558
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1560
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1561
    return-void

    .line 1564
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1567
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_31

    .line 1570
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 1573
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1575
    return-void

    .line 1571
    :cond_29
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1568
    :cond_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid user-ID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1578
    if-nez p2, :cond_3

    .line 1579
    return-void

    .line 1581
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1585
    return-void

    .line 1582
    :cond_e
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "109824443"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1583
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shortcut package name mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1589
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1590
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1591
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1590
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1593
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method private final verifyStatesForce()V
    .registers 1

    .line 4406
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4407
    return-void
.end method

.method private verifyStatesInner()V
    .registers 3

    .line 4410
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4411
    :try_start_3
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$iMiNoPdGwz3-PvMFlFpgdWX24mE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$iMiNoPdGwz3-PvMFlFpgdWX24mE;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 4412
    monitor-exit v0

    .line 4413
    return-void

    .line 4412
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .registers 7
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    const-string v0, "ShortcutService"

    const-string v1, "Invalid tag \'%s\' found at depth %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 851
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    if-nez p2, :cond_3

    return-void

    .line 863
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 864
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    if-nez p2, :cond_3

    return-void

    .line 869
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 870
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 846
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    if-eqz p2, :cond_8

    .line 855
    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 857
    :cond_8
    const-string v0, "0"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 859
    :goto_d
    return-void
.end method

.method static writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 836
    if-nez p2, :cond_3

    return-void

    .line 838
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 840
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    if-nez p2, :cond_3

    return-void

    .line 831
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 820
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 1880
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1882
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1883
    .local v0, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1884
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1886
    .local v1, "size":I
    nop

    .line 1887
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v3

    .line 1886
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v2

    .line 1889
    .local v2, "unlimited":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1890
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1892
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 1894
    .local v4, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1896
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1898
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1901
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1902
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1905
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3e

    .line 1906
    monitor-exit v3

    return v7

    .line 1908
    :cond_3e
    move v6, v7

    .local v6, "i":I
    :goto_3f
    if-ge v6, v1, :cond_53

    .line 1909
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1912
    .local v8, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-direct {p0, v8, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1916
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1919
    invoke-virtual {v4, v8}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1908
    .end local v8    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 1923
    .end local v6    # "i":I
    :cond_53
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1924
    .end local v4    # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_5e

    .line 1925
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1929
    return v5

    .line 1924
    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v4
.end method

.method public applyRestore([BI)V
    .registers 9
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    .line 3593
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3597
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3598
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 3599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restore: user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3600
    monitor-exit v0

    return-void

    .line 3605
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$38xbKnaiRwgkQIdkh2OdULJL_hQ;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$38xbKnaiRwgkQIdkh2OdULJL_hQ;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3610
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3614
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_97

    .line 3616
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x1

    :try_start_42
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_8d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_8d
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_42 .. :try_end_46} :catch_8d
    .catchall {:try_start_42 .. :try_end_46} :catchall_97

    .line 3620
    .local v2, "restored":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 3619
    nop

    .line 3621
    :try_start_48
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-2.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3623
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 3625
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-3.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3628
    const-wide/16 v3, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3632
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-4.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3634
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-5-finish.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3640
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 3641
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    .end local v2    # "restored":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0

    .line 3642
    return-void

    .line 3617
    .restart local v1    # "is":Ljava/io/ByteArrayInputStream;
    :catch_8d
    move-exception v2

    .line 3618
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ShortcutService"

    const-string v4, "Restoration failed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3619
    monitor-exit v0

    return-void

    .line 3641
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_48 .. :try_end_99} :catchall_97

    throw v1
.end method

.method canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2316
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2317
    const/4 v0, 0x1

    return v0

    .line 2319
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2320
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;->hasHostPackage(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2321
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method

.method checkPackageChanges(I)V
    .registers 13
    .param p1, "ownerUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2959
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2960
    const-string v0, "ShortcutService"

    const-string v1, "Safe mode, skipping checkPackageChanges()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    return-void

    .line 2964
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2966
    .local v0, "start":J
    const/16 v2, 0x8

    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2968
    .local v3, "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_5a

    .line 2969
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 2972
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v6, Lcom/android/server/pm/-$$Lambda$ShortcutService$KKtB89b9du8RtyDY2LIMGlzZzzg;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$KKtB89b9du8RtyDY2LIMGlzZzzg;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 2984
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 2985
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_34
    if-ltz v6, :cond_47

    .line 2986
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 2987
    .local v7, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v10, 0x0

    invoke-virtual {p0, v8, p1, v9, v10}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    .line 2985
    .end local v7    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 2992
    .end local v6    # "i":I
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 2993
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_57

    .line 2995
    .end local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2996
    nop

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2998
    return-void

    .line 2993
    .restart local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    :catchall_57
    move-exception v5

    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 2995
    .end local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    :catchall_5a
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I
    .param p3, "packageUserId"    # I
    .param p4, "appStillExists"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2479
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v0

    .line 2481
    .local v0, "wasUserLoaded":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2482
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x0

    .line 2485
    .local v2, "doNotify":Z
    if-ne p3, p2, :cond_12

    .line 2486
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2487
    const/4 v2, 0x1

    .line 2492
    :cond_12
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 2495
    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$okoC4pj1SnB9cHJpbZ-Xc5MyThk;

    invoke-direct {v3, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$okoC4pj1SnB9cHJpbZ-Xc5MyThk;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2499
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$9V6lStUbS0hFjsnM72O75L8xvNI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$9V6lStUbS0hFjsnM72O75L8xvNI;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2501
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2503
    if-eqz v2, :cond_2a

    .line 2504
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 2508
    :cond_2a
    if-eqz p4, :cond_32

    if-ne p3, p2, :cond_32

    .line 2511
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 2514
    :cond_32
    if-nez v0, :cond_37

    .line 2516
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 2518
    :cond_37
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1274
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1275
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1276
    return-void

    .line 1278
    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1279
    :cond_1c
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_32
    return-void
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1943
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1945
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1946
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1949
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1950
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1953
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v1

    .line 1954
    .local v1, "ret":Landroid/content/Intent;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1957
    return-object v1

    .line 1954
    .end local v1    # "ret":Landroid/content/Intent;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "disabledMessage"    # Ljava/lang/CharSequence;
    .param p4, "disabledMessageResId"    # I
    .param p5, "userId"    # I

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2006
    move/from16 v4, p5

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2007
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2010
    :try_start_13
    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2012
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 2014
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2018
    if-nez p3, :cond_23

    const/4 v7, 0x0

    :goto_21
    move-object v8, v7

    goto :goto_28

    :cond_23
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_21

    .line 2020
    .local v8, "disabledMessageString":Ljava/lang/String;
    :goto_28
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .line 2020
    .local v7, "i":I
    :goto_2d
    move v13, v7

    .line 2020
    .end local v7    # "i":I
    .local v13, "i":I
    if-ltz v13, :cond_51

    .line 2021
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v14, v6

    .line 2022
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 2023
    goto :goto_4e

    .line 2025
    :cond_44
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, v0

    move-object v7, v14

    move/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 2020
    .end local v14    # "id":Ljava/lang/String;
    :goto_4e
    add-int/lit8 v7, v13, -0x1

    .line 2020
    .end local v13    # "i":I
    .restart local v7    # "i":I
    goto :goto_2d

    .line 2032
    .end local v7    # "i":I
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2033
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v8    # "disabledMessageString":Ljava/lang/String;
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_13 .. :try_end_55} :catchall_5c

    .line 2034
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2036
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2037
    return-void

    .line 2033
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3648
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3649
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3650
    return-void
.end method

.method dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3654
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;

    move-result-object v0

    .line 3656
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpCheckIn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3658
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldCheckInClear()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    goto :goto_36

    .line 3660
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpMain()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3661
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3662
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3664
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpUid()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3665
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpUid(Ljava/io/PrintWriter;)V

    .line 3666
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3668
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpFiles()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3669
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpDumpFiles(Ljava/io/PrintWriter;)V

    .line 3670
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3673
    :cond_36
    :goto_36
    return-void
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    .line 2041
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2042
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2047
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2049
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2052
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2052
    .local v3, "i":I
    :goto_1c
    move v2, v3

    .line 2052
    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_38

    .line 2053
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2054
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2055
    goto :goto_35

    .line 2057
    :cond_32
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V

    .line 2052
    .end local v3    # "id":Ljava/lang/String;
    :goto_35
    add-int/lit8 v3, v2, -0x1

    .line 2052
    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_1c

    .line 2059
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "i":I
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_40

    .line 2060
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2063
    return-void

    .line 2059
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method enforceMaxActivityShortcuts(I)V
    .registers 4
    .param p1, "numShortcuts"    # I

    .line 1609
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, v0, :cond_5

    .line 1612
    return-void

    .line 1610
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1488
    nop

    .line 1489
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 1488
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1490
    .local v0, "publisherRes":Landroid/content/res/Resources;
    if-eqz v0, :cond_25

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    .line 1493
    .local v1, "start":J
    const/16 v3, 0xa

    :try_start_15
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 1495
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1496
    nop

    .line 1497
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .end local v1    # "start":J
    goto :goto_25

    .line 1495
    .restart local v1    # "start":J
    :catchall_20
    move-exception v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v4

    .line 1499
    .end local v1    # "start":J
    :cond_25
    :goto_25
    return-void
.end method

.method forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    .line 1232
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutUser;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1233
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1232
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1235
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 9
    .param p1, "userId"    # I

    .line 3543
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3547
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3548
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 3549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked or not running"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3550
    monitor-exit v0

    return-object v2

    .line 3553
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3554
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_44

    .line 3555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t backup: user not found: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3556
    monitor-exit v0

    return-object v2

    .line 3560
    :cond_44
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$qeFlXbEdNY-s36xnqPf5bs5axg0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$qeFlXbEdNY-s36xnqPf5bs5axg0;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3563
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$bdUeaAkcePSCZBDxdJttl1FPOmI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$bdUeaAkcePSCZBDxdJttl1FPOmI;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 3567
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$5PQDuMeuJAK9L5YMuS3D3xeOzEc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$5PQDuMeuJAK9L5YMuS3D3xeOzEc;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 3570
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3571
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 3577
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_7d

    .line 3579
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    :try_start_62
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_65} :catch_73
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_73
    .catchall {:try_start_62 .. :try_end_65} :catchall_7d

    .line 3584
    nop

    .line 3585
    :try_start_66
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 3586
    .local v2, "payload":[B
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string v5, "backup-1-payload.txt"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3587
    monitor-exit v0

    return-object v2

    .line 3580
    .end local v2    # "payload":[B
    :catch_73
    move-exception v4

    .line 3582
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ShortcutService"

    const-string v6, "Backup failed."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3583
    monitor-exit v0

    return-object v2

    .line 3588
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method getDefaultLauncher(I)Landroid/content/ComponentName;
    .registers 22
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 2378
    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v3

    .line 2379
    .local v3, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v5

    .line 2381
    .local v5, "token":J
    :try_start_c
    iget-object v8, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_a6

    .line 2382
    :try_start_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2384
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 2386
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    .local v9, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v10

    .line 2390
    .local v10, "startGetHomeActivitiesAsUser":J
    iget-object v12, v1, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2391
    invoke-virtual {v12, v9, v2}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v12

    .line 2392
    .local v12, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2394
    const/4 v14, 0x0

    .line 2395
    .local v14, "detected":Landroid/content/ComponentName;
    if-eqz v12, :cond_2e

    .line 2396
    move-object v14, v12

    goto :goto_5b

    .line 2401
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v15

    move-object v14, v15

    .line 2403
    if-eqz v14, :cond_5b

    .line 2404
    invoke-virtual {v1, v14, v2}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v15

    if-eqz v15, :cond_3c

    goto :goto_5b

    .line 2409
    :cond_3c
    const-string v15, "ShortcutService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached launcher "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " no longer exists"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/4 v14, 0x0

    .line 2411
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2416
    :cond_5b
    :goto_5b
    if-nez v14, :cond_97

    .line 2423
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 2425
    .local v7, "size":I
    const/high16 v13, -0x80000000

    .line 2426
    .local v13, "lastPriority":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_65
    move/from16 v15, v16

    .end local v16    # "i":I
    .local v15, "i":I
    if-ge v15, v7, :cond_97

    .line 2427
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v16

    .line 2428
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    .local v18, "user":Lcom/android/server/pm/ShortcutUser;
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_80

    .line 2429
    goto :goto_90

    .line 2435
    :cond_80
    iget v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v2, v13, :cond_85

    .line 2436
    goto :goto_90

    .line 2438
    :cond_85
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object v14, v2

    .line 2439
    iget v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move v0, v2

    .line 2426
    .end local v13    # "lastPriority":I
    .local v0, "lastPriority":I
    move v13, v0

    .end local v0    # "lastPriority":I
    .restart local v13    # "lastPriority":I
    :goto_90
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v18

    move/from16 v2, p1

    goto :goto_65

    .line 2442
    .end local v7    # "size":I
    .end local v13    # "lastPriority":I
    .end local v16    # "i":I
    .end local v18    # "user":Lcom/android/server/pm/ShortcutUser;
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    :cond_97
    move-object/from16 v18, v0

    .end local v0    # "user":Lcom/android/server/pm/ShortcutUser;
    .restart local v18    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v8
    :try_end_9a
    .catchall {:try_start_f .. :try_end_9a} :catchall_a3

    .line 2445
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2446
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2442
    return-object v14

    .line 2443
    .end local v9    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "startGetHomeActivitiesAsUser":J
    .end local v12    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v14    # "detected":Landroid/content/ComponentName;
    .end local v18    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    .line 2445
    :catchall_a6
    move-exception v0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2446
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v0
.end method

.method getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3441
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android.__dummy__"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpPath()Ljava/io/File;
    .registers 4

    .line 4295
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_dump"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2113
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2115
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2118
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2121
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2200
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2202
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2203
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit v0

    return v1

    .line 2204
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4343
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4348
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3231
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3232
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3234
    .local v2, "token":J
    const/4 v4, 0x7

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object v5

    .line 3236
    .local v5, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v6, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1c
    .catchall {:try_start_9 .. :try_end_12} :catchall_1a

    .line 3238
    nop

    .line 3244
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3246
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3238
    return-object v5

    .line 3244
    .end local v5    # "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_1a
    move-exception v5

    goto :goto_2c

    .line 3239
    :catch_1c
    move-exception v5

    .line 3241
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 3242
    const/4 v6, 0x0

    .line 3244
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3246
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3242
    return-object v6

    .line 3244
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3246
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method getLastResetTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1121
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1122
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4373
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4374
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 4375
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4377
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object v2

    .line 4378
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerUserId"    # I
    .param p3, "launcherUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1263
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1264
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 1263
    return-object v0
.end method

.method public getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2127
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2129
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2130
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2132
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$FW40Da1L1EZJ_usDX0ew1qRMmtc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$FW40Da1L1EZJ_usDX0ew1qRMmtc;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2135
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getMaxActivityShortcuts()I
    .registers 2

    .line 1618
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxIconDimensionForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4338
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2169
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxShortcutsForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4323
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4328
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return v0
.end method

.method getNextResetTimeLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1128
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1129
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 1223
    .local v0, "ret":Lcom/android/server/pm/ShortcutNonPersistentUser;
    if-nez v0, :cond_15

    .line 1224
    new-instance v1, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1225
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    :cond_15
    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4363
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4364
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 4365
    .local v1, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_c

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4367
    :cond_c
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4368
    .end local v1    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4353
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 4355
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4357
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object v2

    .line 4358
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1253
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 1254
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    .line 1255
    return-object v0
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1245
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    return-object v0
.end method

.method getParentOrSelfUserId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 3516
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2141
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2143
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2144
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2146
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2149
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2192
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2195
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2174
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2176
    nop

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2176
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2179
    .local v0, "unlimited":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2180
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2183
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v4

    sub-int/2addr v3, v4

    monitor-exit v1

    return v3

    .line 2184
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v2
.end method

.method getResetIntervalForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4333
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4383
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object v0
.end method

.method getShortcutsForTest()Landroid/util/SparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    .line 4318
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method getStatStartTime()J
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .registers 4
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 4313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "bitmaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final getUserFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 955
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcuts.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1201
    const-string v0, "User still locked"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1204
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    .line 1205
    .local v0, "userPackages":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_29

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1207
    if-nez v0, :cond_21

    .line 1208
    new-instance v1, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1210
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    .line 1215
    :cond_29
    return-object v0
.end method

.method handleLocaleChanged()V
    .registers 5

    .line 2859
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2861
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2862
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1a

    .line 2864
    .local v1, "token":J
    :try_start_a
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 2866
    :try_start_f
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2867
    nop

    .line 2868
    .end local v1    # "token":J
    monitor-exit v0

    .line 2869
    return-void

    .line 2866
    .restart local v1    # "token":J
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v3

    .line 2868
    .end local v1    # "token":J
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleOnUidStateChanged(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 525
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 526
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 528
    :cond_17
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method handleStopUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 639
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 640
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 641
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    .line 642
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_15

    .line 643
    return-void

    .line 641
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v2

    .line 642
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw v1
.end method

.method handleUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 612
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 613
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 622
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 623
    .local v0, "start":J
    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    .line 629
    return-void

    .line 613
    .end local v0    # "start":J
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method hasShortcutHostPermission(Ljava/lang/String;III)Z
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2303
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2304
    const/4 v0, 0x1

    return v0

    .line 2306
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2308
    .local v0, "start":J
    const/4 v2, 0x4

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2310
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2308
    return v3

    .line 2310
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2346
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2347
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2349
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2352
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Landroid/content/ComponentName;

    move-result-object v2

    .line 2353
    .local v2, "cached":Landroid/content/ComponentName;
    if-eqz v2, :cond_1d

    .line 2354
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2355
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 2360
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 2363
    .local v3, "detected":Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 2364
    if-eqz v3, :cond_30

    .line 2368
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 2371
    :cond_30
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 2373
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v2    # "cached":Landroid/content/ComponentName;
    .end local v3    # "detected":Landroid/content/ComponentName;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3178
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3179
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3181
    .local v2, "token":J
    const/4 v4, 0x3

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2000

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3187
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3189
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3181
    return-object v5

    .line 3187
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 3182
    :catch_1b
    move-exception v5

    .line 3184
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3185
    const/4 v6, 0x0

    .line 3187
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3189
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3185
    return-object v6

    .line 3187
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3189
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectBinderCallingPid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4244
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4239
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .registers 2

    .line 4265
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectDipToPixel(I)I
    .registers 5
    .param p1, "dip"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 740
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 741
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 740
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method injectElapsedRealtime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3209
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3210
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3212
    .local v2, "token":J
    const/4 v4, 0x6

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2080

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3219
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3221
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3212
    return-object v5

    .line 3219
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 3214
    :catch_1b
    move-exception v5

    .line 3216
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3217
    const/4 v6, 0x0

    .line 3219
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3221
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3217
    return-object v6

    .line 3219
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3221
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3404
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3406
    .local v0, "start":J
    nop

    .line 3407
    const/16 v2, 0xb

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 3408
    .local v3, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    goto :goto_24

    :cond_17
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_28

    .line 3410
    :goto_24
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3408
    return-object v4

    .line 3410
    .end local v3    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_28
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 488
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3453
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3455
    .local v0, "start":J
    const/16 v2, 0xc

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 3457
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3455
    return-object v3

    .line 3457
    :catchall_13
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3114
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v3, 0xc2000

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 3120
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3114
    return v2

    .line 3120
    :catchall_11
    move-exception v2

    goto :goto_20

    .line 3115
    :catch_13
    move-exception v2

    .line 3117
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v3, "ShortcutService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 3118
    const/4 v3, -0x1

    .line 3120
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3118
    return v3

    .line 3120
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3257
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 3258
    const v1, 0xc2000

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3259
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_10

    .line 3260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3262
    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 9
    .param p1, "launcherPackageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I
    .param p3, "requestType"    # I

    .line 3484
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 3486
    const-string v0, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_b

    .line 3487
    :cond_9
    const-string v0, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 3489
    .local v0, "action":Ljava/lang/String;
    :goto_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3490
    .local v1, "confirmIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v2

    .line 3492
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3493
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 3495
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_30
    const/4 v3, 0x0

    return-object v3
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3336
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3337
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3339
    .local v2, "token":J
    const/16 v4, 0x9

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_1d
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 3345
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3347
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3339
    return-object v5

    .line 3345
    :catchall_1b
    move-exception v5

    goto :goto_41

    .line 3341
    :catch_1d
    move-exception v5

    .line 3342
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1e
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    .line 3343
    const/4 v6, 0x0

    .line 3345
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3347
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3343
    return-object v6

    .line 3345
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3347
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectHasAccessShortcutsPermission(II)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2329
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3467
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3469
    .local v0, "start":J
    const/16 v2, 0xd

    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 3470
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 3472
    :goto_1c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3469
    return v3

    .line 3472
    :catchall_20
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method injectIsLowRamDevice()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4300
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3420
    .local v0, "start":J
    const/4 v2, 0x0

    const/16 v3, 0xc

    if-nez p1, :cond_16

    .line 3421
    :try_start_9
    const-string/jumbo v4, "null activity detected"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    .line 3422
    nop

    .line 3431
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3422
    return v2

    .line 3431
    :catchall_14
    move-exception v2

    goto :goto_42

    .line 3424
    :cond_16
    :try_start_16
    const-string v4, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_14

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    .line 3425
    nop

    .line 3431
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3425
    return v5

    .line 3427
    :cond_28
    nop

    .line 3428
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3427
    invoke-virtual {p0, v4, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 3429
    .local v4, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_14

    if-lez v6, :cond_3d

    .line 3431
    move v2, v5

    goto :goto_3e

    .line 3429
    :cond_3d
    nop

    .line 3431
    :goto_3e
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3429
    return v2

    .line 3431
    .end local v4    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_42
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v2
.end method

.method injectIsSafeModeEnabled()Z
    .registers 5

    .line 3499
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3501
    .local v0, "token":J
    :try_start_4
    const-string/jumbo v2, "window"

    .line 3502
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 3503
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1c
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3507
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3501
    return v2

    .line 3507
    :catchall_17
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 3504
    :catch_1c
    move-exception v2

    .line 3505
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 3507
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3505
    return v3
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3143
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3145
    .local v2, "token":J
    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v7, 0xc2000

    .line 3147
    if-eqz p3, :cond_14

    const/high16 v8, 0x8000000

    goto :goto_15

    :cond_14
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v7, v8

    .line 3145
    invoke-interface {v6, p1, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_29
    .catchall {:try_start_a .. :try_end_1a} :catchall_27

    .line 3154
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3156
    nop

    .line 3157
    if-eqz p3, :cond_22

    .line 3156
    move v4, v5

    goto :goto_23

    .line 3157
    :cond_22
    nop

    .line 3156
    :goto_23
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3145
    return-object v6

    .line 3154
    :catchall_27
    move-exception v6

    goto :goto_3f

    .line 3149
    :catch_29
    move-exception v6

    .line 3151
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v7, "ShortcutService"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 3152
    const/4 v7, 0x0

    .line 3154
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3156
    nop

    .line 3157
    if-eqz p3, :cond_3a

    .line 3156
    move v4, v5

    goto :goto_3b

    .line 3157
    :cond_3a
    nop

    .line 3156
    :goto_3b
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3152
    return-object v7

    .line 3154
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3f
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3156
    nop

    .line 3157
    if-eqz p3, :cond_47

    .line 3156
    move v4, v5

    goto :goto_48

    .line 3157
    :cond_47
    nop

    .line 3156
    :goto_48
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v6
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1597
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1598
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4306
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4309
    goto :goto_b

    .line 4308
    :catch_a
    move-exception v0

    .line 4310
    :goto_b
    return-void
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4260
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4261
    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1601
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1602
    return-void
.end method

.method injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "extras"    # Landroid/content/Intent;

    .line 3520
    if-nez p1, :cond_3

    .line 3521
    return-void

    .line 3524
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_d} :catch_e

    .line 3528
    goto :goto_17

    .line 3526
    :catch_e
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "ShortcutService"

    const-string/jumbo v2, "sendIntent failed()."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3529
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_17
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 734
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shortcut_manager_constants"

    .line 733
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4392
    const/4 v0, 0x0

    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4286
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4291
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1447
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1451
    return-void

    .line 1448
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icon resource must reside in shortcut owner package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "key"    # Ljava/lang/String;

    .line 3331
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3445
    if-eqz p1, :cond_10

    const-string v0, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isEphemeralApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2242
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2243
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2242
    return v2

    .line 2245
    :catchall_e
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method isUidForegroundLocked(I)Z
    .registers 5
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 537
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 540
    return v0

    .line 543
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 544
    return v0

    .line 548
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    return v0
.end method

.method protected isUserUnlockedL(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1170
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1172
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1174
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1180
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0

    .line 1174
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method logDurationStat(IJ)V
    .registers 5
    .param p1, "statId"    # I
    .param p2, "start"    # J

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 484
    return-void
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2286
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    .line 2288
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2289
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2291
    monitor-exit v0

    return-void

    .line 2294
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2295
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    .line 2296
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 2297
    monitor-exit v0

    .line 2298
    return-void

    .line 2297
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 596
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_14

    .line 598
    :cond_10
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    .line 599
    nop

    .line 604
    :goto_14
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    move-object v9, p0

    .line 3994
    invoke-direct {v9}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    .line 3996
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    move-wide v10, v0

    .line 3998
    .local v10, "token":J
    :try_start_9
    new-instance v1, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    const/4 v0, 0x0

    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_29

    .line 4000
    .local v1, "status":I
    move-object/from16 v2, p6

    :try_start_1f
    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    .line 4002
    .end local v1    # "status":I
    invoke-virtual {v9, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4003
    nop

    .line 4004
    return-void

    .line 4002
    :catchall_27
    move-exception v0

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object/from16 v2, p6

    :goto_2c
    invoke-virtual {v9, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v0
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    .line 1372
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1373
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1374
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1375
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1378
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_37

    .line 1376
    :cond_20
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1381
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, "baseName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1383
    .local v2, "suffix":I
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_49

    move-object v4, v1

    goto :goto_5d

    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1384
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1385
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1389
    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {v5, v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object v5

    .line 1382
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_40
.end method

.method packageShortcutsChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1626
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 1627
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 1628
    return-void
.end method

.method queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "exportedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3377
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3379
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 3380
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xc2000

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3c

    .line 3383
    .local v2, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3384
    nop

    .line 3383
    nop

    .line 3385
    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_39

    .line 3389
    :cond_1f
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 3390
    sget-object v3, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v3

    .line 3392
    :cond_31
    if-eqz p3, :cond_38

    .line 3393
    sget-object v3, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3395
    :cond_38
    return-object v2

    .line 3386
    :cond_39
    :goto_39
    sget-object v3, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v3

    .line 3383
    .end local v2    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_3c
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3366
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3367
    if-eqz p3, :cond_e

    .line 3368
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3370
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2097
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2103
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 2104
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_19

    .line 2105
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2107
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2108
    return-void

    .line 2104
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    .line 2068
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2069
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2072
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2074
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2076
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2079
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2079
    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_37

    .line 2080
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2081
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2082
    goto :goto_34

    .line 2084
    :cond_31
    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 2079
    .end local v4    # "id":Ljava/lang/String;
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 2088
    .end local v3    # "i":I
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2089
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_42

    .line 2090
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2093
    return-void

    .line 2089
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method removeIconLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1270
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 1271
    return-void
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2209
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2211
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2219
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2221
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2223
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2224
    const-string v2, "ShortcutService"

    const-string/jumbo v3, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    monitor-exit v0

    return-void

    .line 2228
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_41

    .line 2230
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2232
    .local v0, "token":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 2234
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2235
    nop

    .line 2236
    return-void

    .line 2234
    :catchall_3c
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 2228
    .end local v0    # "token":J
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "resultIntent"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I

    .line 1935
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1937
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method resetAllThrottlingInner()V
    .registers 4

    .line 2274
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 2276
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 2277
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2278
    const-string v0, "ShortcutService"

    const-string v1, "ShortcutManager: throttling counter reset for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void

    .line 2276
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public resetThrottling()V
    .registers 2

    .line 2255
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    .line 2257
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 2258
    return-void
.end method

.method resetThrottlingInner(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 2261
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2262
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2263
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked or not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    monitor-exit v0

    return-void

    .line 2267
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V

    .line 2268
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_48

    .line 2269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2270
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return-void

    .line 2268
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method saveBaseStateLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 875
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 880
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 882
    .local v2, "outs":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 885
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 886
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 887
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 888
    const-string/jumbo v4, "root"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    const-string/jumbo v4, "last_reset_time"

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 894
    const-string/jumbo v4, "root"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 898
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3b} :catch_3c

    .line 902
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_5a

    .line 899
    :catch_3c
    move-exception v1

    .line 900
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 903
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5a
    return-void
.end method

.method saveDirtyInfo()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_31

    .line 1103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_27

    .line 1104
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1105
    .local v2, "userId":I
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_21

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    goto :goto_24

    .line 1108
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 1103
    .end local v2    # "userId":I
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1111
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1112
    monitor-exit v0

    .line 1115
    goto :goto_37

    .line 1112
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_31

    .line 1113
    :catch_31
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 11
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1395
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_78

    .line 1399
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 1402
    .local v0, "token":J
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1404
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_73

    .line 1405
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-nez v2, :cond_1e

    .line 1439
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1406
    return-void

    .line 1408
    :cond_1e
    :try_start_1e
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_73

    .line 1411
    .local v3, "maxIconDimension":I
    :try_start_20
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_49

    packed-switch v4, :pswitch_data_7a

    .line 1430
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1413
    :pswitch_2f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    .line 1415
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 1416
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_6e

    .line 1436
    :try_start_3d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_73

    .line 1439
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1417
    return-void

    .line 1420
    :pswitch_44
    :try_start_44
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1421
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5b

    .line 1423
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_49
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1424
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 1425
    nop

    .line 1430
    :goto_5b
    nop

    .line 1432
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {v5, p1, v3, v6, v7}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_6e

    .line 1436
    :try_start_65
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_73

    .line 1437
    nop

    .line 1439
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v3    # "maxIconDimension":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1440
    nop

    .line 1441
    return-void

    .line 1436
    .restart local v2    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v3    # "maxIconDimension":I
    :catchall_6e
    move-exception v4

    :try_start_6f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    throw v4
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 1439
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v3    # "maxIconDimension":I
    :catchall_73
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 1396
    .end local v0    # "token":J
    :cond_78
    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_2f
    .end packed-switch
.end method

.method scheduleSaveUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1077
    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 1739
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1741
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1742
    .local v0, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1743
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1745
    .local v1, "size":I
    nop

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v3

    .line 1745
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v2

    .line 1748
    .local v2, "unlimited":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1749
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1751
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 1753
    .local v4, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1755
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1757
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1760
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v7

    if-nez v7, :cond_38

    .line 1761
    monitor-exit v3

    return v6

    .line 1765
    :cond_38
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1766
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1768
    move v7, v6

    .local v7, "i":I
    :goto_3f
    if-ge v7, v1, :cond_4d

    .line 1769
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1768
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 1773
    .end local v7    # "i":I
    :cond_4d
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 1776
    nop

    .local v6, "i":I
    :goto_51
    if-ge v6, v1, :cond_5f

    .line 1777
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1778
    .local v7, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4, v7}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1776
    .end local v7    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 1782
    .end local v6    # "i":I
    :cond_5f
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1783
    .end local v4    # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_6a

    .line 1784
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1788
    return v5

    .line 1783
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2452
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2453
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    monitor-exit v0

    .line 2455
    return-void

    .line 2454
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3534
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method throwIfUserLockedL(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1185
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1188
    return-void

    .line 1186
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 12
    .param p1, "config"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 686
    const/4 v0, 0x1

    .line 688
    .local v0, "result":Z
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 690
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_8
    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    .line 696
    goto :goto_15

    .line 691
    :catch_c
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    const/4 v0, 0x0

    .line 698
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_15
    const-string/jumbo v2, "save_delay_ms"

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 701
    const-wide/16 v4, 0x1

    const-string/jumbo v2, "reset_interval_sec"

    const-wide/32 v6, 0x15180

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 705
    const-string/jumbo v2, "max_updates_per_interval"

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 708
    const-string/jumbo v2, "max_shortcuts"

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 711
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 712
    const-string/jumbo v3, "max_icon_dimension_dp_lowram"

    const-wide/16 v4, 0x30

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_77

    .line 715
    :cond_6d
    const-string/jumbo v3, "max_icon_dimension_dp"

    const-wide/16 v4, 0x60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 711
    :goto_77
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 719
    .local v2, "iconDimensionDp":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 721
    const-string v3, "icon_format"

    sget-object v4, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 722
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-static {v3}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 724
    const-string v3, "icon_quality"

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 728
    return v0
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1794
    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 1797
    .local v4, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1798
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1800
    .local v5, "size":I
    nop

    .line 1801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v6

    .line 1800
    invoke-virtual {v1, v0, v6}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v6

    .line 1803
    .local v6, "unlimited":Z
    iget-object v7, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1804
    :try_start_24
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1806
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 1808
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v8, 0x1

    invoke-virtual {v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1813
    const/4 v9, 0x2

    invoke-virtual {v0, v4, v9}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1816
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_3c

    .line 1817
    monitor-exit v7

    return v10

    .line 1821
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1822
    invoke-direct {v1, v4}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1824
    move v9, v10

    .local v9, "i":I
    :goto_43
    if-ge v9, v5, :cond_ab

    .line 1825
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 1826
    .local v11, "source":Landroid/content/pm/ShortcutInfo;
    invoke-direct {v1, v11, v8}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1828
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v12

    .line 1831
    .local v12, "target":Landroid/content/pm/ShortcutInfo;
    if-eqz v12, :cond_a8

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v13

    if-nez v13, :cond_5f

    .line 1832
    goto :goto_a8

    .line 1835
    :cond_5f
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v13

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v14

    if-eq v13, v14, :cond_70

    .line 1836
    const-string v13, "ShortcutService"

    const-string v14, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_70
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v13

    if-eqz v13, :cond_80

    .line 1843
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1844
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1847
    :cond_80
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-eqz v13, :cond_88

    move v13, v8

    goto :goto_89

    :cond_88
    move v13, v10

    .line 1848
    .local v13, "replacingIcon":Z
    :goto_89
    if-eqz v13, :cond_8e

    .line 1849
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1853
    :cond_8e
    invoke-virtual {v12, v11}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 1854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1856
    if-eqz v13, :cond_9d

    .line 1857
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1862
    :cond_9d
    if-nez v13, :cond_a5

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 1863
    :cond_a5
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 1824
    .end local v11    # "source":Landroid/content/pm/ShortcutInfo;
    .end local v12    # "target":Landroid/content/pm/ShortcutInfo;
    .end local v13    # "replacingIcon":Z
    :cond_a8
    :goto_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 1868
    .end local v9    # "i":I
    :cond_ab
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1869
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v7
    :try_end_af
    .catchall {:try_start_24 .. :try_end_af} :catchall_b6

    .line 1870
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1874
    return v8

    .line 1869
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v7
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1699
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1700
    return-void
.end method

.method final verifyStates()V
    .registers 2

    .line 4400
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4401
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4403
    :cond_9
    return-void
.end method

.method waitForBitmapSavesForTest()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4417
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 4419
    monitor-exit v0

    .line 4420
    return-void

    .line 4419
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method final wtf(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 4269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4270
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 4274
    if-nez p2, :cond_a

    .line 4275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 4277
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4278
    :try_start_d
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 4279
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 4280
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_23

    .line 4281
    const-string v0, "ShortcutService"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4282
    return-void

    .line 4280
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method
