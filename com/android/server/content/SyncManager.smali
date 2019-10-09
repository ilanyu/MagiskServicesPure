.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ENABLE_SUSPICIOUS_CHECK:Z

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x15

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID:I = 0x1

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"

.field private static sInstance:Lcom/android/server/content/SyncManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "SyncManager.class"
    .end annotation
.end field

.field private static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private volatile mJobServiceReady:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private mSyncJobService:Lcom/android/server/content/SyncJobService;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 161
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 167
    const-string/jumbo v0, "sync.local_sync_delay"

    .line 168
    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 2048
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2078
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    .line 250
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 304
    new-instance v1, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    new-instance v1, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    new-instance v1, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    new-instance v1, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v1, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    .line 478
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    .line 591
    const-class v1, Lcom/android/server/content/SyncManager;

    monitor-enter v1

    .line 592
    :try_start_4f
    sget-object v2, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_56

    .line 593
    sput-object p0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_5d

    .line 595
    :cond_56
    const-string v2, "SyncManager"

    const-string v3, "SyncManager instantiated multiple times"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_260

    .line 601
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 603
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 605
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 606
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 607
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 616
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 632
    new-instance v1, Landroid/content/SyncAdaptersCache;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 634
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SyncManager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 635
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 636
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 638
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v2, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 650
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    .line 651
    new-instance v1, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 653
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    if-nez p2, :cond_f9

    .line 657
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 658
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 659
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    :cond_f9
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 663
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 667
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 668
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 671
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 677
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 678
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 680
    const/4 v2, 0x0

    if-nez p2, :cond_15a

    .line 681
    const-string/jumbo v3, "notification"

    .line 682
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_15c

    .line 684
    :cond_15a
    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 686
    :goto_15c
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 687
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 688
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 689
    const-class v3, Landroid/accounts/AccountManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 690
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 692
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    new-instance v4, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;

    invoke-direct {v4, p0}, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 702
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 709
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "SyncManagerHandleSyncAlarm"

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 711
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 718
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "SyncLoopWakeLock"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 720
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 722
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 723
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v3, :cond_1fe

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 725
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object v2, v4

    .line 736
    .local v2, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    monitor-enter v4

    .line 737
    :try_start_1e0
    const-string v6, "device_provisioned"

    .line 738
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 737
    invoke-virtual {v3, v6, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 744
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 745
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v6, :cond_1f9

    .line 746
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 748
    :cond_1f9
    monitor-exit v4

    goto :goto_1fe

    :catchall_1fb
    move-exception v0

    monitor-exit v4
    :try_end_1fd
    .catchall {:try_start_1e0 .. :try_end_1fd} :catchall_1fb

    throw v0

    .line 753
    .end local v2    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_1fe
    :goto_1fe
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/server/content/SyncManagerInjector;->registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V

    .line 755
    if-nez p2, :cond_217

    .line 757
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 767
    :cond_217
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/content/SyncJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v2, "startServiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "messenger"

    new-instance v4, Landroid/os/Messenger;

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {v4, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 769
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v4, p0, v2}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 784
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync manager initialized: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 785
    return-void

    .line 597
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "startServiceIntent":Landroid/content/Intent;
    :catchall_260
    move-exception v0

    :try_start_261
    monitor-exit v1
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1676(Lcom/android/server/content/SyncManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "x2"    # Landroid/content/SyncResult;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncJobService;

    .line 155
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;

    .line 155
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/content/SyncManager;)Landroid/content/pm/PackageManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/content/SyncManager;I)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/content/SyncResult;
    .param p2, "x2"    # Lcom/android/server/content/SyncOperation;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # J

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object v0
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1205
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1206
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1205
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1207
    return v1

    .line 1213
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x100000

    .line 1214
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1213
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 1215
    return v1

    .line 1216
    :catch_1e
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 7
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 4213
    if-nez p1, :cond_a

    .line 4214
    const-string v0, "SyncManager"

    const-string v1, "Null sync operation detected."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    return-void

    .line 4217
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_26

    .line 4218
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4220
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4221
    return-void
.end method

.method private cleanupJobs()V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 517
    return-void
.end method

.method private clearAllBackoffs(Ljava/lang/String;)V
    .registers 3
    .param p1, "why"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 416
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 12
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1400
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1401
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    .line 1402
    return-void

    .line 1404
    :cond_23
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1405
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing backoffs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_42
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1411
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 7
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 364
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_17

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 365
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 366
    const/4 v0, 0x1

    .line 367
    goto :goto_1a

    .line 363
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    return v0
.end method

.method private static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2086
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 2087
    .local v0, "ret":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2088
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v0, v0, 0x1

    .line 2089
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_17
    goto :goto_5

    .line 2090
    :cond_18
    return v0
.end method

.method private doDatabaseCleanup()V
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 385
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1c

    .end local v1    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 386
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 389
    .local v2, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 390
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "accountsForUser":[Landroid/accounts/Account;
    goto :goto_b

    .line 391
    :cond_34
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2432
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2433
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_26

    .line 2434
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2435
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2437
    :cond_26
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2438
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_4c

    .line 2439
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2440
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2442
    :cond_4c
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2443
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2688
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    .line 2689
    .local v0, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v0, :cond_9f

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_9f

    .line 2690
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2691
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2693
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2698
    .local v1, "today":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_24
    const/4 v3, 0x6

    if-gt v2, v3, :cond_49

    array-length v4, v0

    if-ge v2, v4, :cond_49

    .line 2699
    aget-object v4, v0, v2

    .line 2700
    .local v4, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v4, :cond_2f

    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    goto :goto_49

    .line 2701
    .restart local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2f
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    .line 2702
    .local v5, "delta":I
    if-le v5, v3, :cond_36

    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v5    # "delta":I
    goto :goto_49

    .line 2704
    .restart local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v5    # "delta":I
    :cond_36
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2705
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2698
    .end local v5    # "delta":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2709
    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_49
    :goto_49
    move v4, v2

    move v2, v1

    .line 2710
    .local v2, "weekDay":I
    .local v4, "i":I
    :goto_4b
    array-length v5, v0

    if-ge v4, v5, :cond_9f

    .line 2711
    const/4 v5, 0x0

    .line 2712
    .local v5, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v2, v2, -0x7

    .line 2713
    :goto_51
    array-length v6, v0

    if-ge v4, v6, :cond_88

    .line 2714
    aget-object v6, v0, v4

    .line 2715
    .local v6, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v6, :cond_5a

    .line 2716
    array-length v4, v0

    .line 2717
    goto :goto_88

    .line 2719
    :cond_5a
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v2, v7

    .line 2720
    .local v7, "delta":I
    if-le v7, v3, :cond_61

    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v7    # "delta":I
    goto :goto_88

    .line 2721
    .restart local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v7    # "delta":I
    :cond_61
    add-int/lit8 v4, v4, 0x1

    .line 2723
    if-nez v5, :cond_6b

    .line 2724
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    move-object v5, v8

    .line 2726
    :cond_6b
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2727
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2728
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2729
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2730
    .end local v7    # "delta":I
    goto :goto_51

    .line 2731
    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_88
    :goto_88
    if-eqz v5, :cond_9e

    .line 2732
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v2

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2735
    .end local v5    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_9e
    goto :goto_4b

    .line 2737
    .end local v1    # "today":I
    .end local v2    # "weekDay":I
    .end local v4    # "i":I
    :cond_9f
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .registers 71
    .param p1, "pw"    # Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    .line 2451
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2452
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    .line 2453
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v2, :cond_590

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_590

    .line 2454
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2455
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v4, 0x0

    .line 2456
    .local v4, "totalElapsedTime":J
    const-wide/16 v6, 0x0

    .line 2457
    .local v6, "totalTimes":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2459
    .local v8, "N":I
    const/4 v9, 0x0

    .line 2460
    .local v9, "maxAuthority":I
    const/4 v10, 0x0

    .line 2461
    .local v10, "maxAccount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_24
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_df

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2462
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v15, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2463
    invoke-virtual {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v14

    .line 2466
    .local v14, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v14, :cond_6d

    .line 2467
    iget-object v15, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2468
    .local v15, "authorityName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " u"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "accountKey":Ljava/lang/String;
    goto :goto_73

    .line 2472
    .end local v11    # "accountKey":Ljava/lang/String;
    .end local v15    # "authorityName":Ljava/lang/String;
    :cond_6d
    move-object/from16 v17, v11

    const-string v15, "Unknown"

    .line 2473
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v11, "Unknown"

    .line 2476
    .restart local v11    # "accountKey":Ljava/lang/String;
    :goto_73
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 2477
    .local v13, "length":I
    if-le v13, v9, :cond_7a

    .line 2478
    move v9, v13

    .line 2480
    :cond_7a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    .line 2481
    if-le v13, v10, :cond_81

    .line 2482
    move v10, v13

    .line 2485
    :cond_81
    move/from16 v18, v9

    move/from16 v19, v10

    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2486
    .end local v10    # "maxAccount":I
    .local v9, "elapsedTime":J
    .local v18, "maxAuthority":I
    .local v19, "maxAccount":I
    add-long/2addr v4, v9

    .line 2487
    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 2488
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2489
    .local v20, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-wide/from16 v22, v4

    const/4 v4, 0x0

    .line 2489
    .end local v4    # "totalElapsedTime":J
    .local v22, "totalElapsedTime":J
    if-nez v20, :cond_a0

    .line 2490
    new-instance v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v5, v15, v4}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 2491
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v5, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    .line 2493
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_a0
    move-object/from16 v5, v20

    .line 2493
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_a2
    move-wide/from16 v24, v6

    iget-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2493
    .end local v6    # "totalTimes":J
    .local v24, "totalTimes":J
    add-long/2addr v6, v9

    iput-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2494
    iget v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2495
    iget-object v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2496
    .local v6, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2497
    .local v7, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_c5

    .line 2498
    move-object/from16 v26, v5

    new-instance v5, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2498
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v26, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-direct {v5, v11, v4}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    move-object v7, v5

    .line 2499
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 2501
    .end local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_c5
    move-object/from16 v26, v5

    .line 2501
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_c7
    iget-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v4, v9

    iput-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2502
    iget v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2504
    .end local v6    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v7    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v9    # "elapsedTime":J
    .end local v11    # "accountKey":Ljava/lang/String;
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "length":I
    .end local v14    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    nop

    .line 2461
    move-object/from16 v11, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    goto/16 :goto_24

    .line 2506
    .end local v18    # "maxAuthority":I
    .end local v19    # "maxAccount":I
    .end local v22    # "totalElapsedTime":J
    .end local v24    # "totalTimes":J
    .restart local v4    # "totalElapsedTime":J
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_df
    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    const/4 v14, 0x4

    const-wide/16 v17, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-lez v13, :cond_28e

    .line 2507
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2508
    const-string v13, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    new-array v15, v11, [Ljava/lang/Object;

    .line 2510
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v15, v12

    div-long v11, v4, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v15, v12

    .line 2508
    invoke-virtual {v1, v13, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2512
    new-instance v11, Ljava/util/ArrayList;

    .line 2513
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2514
    .local v11, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v12, Lcom/android/server/content/SyncManager$16;

    invoke-direct {v12, v0}, Lcom/android/server/content/SyncManager$16;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2526
    add-int/lit8 v12, v10, 0x3

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2527
    .local v12, "maxLength":I
    add-int v13, v14, v12

    const/4 v15, 0x2

    add-int/2addr v13, v15

    add-int/lit8 v13, v13, 0xa

    add-int/lit8 v13, v13, 0xb

    .line 2528
    .local v13, "padLength":I
    new-array v15, v13, [C

    .line 2529
    .local v15, "chars":[C
    const/16 v14, 0x2d

    invoke-static {v15, v14}, Ljava/util/Arrays;->fill([CC)V

    .line 2530
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    .line 2532
    .local v14, "separator":Ljava/lang/String;
    move-object/from16 v27, v3

    const-string v3, "  %%-%ds: %%-9s  %%-11s\n"

    .line 2532
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v27, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move/from16 v28, v13

    move-object/from16 v29, v15

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    .line 2532
    .end local v13    # "padLength":I
    .end local v15    # "chars":[C
    .local v28, "padLength":I
    .local v29, "chars":[C
    add-int/lit8 v13, v12, 0x2

    .line 2533
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v19, 0x0

    aput-object v13, v15, v19

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2534
    .local v3, "authorityFormat":Ljava/lang/String;
    const-string v13, "    %%-%ds:   %%-9s  %%-11s\n"

    move-object/from16 v30, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    .line 2535
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v30, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v19

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2537
    .local v2, "accountFormat":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_15f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_284

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2539
    .local v15, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-object/from16 v31, v11

    iget-object v11, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2545
    .local v11, "name":Ljava/lang/String;
    .local v31, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move/from16 v32, v12

    move-object/from16 v33, v13

    iget-wide v12, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2546
    .local v12, "elapsedTime":J
    .local v32, "maxLength":I
    move/from16 v34, v8

    iget v8, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2547
    .local v8, "times":I
    .local v34, "N":I
    move/from16 v35, v9

    const-string v9, "%ds/%d%%"

    .line 2547
    .end local v9    # "maxAuthority":I
    .local v35, "maxAuthority":I
    move/from16 v36, v10

    move-object/from16 v37, v14

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    .line 2547
    .end local v10    # "maxAccount":I
    .end local v14    # "separator":Ljava/lang/String;
    .local v36, "maxAccount":I
    .local v37, "separator":Ljava/lang/String;
    div-long v0, v12, v17

    .line 2548
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    const-wide/16 v0, 0x64

    mul-long v19, v12, v0

    div-long v0, v19, v4

    .line 2549
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v14, v1

    .line 2547
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2550
    .local v0, "timeStr":Ljava/lang/String;
    const-string v1, "%d/%d%%"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 2551
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v10, v14

    mul-int/lit8 v9, v8, 0x64

    move/from16 v38, v8

    int-to-long v8, v9

    .line 2551
    .end local v8    # "times":I
    .local v38, "times":I
    div-long/2addr v8, v6

    .line 2552
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v10, v9

    .line 2550
    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2553
    .local v1, "timesStr":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v10, v8

    aput-object v1, v10, v9

    const/4 v8, 0x2

    aput-object v0, v10, v8

    move-object/from16 v8, p1

    invoke-virtual {v8, v3, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2555
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2557
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2558
    .local v9, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v10, Lcom/android/server/content/SyncManager$17;

    move-object/from16 v14, p0

    invoke-direct {v10, v14}, Lcom/android/server/content/SyncManager$17;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2569
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1e4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_260

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v39, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2570
    .local v0, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .local v39, "timeStr":Ljava/lang/String;
    iget-wide v12, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2571
    move-object/from16 v40, v1

    iget v1, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2572
    .end local v38    # "times":I
    .local v1, "times":I
    .local v40, "timesStr":Ljava/lang/String;
    move-object/from16 v41, v3

    const-string v3, "%ds/%d%%"

    .line 2572
    .end local v3    # "authorityFormat":Ljava/lang/String;
    .local v41, "authorityFormat":Ljava/lang/String;
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 2572
    .end local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    move-object/from16 v44, v15

    div-long v14, v12, v17

    .line 2573
    .end local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v44, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v10, v14

    const-wide/16 v14, 0x64

    mul-long v19, v12, v14

    div-long v14, v19, v4

    .line 2574
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v10, v14

    .line 2572
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2575
    .end local v39    # "timeStr":Ljava/lang/String;
    .local v3, "timeStr":Ljava/lang/String;
    const-string v9, "%d/%d%%"

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    .line 2576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v14, v15

    mul-int/lit8 v10, v1, 0x64

    move-wide/from16 v45, v4

    int-to-long v4, v10

    .line 2576
    .end local v4    # "totalElapsedTime":J
    .local v45, "totalElapsedTime":J
    div-long/2addr v4, v6

    .line 2577
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    .line 2575
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2578
    .end local v40    # "timesStr":Ljava/lang/String;
    .local v4, "timesStr":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v10, v14

    aput-object v4, v10, v5

    const/4 v5, 0x2

    aput-object v3, v10, v5

    invoke-virtual {v8, v2, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2579
    .end local v0    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    nop

    .line 2569
    move/from16 v38, v1

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v3, v41

    move-object/from16 v9, v42

    move-object/from16 v10, v43

    move-object/from16 v15, v44

    move-wide/from16 v4, v45

    move-object/from16 v14, p0

    goto :goto_1e4

    .line 2580
    .end local v41    # "authorityFormat":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v45    # "totalElapsedTime":J
    .local v0, "timeStr":Ljava/lang/String;
    .local v1, "timesStr":Ljava/lang/String;
    .local v3, "authorityFormat":Ljava/lang/String;
    .local v4, "totalElapsedTime":J
    .restart local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v38    # "times":I
    :cond_260
    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move-wide/from16 v45, v4

    move-object/from16 v42, v9

    move-object/from16 v44, v15

    .line 2580
    .end local v0    # "timeStr":Ljava/lang/String;
    .end local v1    # "timesStr":Ljava/lang/String;
    .end local v3    # "authorityFormat":Ljava/lang/String;
    .end local v4    # "totalElapsedTime":J
    .end local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v39    # "timeStr":Ljava/lang/String;
    .restart local v40    # "timesStr":Ljava/lang/String;
    .restart local v41    # "authorityFormat":Ljava/lang/String;
    .restart local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v45    # "totalElapsedTime":J
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elapsedTime":J
    .end local v37    # "separator":Ljava/lang/String;
    .end local v38    # "times":I
    .end local v39    # "timeStr":Ljava/lang/String;
    .end local v40    # "timesStr":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v0, "separator":Ljava/lang/String;
    nop

    .line 2538
    move-object v14, v0

    move-object v1, v8

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v13, v33

    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v36

    move-object/from16 v0, p0

    goto/16 :goto_15f

    .line 2584
    .end local v0    # "separator":Ljava/lang/String;
    .end local v2    # "accountFormat":Ljava/lang/String;
    .end local v28    # "padLength":I
    .end local v29    # "chars":[C
    .end local v31    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v34    # "N":I
    .end local v35    # "maxAuthority":I
    .end local v36    # "maxAccount":I
    .end local v41    # "authorityFormat":Ljava/lang/String;
    .end local v45    # "totalElapsedTime":J
    .restart local v4    # "totalElapsedTime":J
    .local v8, "N":I
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_284
    move-wide/from16 v45, v4

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move-object v8, v1

    .line 2584
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v34    # "N":I
    .restart local v35    # "maxAuthority":I
    .restart local v36    # "maxAccount":I
    .restart local v45    # "totalElapsedTime":J
    goto :goto_29b

    .line 2584
    .end local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v34    # "N":I
    .end local v35    # "maxAuthority":I
    .end local v36    # "maxAccount":I
    .end local v45    # "totalElapsedTime":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v8    # "N":I
    .restart local v9    # "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_28e
    move-object/from16 v30, v2

    move-object/from16 v27, v3

    move-wide/from16 v45, v4

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move-object v8, v1

    .line 2584
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v34    # "N":I
    .restart local v35    # "maxAuthority":I
    .restart local v36    # "maxAccount":I
    .restart local v45    # "totalElapsedTime":J
    :goto_29b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2585
    const-string v0, "Recent Sync History"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  %-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2587
    .end local v36    # "maxAccount":I
    .restart local v10    # "maxAccount":I
    const-string/jumbo v1, "s  %-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2587
    .end local v35    # "maxAuthority":I
    .restart local v9    # "maxAuthority":I
    const-string/jumbo v1, "s %s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2588
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 2589
    .local v1, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2590
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 2590
    .local v4, "i":I
    :goto_2d9
    move/from16 v5, v34

    if-ge v4, v5, :cond_4b6

    .line 2591
    .end local v34    # "N":I
    .local v5, "N":I
    move-object/from16 v11, v30

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 2591
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2592
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v13, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2593
    invoke-virtual {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    .line 2596
    .local v13, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v13, :cond_322

    .line 2597
    iget-object v14, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2598
    .local v14, "authorityName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v47, v6

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2598
    .end local v6    # "totalTimes":J
    .local v47, "totalTimes":J
    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "accountKey":Ljava/lang/String;
    goto :goto_328

    .line 2602
    .end local v14    # "authorityName":Ljava/lang/String;
    .end local v47    # "totalTimes":J
    .local v6, "totalTimes":J
    :cond_322
    move-wide/from16 v47, v6

    .line 2602
    .end local v6    # "totalTimes":J
    .restart local v47    # "totalTimes":J
    const-string v14, "Unknown"

    .line 2603
    .restart local v14    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .line 2605
    .local v6, "accountKey":Ljava/lang/String;
    :goto_328
    move/from16 v50, v9

    move/from16 v49, v10

    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2606
    .end local v10    # "maxAccount":I
    .local v9, "elapsedTime":J
    .local v49, "maxAccount":I
    .local v50, "maxAuthority":I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 2607
    .local v7, "time":Landroid/text/format/Time;
    move-object/from16 v51, v3

    iget-wide v2, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2608
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "eventTime":J
    .local v51, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2610
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v52, v7

    const-string v7, "/"

    .line 2610
    .end local v7    # "time":Landroid/text/format/Time;
    .local v52, "time":Landroid/text/format/Time;
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2611
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 2613
    .local v15, "lastEventTime":Ljava/lang/Long;
    if-nez v15, :cond_36c

    .line 2614
    const-string v19, ""

    .line 2623
    .local v19, "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    .line 2623
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "N":I
    .end local v9    # "elapsedTime":J
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v14    # "authorityName":Ljava/lang/String;
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .local v53, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v54, "authorityName":Ljava/lang/String;
    .local v55, "lastEventTime":Ljava/lang/Long;
    .local v56, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v57, "N":I
    .local v58, "elapsedTime":J
    .local v60, "format":Ljava/lang/String;
    .local v61, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_368
    move-object/from16 v55, v15

    goto/16 :goto_3ed

    .line 2616
    .end local v19    # "diffString":Ljava/lang/String;
    .end local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v54    # "authorityName":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .end local v58    # "elapsedTime":J
    .end local v60    # "format":Ljava/lang/String;
    .end local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v0    # "format":Ljava/lang/String;
    .restart local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "N":I
    .restart local v9    # "elapsedTime":J
    .restart local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v14    # "authorityName":Ljava/lang/String;
    .restart local v15    # "lastEventTime":Ljava/lang/Long;
    :cond_36c
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v19, v19, v2

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    div-long v13, v19, v17

    .line 2617
    .end local v14    # "authorityName":Ljava/lang/String;
    .local v13, "diff":J
    .restart local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v54    # "authorityName":Ljava/lang/String;
    const-wide/16 v19, 0x3c

    cmp-long v21, v13, v19

    if-gez v21, :cond_38d

    .line 2618
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 2623
    .restart local v19    # "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    goto :goto_368

    .line 2619
    .end local v19    # "diffString":Ljava/lang/String;
    :cond_38d
    const-wide/16 v21, 0xe10

    cmp-long v23, v13, v21

    if-gez v23, :cond_3bb

    .line 2620
    move-object/from16 v55, v15

    const-string v15, "%02d:%02d"

    .line 2620
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .restart local v55    # "lastEventTime":Ljava/lang/Long;
    move/from16 v57, v5

    move-object/from16 v56, v11

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Object;

    .line 2620
    .end local v5    # "N":I
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    move-wide/from16 v58, v9

    div-long v8, v13, v19

    .line 2620
    .end local v9    # "elapsedTime":J
    .restart local v58    # "elapsedTime":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    rem-long v8, v13, v19

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 2623
    .restart local v19    # "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    goto :goto_3ed

    .line 2622
    .end local v19    # "diffString":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .end local v58    # "elapsedTime":J
    .restart local v5    # "N":I
    .restart local v9    # "elapsedTime":J
    .restart local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v15    # "lastEventTime":Ljava/lang/Long;
    :cond_3bb
    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    move-object/from16 v55, v15

    .line 2622
    .end local v5    # "N":I
    .end local v9    # "elapsedTime":J
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .restart local v55    # "lastEventTime":Ljava/lang/Long;
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    .restart local v58    # "elapsedTime":J
    rem-long v8, v13, v21

    .line 2623
    .local v8, "sec":J
    const-string v5, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    move-object/from16 v60, v0

    move-object/from16 v61, v1

    div-long v0, v13, v21

    .line 2624
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v60    # "format":Ljava/lang/String;
    .restart local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v11, v1

    div-long v0, v8, v19

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v11, v1

    rem-long v0, v8, v19

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v11, v1

    .line 2623
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 2623
    .end local v8    # "sec":J
    .end local v13    # "diff":J
    .restart local v19    # "diffString":Ljava/lang/String;
    :goto_3ed
    move-object/from16 v0, v19

    .line 2627
    .end local v19    # "diffString":Ljava/lang/String;
    .local v0, "diffString":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v5, v61

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    .end local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v5, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v4, 0x1

    .line 2630
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2631
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aput-object v9, v8, v10

    move-wide/from16 v9, v58

    long-to-float v11, v9

    .end local v58    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v11, v13

    .line 2633
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v8, v13

    const/4 v11, 0x4

    aput-object v0, v8, v11

    .line 2629
    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2635
    new-array v1, v13, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v1, v8

    const/4 v8, 0x1

    aput-object v54, v1, v8

    iget v13, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2636
    move-object/from16 v15, v51

    invoke-static {v15, v13}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v13

    .line 2636
    .end local v51    # "pm":Landroid/content/pm/PackageManager;
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x2

    aput-object v13, v1, v16

    .line 2635
    move-object/from16 v13, v60

    invoke-virtual {v14, v13, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2638
    .end local v60    # "format":Ljava/lang/String;
    .local v13, "format":Ljava/lang/String;
    iget v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v1, v8, :cond_45c

    move-object/from16 v62, v0

    iget-wide v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2638
    .end local v0    # "diffString":Ljava/lang/String;
    .local v62, "diffString":Ljava/lang/String;
    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-nez v0, :cond_460

    iget-wide v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v0, v0, v19

    if-eqz v0, :cond_459

    goto :goto_460

    .line 2646
    :cond_459
    move-wide/from16 v63, v2

    goto :goto_486

    .line 2641
    .end local v62    # "diffString":Ljava/lang/String;
    .restart local v0    # "diffString":Ljava/lang/String;
    :cond_45c
    move-object/from16 v62, v0

    const-wide/16 v19, 0x0

    .line 2641
    .end local v0    # "diffString":Ljava/lang/String;
    .restart local v62    # "diffString":Ljava/lang/String;
    :cond_460
    :goto_460
    const-string v0, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    iget v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 2642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x0

    aput-object v1, v8, v21

    move-wide/from16 v63, v2

    iget-wide v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2643
    .end local v2    # "eventTime":J
    .local v63, "eventTime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    iget-wide v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2644
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v8, v2

    .line 2641
    invoke-virtual {v14, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2646
    :goto_486
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v0, :cond_4a2

    const-string/jumbo v0, "success"

    iget-object v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 2647
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a2

    .line 2648
    const-string v0, "    mesg=%s\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v14, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2590
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "elapsedTime":J
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v52    # "time":Landroid/text/format/Time;
    .end local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v54    # "authorityName":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v62    # "diffString":Ljava/lang/String;
    .end local v63    # "eventTime":J
    :cond_4a2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v5

    move-object v0, v13

    move-object v8, v14

    move-object v3, v15

    move-wide/from16 v6, v47

    move/from16 v10, v49

    move/from16 v9, v50

    move-object/from16 v30, v56

    move/from16 v34, v57

    move-object/from16 v2, p0

    goto/16 :goto_2d9

    .line 2651
    .end local v4    # "i":I
    .end local v13    # "format":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v47    # "totalTimes":J
    .end local v49    # "maxAccount":I
    .end local v50    # "maxAuthority":I
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .local v0, "format":Ljava/lang/String;
    .restart local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "N":I
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    .restart local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_4b6
    move-object v13, v0

    move-object v15, v3

    move/from16 v57, v5

    move-wide/from16 v47, v6

    move-object v14, v8

    move/from16 v50, v9

    move/from16 v49, v10

    move-object/from16 v56, v30

    move-object v5, v1

    .line 2651
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "totalTimes":J
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v5, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v13    # "format":Ljava/lang/String;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v47    # "totalTimes":J
    .restart local v49    # "maxAccount":I
    .restart local v50    # "maxAuthority":I
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2652
    const-string v0, "Recent Sync History Extras"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    const/4 v0, 0x0

    .line 2654
    .local v0, "i":I
    :goto_4d2
    move/from16 v1, v57

    if-ge v0, v1, :cond_58d

    .line 2655
    .end local v57    # "N":I
    .local v1, "N":I
    move-object/from16 v2, v56

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2655
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2656
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 2657
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_578

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_4f6

    .line 2658
    nop

    .line 2654
    move/from16 v65, v1

    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x1

    goto/16 :goto_583

    .line 2660
    :cond_4f6
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2661
    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v7

    .line 2664
    .local v7, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v7, :cond_533

    .line 2665
    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2666
    .local v8, "authorityName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "accountKey":Ljava/lang/String;
    goto :goto_537

    .line 2670
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "accountKey":Ljava/lang/String;
    :cond_533
    const-string v8, "Unknown"

    .line 2671
    .restart local v8    # "authorityName":Ljava/lang/String;
    const-string v9, "Unknown"

    .line 2673
    .restart local v9    # "accountKey":Ljava/lang/String;
    :goto_537
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2674
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2675
    .local v11, "eventTime":J
    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 2677
    move/from16 v65, v1

    const-string v1, "  #%-3d: %s %8s "

    .line 2677
    .end local v1    # "N":I
    .local v65, "N":I
    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    .line 2677
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v66, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v67, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v2, v0, 0x1

    .line 2678
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, v5, v17

    .line 2679
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v5, v16

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v6, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v2, v2, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 2677
    invoke-virtual {v14, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2682
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v2, v5

    aput-object v8, v2, v16

    aput-object v4, v2, v6

    invoke-virtual {v14, v13, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2682
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v7    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "accountKey":Ljava/lang/String;
    .end local v10    # "time":Landroid/text/format/Time;
    .end local v11    # "eventTime":J
    goto :goto_583

    .line 2654
    .end local v65    # "N":I
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "N":I
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_578
    move/from16 v65, v1

    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x1

    .line 2654
    .end local v1    # "N":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v65    # "N":I
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_583
    add-int/lit8 v0, v0, 0x1

    move/from16 v57, v65

    move-object/from16 v56, v66

    move-object/from16 v5, v67

    goto/16 :goto_4d2

    .line 2685
    .end local v0    # "i":I
    .end local v13    # "format":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v45    # "totalElapsedTime":J
    .end local v47    # "totalTimes":J
    .end local v49    # "maxAccount":I
    .end local v50    # "maxAuthority":I
    .end local v65    # "N":I
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_58d
    move-object/from16 v66, v56

    .line 2685
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    goto :goto_593

    .line 2685
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_590
    move-object v14, v1

    move-object/from16 v66, v2

    .line 2685
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :goto_593
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2740
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2741
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 2742
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_58

    .line 2743
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2744
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2747
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2748
    .local v4, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2749
    .end local v4    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_41

    .line 2750
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2751
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2752
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_d

    .line 2754
    :cond_58
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .line 2427
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2428
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2429
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .registers 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "duration"    # J

    .line 2132
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 2133
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 2134
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2135
    neg-long p1, p1

    .line 2137
    :cond_f
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    .line 2138
    .local v4, "seconds":J
    div-long/2addr p1, v2

    .line 2140
    rem-long v6, p1, v2

    .line 2141
    .local v6, "minutes":J
    div-long/2addr p1, v2

    .line 2143
    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    .line 2144
    .local v8, "hours":J
    div-long/2addr p1, v2

    .line 2146
    move-wide v2, p1

    .line 2148
    .local v2, "days":J
    const/4 v10, 0x0

    .line 2149
    .local v10, "print":Z
    cmp-long v0, v2, v0

    if-lez v0, :cond_2b

    .line 2150
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2151
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2152
    const/4 v10, 0x1

    .line 2154
    :cond_2b
    const/16 v0, 0x68

    invoke-static {p0, v8, v9, v0, v10}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2155
    .end local v10    # "print":Z
    .local v0, "print":Z
    const/16 v1, 0x6d

    invoke-static {p0, v6, v7, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2156
    const/16 v1, 0x73

    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2157
    if-nez v0, :cond_44

    .line 2158
    const-string v1, "0s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    :cond_44
    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 2040
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 2041
    const-string v0, "N/A"

    return-object v0

    .line 2043
    :cond_9
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2044
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2045
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncAdapterComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1866
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1867
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1868
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1869
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x1040697

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1871
    const-string v1, "android.intent.extra.client_intent"

    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1872
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 1871
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1874
    return-object v0
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 481
    monitor-enter p0

    .line 482
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 483
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 486
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 487
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4205
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 4206
    :catch_e
    move-exception v0

    .line 4208
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 855
    .local v0, "isSyncable":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 858
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_4f

    .line 861
    :cond_19
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 863
    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 862
    invoke-virtual {v2, v3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 864
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_29

    return v3

    .line 866
    :cond_29
    const/4 v4, 0x0

    .line 868
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 869
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 868
    invoke-interface {v5, v6, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_38} :catch_4d

    move-object v4, v5

    .line 870
    if-nez v4, :cond_3c

    return v3

    .line 874
    :cond_3c
    nop

    .line 875
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_4c

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 876
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 877
    return v0

    .line 879
    :cond_4c
    return v3

    .line 871
    :catch_4d
    move-exception v5

    .line 873
    .local v5, "re":Landroid/os/RemoteException;
    return v3

    .line 858
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    return v0
.end method

.method private getJobStats()Ljava/lang/String;
    .registers 4

    .line 425
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 426
    .local v0, "js":Lcom/android/server/job/JobSchedulerInternal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    if-nez v0, :cond_17

    const-string v2, "(JobSchedulerInternal==null)"

    goto :goto_1f

    .line 428
    :cond_17
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    return-object v1
.end method

.method private getTotalBytesTransferredByUid(I)J
    .registers 6
    .param p1, "uid"    # I

    .line 1355
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .registers 4

    .line 281
    :cond_0
    const v0, 0x186a0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    .local v0, "newJobId":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 285
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    return v0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 19
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p0

    .line 1415
    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1417
    .local v8, "now":J
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1418
    invoke-virtual {v1, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v10

    .line 1419
    .local v10, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    .line 1420
    .local v1, "newDelayInMs":J
    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    if-eqz v10, :cond_60

    .line 1423
    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v6, v8, v11

    if-gez v6, :cond_4f

    .line 1424
    const-string v6, "SyncManager"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1425
    const-string v3, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1426
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v11, v8

    div-long/2addr v11, v4

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1425
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_4e
    return-void

    .line 1431
    :cond_4f
    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1432
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-float v6, v11

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v11

    mul-float/2addr v6, v11

    float-to-long v1, v6

    .line 1434
    :cond_60
    const-wide/16 v11, 0x0

    cmp-long v6, v1, v11

    if-gtz v6, :cond_7b

    .line 1436
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v6}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v11, v6

    .line 1437
    .local v11, "initialRetryMs":J
    long-to-double v13, v11

    const-wide v15, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v13, v15

    double-to-long v13, v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v1

    .line 1441
    .end local v11    # "initialRetryMs":J
    :cond_7b
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v6}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v6

    int-to-long v11, v6

    .line 1443
    .local v11, "maxSyncRetryTimeInSeconds":J
    mul-long v13, v11, v4

    cmp-long v6, v1, v13

    if-lez v6, :cond_8b

    .line 1444
    mul-long/2addr v4, v11

    .line 1447
    .end local v1    # "newDelayInMs":J
    .local v4, "newDelayInMs":J
    move-wide v13, v4

    goto :goto_8c

    .end local v4    # "newDelayInMs":J
    .restart local v1    # "newDelayInMs":J
    :cond_8b
    move-wide v13, v1

    .end local v1    # "newDelayInMs":J
    .local v13, "newDelayInMs":J
    :goto_8c
    add-long v5, v8, v13

    .line 1448
    .local v5, "backoff":J
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1449
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backoff until: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", delayTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_b4
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v2, v7

    move-wide v3, v5

    move-wide v15, v5

    move-wide v5, v13

    .end local v5    # "backoff":J
    .local v15, "backoff":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1452
    const-string v1, "increaseBackoffSetting"

    invoke-direct {v0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1494
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1495
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1496
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_28

    .line 1497
    return v3

    .line 1499
    :cond_28
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_33

    .line 1500
    return v3

    .line 1502
    :cond_33
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .line 832
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 833
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

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .registers 7
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 265
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 266
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 267
    return v2

    .line 269
    .end local v1    # "job":Landroid/app/job/JobInfo;
    :cond_18
    goto :goto_4

    .line 270
    :cond_19
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 271
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_32

    .line 272
    return v2

    .line 274
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_32
    goto :goto_1f

    .line 275
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 4090
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 4091
    return v1

    .line 4093
    :cond_a
    const-string v0, "ignore_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4094
    return v1

    .line 4096
    :cond_13
    const-string v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4097
    return v1

    .line 4099
    :cond_1c
    const-string v0, "do_not_retry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4100
    return v1

    .line 4102
    :cond_25
    const-string v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4103
    return v1

    .line 4105
    :cond_2e
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4106
    return v1

    .line 4108
    :cond_38
    const-string v0, "deletions_override"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4109
    return v1

    .line 4111
    :cond_41
    const-string v0, "discard_deletions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4112
    return v1

    .line 4114
    :cond_4a
    const-string v0, "expected_upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4115
    return v1

    .line 4117
    :cond_53
    const-string v0, "expected_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4118
    return v1

    .line 4120
    :cond_5c
    const-string/jumbo v0, "sync_priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 4121
    return v1

    .line 4123
    :cond_66
    const-string v0, "allow_metered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 4124
    return v1

    .line 4126
    :cond_6f
    const-string v0, "initialize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 4127
    return v1

    .line 4133
    :cond_78
    const/4 v0, 0x0

    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 4048
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 4049
    .local v1, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_16

    .line 4050
    const/4 v0, 0x1

    return v0

    .line 4052
    .end local v1    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_16
    goto :goto_6

    .line 4053
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private jitterize(JJ)J
    .registers 10
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .line 840
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 841
    .local v0, "random":Ljava/util/Random;
    sub-long v1, p3, p1

    .line 842
    .local v1, "spread":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1a

    .line 846
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3

    .line 843
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic lambda$EMXCZP9LDjgUTYbLsEoVu9Ccntw(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .registers 2
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2097
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .registers 2
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2114
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return v0
.end method

.method static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .registers 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "table"    # Lcom/android/server/content/SyncManager$PrintTable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .param p4, "filter"    # Ljava/util/function/Function;
    .param p5, "r"    # Ljava/lang/Integer;

    .line 2330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2331
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v2, v4

    iget-wide v4, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2342
    invoke-static {p0, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v2, v4

    .line 2331
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2343
    return-void
.end method

.method static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 2344
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;I)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 694
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 695
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 700
    :cond_16
    return-void
.end method

.method public static synthetic lambda$onStartUser$1(Lcom/android/server/content/SyncManager;I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 788
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStartUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onStopUser$3(Lcom/android/server/content/SyncManager;I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStopUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onUnlockUser$2(Lcom/android/server/content/SyncManager;I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 792
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUnlockUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$scheduleSync$4(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJILandroid/os/Bundle;)V
    .registers 24
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "finalExtras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "syncExemptionFlag"    # I
    .param p10, "result"    # Landroid/os/Bundle;

    .line 1070
    move-object/from16 v0, p10

    if-eqz v0, :cond_22

    const-string v1, "booleanResult"

    .line 1071
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1072
    move-object v1, p1

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v11, 0x1

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    goto :goto_23

    .line 1077
    :cond_22
    move-object v1, p1

    :goto_23
    return-void
.end method

.method public static synthetic lambda$scheduleSync$5(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V
    .registers 21
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "reason"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "finalExtras"    # Landroid/os/Bundle;
    .param p5, "targetSyncState"    # I
    .param p6, "minDelayMillis"    # J
    .param p8, "syncExemptionFlag"    # I

    move-object v0, p1

    .line 1125
    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    return-void
.end method

.method static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2794
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 8
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2049
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2050
    .local v0, "res":I
    if-eqz v0, :cond_f

    return v0

    .line 2052
    :cond_f
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2054
    .local v1, "stringComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2055
    if-eqz v0, :cond_24

    return v0

    .line 2057
    :cond_24
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2058
    if-eqz v0, :cond_37

    return v0

    .line 2060
    :cond_37
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2061
    if-eqz v0, :cond_46

    return v0

    .line 2063
    :cond_46
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2064
    if-eqz v0, :cond_51

    return v0

    .line 2066
    :cond_51
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2067
    if-eqz v0, :cond_5c

    return v0

    .line 2069
    :cond_5c
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2070
    if-eqz v0, :cond_67

    return v0

    .line 2072
    :cond_67
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v2, v2

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2073
    if-eqz v0, :cond_74

    return v0

    .line 2075
    :cond_74
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2079
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2080
    .local v0, "res":I
    if-eqz v0, :cond_b

    return v0

    .line 2082
    :cond_b
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private likelyHasPeriodicSyncs()Z
    .registers 4

    .line 576
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_d

    const/4 v2, 0x6

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    nop

    :cond_c
    return v0

    .line 577
    :catch_d
    move-exception v1

    .line 580
    return v0
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 7
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 1746
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1747
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_27

    .line 1748
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_27
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1755
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1758
    :cond_39
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_62

    .line 1763
    if-eqz v0, :cond_126

    .line 1764
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126

    .line 1767
    :cond_62
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_97

    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_97

    .line 1770
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1771
    if-eqz v0, :cond_92

    .line 1772
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_92
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_126

    .line 1776
    :cond_97
    iget-boolean v1, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_b5

    .line 1779
    if-eqz v0, :cond_126

    .line 1780
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    .line 1783
    :cond_b5
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1785
    if-eqz v0, :cond_c5

    .line 1786
    const-string v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_c5
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_126

    .line 1790
    :cond_c9
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_ec

    .line 1791
    if-eqz v0, :cond_e6

    .line 1792
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_e6
    const-wide/16 v1, 0x2710

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_126

    .line 1796
    :cond_ec
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 1798
    if-eqz v0, :cond_10b

    .line 1799
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_10b
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_126

    .line 1805
    :cond_10f
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_126
    :goto_126
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1842
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUserRemoved: u"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1843
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1846
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-array v1, v3, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1848
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1849
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_4f

    .line 1850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user removed u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1852
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_4f
    goto :goto_28

    .line 1853
    :cond_50
    return-void
.end method

.method private onUserStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1829
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1831
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v2, "onUserStopped"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1839
    return-void
.end method

.method private onUserUnlocked(I)V
    .registers 15
    .param p1, "userId"    # I

    .line 1812
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1816
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1817
    .local v0, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1820
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1821
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1820
    invoke-virtual {v1, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1822
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_37

    aget-object v12, v1, v3

    .line 1823
    .local v12, "account":Landroid/accounts/Account;
    const/4 v7, -0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, v12

    move v6, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 1822
    .end local v12    # "account":Landroid/accounts/Account;
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1826
    :cond_37
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 6
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1328
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1329
    const-string v0, "SyncManager"

    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_11
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1334
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1336
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1337
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1340
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1341
    return-void
.end method

.method private static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J
    .param p3, "unit"    # C
    .param p4, "always"    # Z

    .line 2166
    if-nez p4, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 2167
    const/4 v0, 0x0

    return v0

    .line 2169
    :cond_a
    if-eqz p4, :cond_17

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_17

    .line 2170
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2172
    :cond_17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2173
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2174
    const/4 v0, 0x1

    return v0
.end method

.method private readDataConnectionState()Z
    .registers 3

    .line 420
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 421
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static readyToSync()Z
    .registers 2

    .line 2910
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2911
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit v0

    return v1

    .line 2913
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "removeSyncsForAuthority: "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1223
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1225
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1226
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1227
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "canceling: "

    aput-object v8, v7, v4

    aput-object v5, v7, v3

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1228
    invoke-direct {p0, v5, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1230
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_40
    goto :goto_1c

    .line 1231
    :cond_41
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1460
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "rescheduleSyncs() ep="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " why="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1463
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v1, 0x0

    .line 1464
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 1465
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v5, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_44

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1466
    add-int/lit8 v1, v1, 0x1

    .line 1467
    invoke-direct {p0, v4, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1468
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1470
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_44
    goto :goto_22

    .line 1471
    :cond_45
    const-string v2, "SyncManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1472
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " syncs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_6b
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V
    .registers 71
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "checkIfAccountReady"    # Z
    .param p10, "syncExemptionFlag"    # I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v11, p4

    move/from16 v9, p6

    move-wide/from16 v5, p7

    move/from16 v10, p9

    .line 948
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    .line 949
    .local v16, "isLoggable":Z
    if-nez p5, :cond_21

    .line 950
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 952
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    move-object v8, v0

    goto :goto_23

    .line 952
    .end local v0    # "extras":Landroid/os/Bundle;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_21
    move-object/from16 v8, p5

    .line 952
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v8, "extras":Landroid/os/Bundle;
    :goto_23
    if-eqz v16, :cond_6b

    .line 953
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "one-time sync for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " checkIfAccountReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " syncExemptionFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p10

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 960
    :cond_6b
    move/from16 v4, p10

    :goto_6d
    const/4 v0, 0x0

    .line 961
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_a5

    .line 962
    if-eq v14, v3, :cond_80

    .line 963
    new-array v7, v2, [Landroid/accounts/AccountAndUser;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, v13, v14}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v3, v7, v1

    move-object v0, v7

    goto :goto_ab

    .line 965
    :cond_80
    iget-object v3, v12, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v7, v3

    move-object v2, v0

    move v0, v1

    .line 965
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v2, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_85
    if-ge v0, v7, :cond_a3

    aget-object v1, v3, v0

    .line 966
    .local v1, "runningAccount":Landroid/accounts/AccountAndUser;
    move-object/from16 v20, v3

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v13, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 967
    const-class v3, Landroid/accounts/AccountAndUser;

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Landroid/accounts/AccountAndUser;

    .line 965
    .end local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v1, "accounts":[Landroid/accounts/AccountAndUser;
    move-object v2, v1

    .line 965
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v20

    const/4 v1, 0x0

    goto :goto_85

    .line 978
    :cond_a3
    move-object v3, v2

    goto :goto_ac

    .line 973
    .end local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_a5
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 975
    invoke-static {v0, v15}, Lcom/android/server/content/SyncSecurityInjector;->filterOutXiaomiAccount([Landroid/accounts/AccountAndUser;I)[Landroid/accounts/AccountAndUser;

    move-result-object v0

    .line 978
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_ab
    move-object v3, v0

    :goto_ac
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 979
    if-eqz v16, :cond_bc

    .line 980
    const-string v0, "SyncManager"

    const-string/jumbo v1, "scheduleSync: no accounts configured, dropping"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_bc
    return-void

    .line 985
    :cond_bd
    const-string/jumbo v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 986
    .local v20, "uploadOnly":Z
    const-string v0, "force"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 987
    .local v21, "manualSync":Z
    if-eqz v21, :cond_d9

    .line 988
    const-string v0, "ignore_backoff"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    const-string v0, "ignore_settings"

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_da

    .line 991
    :cond_d9
    const/4 v2, 0x1

    :goto_da
    const-string v0, "ignore_settings"

    .line 992
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 995
    .local v18, "ignoreSettings":Z
    if-eqz v20, :cond_e5

    .line 996
    const/4 v0, 0x1

    .line 996
    .local v0, "source":I
    :goto_e4
    goto :goto_f8

    .line 997
    .end local v0    # "source":I
    :cond_e5
    if-eqz v21, :cond_e9

    .line 998
    const/4 v0, 0x3

    goto :goto_e4

    .line 999
    :cond_e9
    if-nez v11, :cond_ed

    .line 1000
    const/4 v0, 0x2

    goto :goto_e4

    .line 1002
    :cond_ed
    const-string v0, "feed"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1003
    const/4 v0, 0x5

    goto :goto_e4

    .line 1007
    :cond_f7
    move v0, v1

    .line 1007
    .restart local v0    # "source":I
    :goto_f8
    move v7, v0

    .line 1011
    .end local v0    # "source":I
    .local v7, "source":I
    array-length v13, v3

    move v9, v1

    :goto_fb
    if-ge v9, v13, :cond_4e4

    move/from16 v23, v13

    aget-object v13, v3, v9

    .line 1013
    .local v13, "account":Landroid/accounts/AccountAndUser;
    if-ltz v14, :cond_11e

    iget v0, v13, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v0, :cond_11e

    iget v0, v13, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v14, v0, :cond_11e

    .line 1015
    nop

    .line 1011
    move/from16 v31, v1

    move-object/from16 v17, v3

    move/from16 v58, v7

    move-object/from16 v32, v8

    move/from16 v22, v9

    move/from16 v26, v10

    move-object v14, v12

    const/16 v29, -0x1

    move-wide v12, v5

    goto/16 :goto_4c9

    .line 1019
    :cond_11e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v0

    .line 1021
    .local v24, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v1, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1022
    .local v1, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move/from16 v27, v9

    move-object/from16 v9, v24

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1023
    .end local v1    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v24    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    nop

    .line 1021
    move/from16 v9, v27

    const/4 v2, 0x1

    goto :goto_131

    .line 1028
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_14f
    move/from16 v27, v9

    move-object/from16 v9, v24

    .line 1028
    .end local v24    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_161

    .line 1029
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1030
    .local v0, "hasSyncAdapter":Z
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1031
    if-eqz v0, :cond_161

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1034
    .end local v0    # "hasSyncAdapter":Z
    :cond_161
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_165
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1035
    .local v1, "authority":Ljava/lang/String;
    iget-object v0, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v34, v2

    iget v2, v13, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v35, v3

    xor-int/lit8 v3, v10, 0x1

    .line 1035
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v35, "accounts":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v12, v0, v2, v1, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3

    .line 1038
    .local v3, "isSyncable":I
    if-nez v3, :cond_188

    .line 1039
    nop

    .line 1034
    .end local v1    # "authority":Ljava/lang/String;
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_183
    move-object/from16 v2, v34

    move-object/from16 v3, v35

    goto :goto_165

    .line 1042
    .restart local v1    # "authority":Ljava/lang/String;
    .local v3, "isSyncable":I
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_188
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v2, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1043
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    move-object/from16 v36, v1

    iget v1, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 1043
    .end local v1    # "authority":Ljava/lang/String;
    .local v36, "authority":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1045
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v2, :cond_19d

    .line 1046
    goto :goto_183

    .line 1049
    :cond_19d
    iget v1, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1051
    .local v1, "owningUid":I
    const/4 v0, 0x3

    if-ne v3, v0, :cond_24c

    .line 1052
    if-eqz v16, :cond_1ae

    .line 1053
    const-string v0, "SyncManager"

    move/from16 v37, v1

    const-string v1, "    Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    .line 1053
    .end local v1    # "owningUid":I
    .local v37, "owningUid":I
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    .line 1056
    .end local v37    # "owningUid":I
    .restart local v1    # "owningUid":I
    :cond_1ae
    move/from16 v37, v1

    .line 1056
    .end local v1    # "owningUid":I
    .restart local v37    # "owningUid":I
    :goto_1b0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move v1, v7

    move-object v7, v0

    .line 1057
    .local v1, "source":I
    .local v7, "finalExtras":Landroid/os/Bundle;
    iget-object v0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .line 1060
    .local v38, "packageName":Ljava/lang/String;
    :try_start_1bf
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_1c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bf .. :try_end_1c1} :catch_232

    move-object/from16 v39, v7

    move-object/from16 v7, v38

    :try_start_1c5
    invoke-virtual {v0, v7, v14}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c5 .. :try_end_1c9} :catch_217

    .line 1060
    .end local v38    # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    .local v39, "finalExtras":Landroid/os/Bundle;
    if-nez v0, :cond_1ce

    .line 1061
    nop

    .line 1034
    move v7, v1

    goto :goto_183

    .line 1066
    :cond_1ce
    nop

    .line 1067
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    move-object/from16 v40, v0

    iget-object v0, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v41, v0

    new-instance v0, Landroid/os/RemoteCallback;

    move-object/from16 v42, v0

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;

    move/from16 v43, v1

    move-object/from16 v44, v36

    move/from16 v19, v37

    move-object v1, v0

    .end local v1    # "source":I
    .end local v36    # "authority":Ljava/lang/String;
    .end local v37    # "owningUid":I
    .local v19, "owningUid":I
    .local v43, "source":I
    .local v44, "authority":Ljava/lang/String;
    move-object/from16 v45, v2

    move-object/from16 v24, v34

    move-object v2, v12

    .line 1067
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v45, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move/from16 v25, v3

    move-object/from16 v17, v35

    move-object v3, v13

    .line 1067
    .end local v3    # "isSyncable":I
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v17, "accounts":[Landroid/accounts/AccountAndUser;
    .local v25, "isSyncable":I
    move v4, v14

    move v5, v15

    move-object/from16 v6, v44

    move-object v15, v8

    move/from16 v22, v27

    move/from16 v8, p6

    .line 1067
    .end local v8    # "extras":Landroid/os/Bundle;
    .local v15, "extras":Landroid/os/Bundle;
    move-object/from16 v27, v9

    move/from16 v26, v10

    move-object/from16 v46, v15

    move/from16 v15, p6

    move-wide/from16 v9, p7

    .line 1067
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "extras":Landroid/os/Bundle;
    .local v27, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v46, "extras":Landroid/os/Bundle;
    move/from16 v11, p10

    move-object v15, v7

    move-object/from16 v7, v39

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJI)V

    .line 1067
    .end local v39    # "finalExtras":Landroid/os/Bundle;
    .local v7, "finalExtras":Landroid/os/Bundle;
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v1, v42

    invoke-direct {v1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v0, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v2, v15, v14, v1}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 1079
    goto/16 :goto_29c

    .line 1063
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "owningUid":I
    .end local v25    # "isSyncable":I
    .end local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v43    # "source":I
    .end local v44    # "authority":Ljava/lang/String;
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "extras":Landroid/os/Bundle;
    .restart local v1    # "source":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "isSyncable":I
    .local v7, "packageName":Ljava/lang/String;
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v36    # "authority":Ljava/lang/String;
    .restart local v37    # "owningUid":I
    .restart local v39    # "finalExtras":Landroid/os/Bundle;
    :catch_217
    move-exception v0

    move/from16 v43, v1

    move-object/from16 v45, v2

    move/from16 v25, v3

    move-object v15, v7

    move-object/from16 v46, v8

    move/from16 v26, v10

    move/from16 v22, v27

    move-object/from16 v24, v34

    move-object/from16 v17, v35

    move-object/from16 v44, v36

    move/from16 v19, v37

    move-object/from16 v7, v39

    move-object/from16 v27, v9

    .end local v1    # "source":I
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "authority":Ljava/lang/String;
    .end local v37    # "owningUid":I
    .end local v39    # "finalExtras":Landroid/os/Bundle;
    .local v7, "finalExtras":Landroid/os/Bundle;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v19    # "owningUid":I
    .restart local v25    # "isSyncable":I
    .restart local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v43    # "source":I
    .restart local v44    # "authority":Ljava/lang/String;
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "extras":Landroid/os/Bundle;
    goto :goto_24b

    .line 1063
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "owningUid":I
    .end local v25    # "isSyncable":I
    .end local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v43    # "source":I
    .end local v44    # "authority":Ljava/lang/String;
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "extras":Landroid/os/Bundle;
    .restart local v1    # "source":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "isSyncable":I
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v36    # "authority":Ljava/lang/String;
    .restart local v37    # "owningUid":I
    .restart local v38    # "packageName":Ljava/lang/String;
    :catch_232
    move-exception v0

    move/from16 v43, v1

    move-object/from16 v45, v2

    move/from16 v25, v3

    move-object/from16 v46, v8

    move/from16 v26, v10

    move/from16 v22, v27

    move-object/from16 v24, v34

    move-object/from16 v17, v35

    move-object/from16 v44, v36

    move/from16 v19, v37

    move-object/from16 v15, v38

    move-object/from16 v27, v9

    .line 1065
    .end local v1    # "source":I
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "authority":Ljava/lang/String;
    .end local v37    # "owningUid":I
    .end local v38    # "packageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v19    # "owningUid":I
    .restart local v25    # "isSyncable":I
    .restart local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v43    # "source":I
    .restart local v44    # "authority":Ljava/lang/String;
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "extras":Landroid/os/Bundle;
    :goto_24b
    goto :goto_29c

    .line 1082
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "owningUid":I
    .end local v25    # "isSyncable":I
    .end local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v43    # "source":I
    .end local v44    # "authority":Ljava/lang/String;
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "extras":Landroid/os/Bundle;
    .local v1, "owningUid":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "isSyncable":I
    .local v7, "source":I
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v36    # "authority":Ljava/lang/String;
    :cond_24c
    move/from16 v19, v1

    move-object/from16 v45, v2

    move/from16 v25, v3

    move/from16 v43, v7

    move-object/from16 v46, v8

    move/from16 v26, v10

    move/from16 v22, v27

    move-object/from16 v24, v34

    move-object/from16 v17, v35

    move-object/from16 v44, v36

    move-object/from16 v27, v9

    .end local v1    # "owningUid":I
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v7    # "source":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "authority":Ljava/lang/String;
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v19    # "owningUid":I
    .restart local v25    # "isSyncable":I
    .restart local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v43    # "source":I
    .restart local v44    # "authority":Ljava/lang/String;
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "extras":Landroid/os/Bundle;
    move-object/from16 v15, v45

    iget-object v0, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 1082
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v15, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v0

    .line 1083
    .local v0, "allowParallelSyncs":Z
    iget-object v1, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v34

    .line 1084
    .local v34, "isAlwaysSyncable":Z
    if-nez v26, :cond_292

    if-gez v25, :cond_292

    if-eqz v34, :cond_292

    .line 1085
    iget-object v1, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v2, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v13, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v32, 0x1

    const/16 v33, -0x1

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v30, v3

    move-object/from16 v31, v44

    invoke-virtual/range {v28 .. v33}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V

    .line 1088
    const/4 v3, 0x1

    .line 1091
    .end local v25    # "isSyncable":I
    .restart local v3    # "isSyncable":I
    move v11, v3

    goto :goto_294

    .line 1091
    .end local v3    # "isSyncable":I
    .restart local v25    # "isSyncable":I
    :cond_292
    move/from16 v11, v25

    .line 1091
    .end local v25    # "isSyncable":I
    .local v11, "isSyncable":I
    :goto_294
    const/4 v1, -0x2

    move/from16 v10, p6

    if-eq v10, v1, :cond_2b4

    if-eq v10, v11, :cond_2b4

    .line 1092
    nop

    .line 1034
    .end local v0    # "allowParallelSyncs":Z
    .end local v11    # "isSyncable":I
    .end local v15    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "owningUid":I
    .end local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v34    # "isAlwaysSyncable":Z
    .end local v43    # "source":I
    .end local v44    # "authority":Ljava/lang/String;
    .end local v46    # "extras":Landroid/os/Bundle;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v7    # "source":I
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_29c
    :goto_29c
    move-object/from16 v11, p4

    move-wide/from16 v5, p7

    move/from16 v4, p10

    move-object/from16 v3, v17

    move-object/from16 v2, v24

    move/from16 v10, v26

    move-object/from16 v9, v27

    move/from16 v7, v43

    move-object/from16 v8, v46

    move/from16 v15, p3

    :goto_2b0
    move/from16 v27, v22

    goto/16 :goto_165

    .line 1095
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "source":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v0    # "allowParallelSyncs":Z
    .restart local v11    # "isSyncable":I
    .restart local v15    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v19    # "owningUid":I
    .restart local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v34    # "isAlwaysSyncable":Z
    .restart local v43    # "source":I
    .restart local v44    # "authority":Ljava/lang/String;
    .restart local v46    # "extras":Landroid/os/Bundle;
    :cond_2b4
    iget-object v2, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_2c1

    if-eqz v20, :cond_2c1

    .line 1096
    goto :goto_29c

    .line 1099
    :cond_2c1
    if-ltz v11, :cond_2e2

    if-nez v18, :cond_2e2

    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v3, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 1102
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v2

    if-eqz v2, :cond_2de

    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v3, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 1103
    move-object/from16 v8, v44

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    .line 1103
    .end local v44    # "authority":Ljava/lang/String;
    .local v8, "authority":Ljava/lang/String;
    if-eqz v2, :cond_2e0

    goto :goto_2e4

    .line 1103
    .end local v8    # "authority":Ljava/lang/String;
    .restart local v44    # "authority":Ljava/lang/String;
    :cond_2de
    move-object/from16 v8, v44

    .line 1103
    .end local v44    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    :cond_2e0
    const/4 v2, 0x0

    goto :goto_2e5

    .line 1103
    .end local v8    # "authority":Ljava/lang/String;
    .restart local v44    # "authority":Ljava/lang/String;
    :cond_2e2
    move-object/from16 v8, v44

    .line 1103
    .end local v44    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    :goto_2e4
    const/4 v2, 0x1

    :goto_2e5
    move/from16 v25, v2

    .line 1105
    .local v25, "syncAllowed":Z
    if-nez v25, :cond_310

    .line 1106
    if-eqz v16, :cond_29c

    .line 1107
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSync: sync of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed, dropping request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29c

    .line 1112
    :cond_310
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v2, v3, v8, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v9, v2

    .line 1115
    .local v9, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1116
    invoke-virtual {v2, v9}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    .line 1118
    .local v4, "delayUntil":J
    iget-object v2, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 1120
    .local v28, "owningPackage":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v11, v7, :cond_40c

    .line 1121
    if-eqz v26, :cond_36d

    .line 1122
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v3, v46

    invoke-direct {v6, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1124
    .end local v46    # "extras":Landroid/os/Bundle;
    .local v3, "extras":Landroid/os/Bundle;
    .local v6, "finalExtras":Landroid/os/Bundle;
    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v1, v13, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v47, v11

    new-instance v11, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;

    .line 1124
    .end local v11    # "isSyncable":I
    .local v47, "isSyncable":I
    move v14, v1

    move-object v1, v11

    move/from16 v48, v0

    move-object v0, v2

    move-object v2, v12

    .line 1124
    .end local v0    # "allowParallelSyncs":Z
    .local v48, "allowParallelSyncs":Z
    move-object/from16 v29, v3

    move-object v3, v13

    .line 1124
    .end local v3    # "extras":Landroid/os/Bundle;
    .local v29, "extras":Landroid/os/Bundle;
    move-object/from16 v49, v13

    move-wide v12, v4

    move-object/from16 v5, v29

    move/from16 v4, p3

    .line 1124
    .end local v4    # "delayUntil":J
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .end local v29    # "extras":Landroid/os/Bundle;
    .local v5, "extras":Landroid/os/Bundle;
    .local v12, "delayUntil":J
    .local v49, "account":Landroid/accounts/AccountAndUser;
    move-object/from16 v50, v5

    move-object v5, v8

    .line 1124
    .end local v5    # "extras":Landroid/os/Bundle;
    .local v50, "extras":Landroid/os/Bundle;
    move/from16 v29, v7

    move v7, v10

    move-object/from16 v51, v8

    move-object/from16 v30, v9

    move-wide/from16 v8, p7

    .line 1124
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v30, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v51, "authority":Ljava/lang/String;
    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V

    invoke-static {v0, v15, v14, v11}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 1128
    .end local v6    # "finalExtras":Landroid/os/Bundle;
    nop

    .line 1167
    move-wide/from16 v12, p7

    move/from16 v58, v43

    move-object/from16 v57, v49

    move-object/from16 v32, v50

    move-object/from16 v14, p0

    const/16 v31, 0x0

    goto/16 :goto_49e

    .line 1130
    .end local v12    # "delayUntil":J
    .end local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v47    # "isSyncable":I
    .end local v48    # "allowParallelSyncs":Z
    .end local v49    # "account":Landroid/accounts/AccountAndUser;
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v51    # "authority":Ljava/lang/String;
    .restart local v0    # "allowParallelSyncs":Z
    .restart local v4    # "delayUntil":J
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v11    # "isSyncable":I
    .restart local v13    # "account":Landroid/accounts/AccountAndUser;
    .restart local v46    # "extras":Landroid/os/Bundle;
    :cond_36d
    move/from16 v48, v0

    move/from16 v29, v7

    move-object/from16 v51, v8

    move-object/from16 v30, v9

    move/from16 v47, v11

    move-object/from16 v49, v13

    move-object/from16 v50, v46

    move-wide v12, v4

    .line 1130
    .end local v0    # "allowParallelSyncs":Z
    .end local v4    # "delayUntil":J
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v11    # "isSyncable":I
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .end local v46    # "extras":Landroid/os/Bundle;
    .restart local v12    # "delayUntil":J
    .restart local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v47    # "isSyncable":I
    .restart local v48    # "allowParallelSyncs":Z
    .restart local v49    # "account":Landroid/accounts/AccountAndUser;
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v51    # "authority":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1131
    .local v0, "newExtras":Landroid/os/Bundle;
    const-string v1, "initialize"

    const/4 v14, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1132
    if-eqz v16, :cond_3d8

    .line 1133
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule initialisation Sync:, delay until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", run by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flexMillis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v43

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v43    # "source":I
    .local v10, "source":I
    const-string v3, ", account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v49

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1133
    .end local v49    # "account":Landroid/accounts/AccountAndUser;
    .local v9, "account":Landroid/accounts/AccountAndUser;
    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v51

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .end local v51    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    const-string v3, ", extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3df

    .line 1142
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "account":Landroid/accounts/AccountAndUser;
    .end local v10    # "source":I
    .restart local v43    # "source":I
    .restart local v49    # "account":Landroid/accounts/AccountAndUser;
    .restart local v51    # "authority":Ljava/lang/String;
    :cond_3d8
    move/from16 v10, v43

    move-object/from16 v9, v49

    move-object/from16 v8, v51

    const/4 v11, 0x0

    .line 1142
    .end local v43    # "source":I
    .end local v49    # "account":Landroid/accounts/AccountAndUser;
    .end local v51    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v9    # "account":Landroid/accounts/AccountAndUser;
    .restart local v10    # "source":I
    :goto_3df
    new-instance v7, Lcom/android/server/content/SyncOperation;

    iget-object v2, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v9, Landroid/accounts/AccountAndUser;->userId:I

    move-object v1, v7

    move/from16 v4, v19

    move-object/from16 v5, v28

    move/from16 v6, p3

    move-object v14, v7

    move v7, v10

    move-object/from16 v52, v8

    .end local v8    # "authority":Ljava/lang/String;
    .local v52, "authority":Ljava/lang/String;
    move-wide/from16 v53, v12

    move-object v12, v9

    move-object v9, v0

    .line 1142
    .end local v9    # "account":Landroid/accounts/AccountAndUser;
    .local v12, "account":Landroid/accounts/AccountAndUser;
    .local v53, "delayUntil":J
    move v13, v10

    move/from16 v10, v48

    .line 1142
    .end local v10    # "source":I
    .local v13, "source":I
    move-object/from16 v55, v0

    move/from16 v31, v11

    move/from16 v0, v47

    move/from16 v11, p10

    .line 1142
    .end local v47    # "isSyncable":I
    .local v0, "isSyncable":I
    .local v55, "newExtras":Landroid/os/Bundle;
    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v9, p7

    move-wide/from16 v7, v53

    move-object/from16 v11, p0

    invoke-virtual {v11, v14, v9, v10}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1149
    .end local v53    # "delayUntil":J
    .end local v55    # "newExtras":Landroid/os/Bundle;
    .local v7, "delayUntil":J
    goto :goto_427

    .line 1150
    .end local v7    # "delayUntil":J
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .end local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v48    # "allowParallelSyncs":Z
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v52    # "authority":Ljava/lang/String;
    .local v0, "allowParallelSyncs":Z
    .restart local v4    # "delayUntil":J
    .restart local v8    # "authority":Ljava/lang/String;
    .local v9, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v11    # "isSyncable":I
    .local v13, "account":Landroid/accounts/AccountAndUser;
    .restart local v43    # "source":I
    .restart local v46    # "extras":Landroid/os/Bundle;
    :cond_40c
    move/from16 v48, v0

    move/from16 v29, v7

    move-object/from16 v52, v8

    move-object/from16 v30, v9

    move v0, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v43

    move-object/from16 v50, v46

    const/16 v31, 0x0

    move-wide/from16 v9, p7

    move-wide v7, v4

    .end local v4    # "delayUntil":J
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v11    # "isSyncable":I
    .end local v43    # "source":I
    .end local v46    # "extras":Landroid/os/Bundle;
    .local v0, "isSyncable":I
    .restart local v7    # "delayUntil":J
    .restart local v12    # "account":Landroid/accounts/AccountAndUser;
    .local v13, "source":I
    .restart local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v48    # "allowParallelSyncs":Z
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v52    # "authority":Ljava/lang/String;
    move/from16 v14, p6

    if-eq v14, v1, :cond_431

    if-ne v14, v0, :cond_427

    goto :goto_431

    .line 1167
    .end local v0    # "isSyncable":I
    .end local v7    # "delayUntil":J
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .end local v13    # "source":I
    .end local v15    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v19    # "owningUid":I
    .end local v25    # "syncAllowed":Z
    .end local v28    # "owningPackage":Ljava/lang/String;
    .end local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v34    # "isAlwaysSyncable":Z
    .end local v48    # "allowParallelSyncs":Z
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v52    # "authority":Ljava/lang/String;
    .local v32, "extras":Landroid/os/Bundle;
    .local v57, "account":Landroid/accounts/AccountAndUser;
    .local v58, "source":I
    :cond_427
    :goto_427
    move-object v14, v11

    move-object/from16 v57, v12

    move/from16 v58, v13

    move-object/from16 v32, v50

    move-wide v12, v9

    goto/16 :goto_49e

    .line 1152
    .end local v32    # "extras":Landroid/os/Bundle;
    .end local v57    # "account":Landroid/accounts/AccountAndUser;
    .end local v58    # "source":I
    .restart local v0    # "isSyncable":I
    .restart local v7    # "delayUntil":J
    .restart local v12    # "account":Landroid/accounts/AccountAndUser;
    .restart local v13    # "source":I
    .restart local v15    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v19    # "owningUid":I
    .restart local v25    # "syncAllowed":Z
    .restart local v28    # "owningPackage":Ljava/lang/String;
    .restart local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v34    # "isAlwaysSyncable":Z
    .restart local v48    # "allowParallelSyncs":Z
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v52    # "authority":Ljava/lang/String;
    :cond_431
    :goto_431
    if-eqz v16, :cond_46f

    .line 1153
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSync: delay until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v52

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v52    # "authority":Ljava/lang/String;
    .local v6, "authority":Ljava/lang/String;
    const-string v3, ", extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v50

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1153
    .end local v50    # "extras":Landroid/os/Bundle;
    .restart local v5    # "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_473

    .line 1160
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "authority":Ljava/lang/String;
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v52    # "authority":Ljava/lang/String;
    :cond_46f
    move-object/from16 v5, v50

    move-object/from16 v6, v52

    .line 1160
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v52    # "authority":Ljava/lang/String;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v6    # "authority":Ljava/lang/String;
    :goto_473
    new-instance v4, Lcom/android/server/content/SyncOperation;

    iget-object v2, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v12, Landroid/accounts/AccountAndUser;->userId:I

    move-object v1, v4

    move/from16 v56, v0

    move-object v0, v4

    move/from16 v4, v19

    .line 1160
    .end local v0    # "isSyncable":I
    .local v56, "isSyncable":I
    move-object/from16 v32, v5

    move-object/from16 v5, v28

    .line 1160
    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local v32    # "extras":Landroid/os/Bundle;
    move-object/from16 v33, v6

    move/from16 v6, p3

    .line 1160
    .end local v6    # "authority":Ljava/lang/String;
    .local v33, "authority":Ljava/lang/String;
    move-wide/from16 v35, v7

    move v7, v13

    .line 1160
    .end local v7    # "delayUntil":J
    .local v35, "delayUntil":J
    move-object/from16 v8, v33

    move-object/from16 v57, v12

    move/from16 v58, v13

    move-wide v12, v9

    move-object/from16 v9, v32

    .line 1160
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .end local v13    # "source":I
    .restart local v57    # "account":Landroid/accounts/AccountAndUser;
    .restart local v58    # "source":I
    move/from16 v10, v48

    move-object v14, v11

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-virtual {v14, v0, v12, v13}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1167
    .end local v15    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v19    # "owningUid":I
    .end local v25    # "syncAllowed":Z
    .end local v28    # "owningPackage":Ljava/lang/String;
    .end local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v33    # "authority":Ljava/lang/String;
    .end local v34    # "isAlwaysSyncable":Z
    .end local v35    # "delayUntil":J
    .end local v48    # "allowParallelSyncs":Z
    .end local v56    # "isSyncable":I
    :goto_49e
    nop

    .line 1034
    move/from16 v15, p3

    move-object/from16 v11, p4

    move/from16 v4, p10

    move-wide v5, v12

    move-object v12, v14

    move-object/from16 v3, v17

    move-object/from16 v2, v24

    move/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v8, v32

    move-object/from16 v13, v57

    move/from16 v7, v58

    move/from16 v14, p2

    goto/16 :goto_2b0

    .line 1011
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v27    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "extras":Landroid/os/Bundle;
    .end local v57    # "account":Landroid/accounts/AccountAndUser;
    .end local v58    # "source":I
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    .local v7, "source":I
    .local v8, "extras":Landroid/os/Bundle;
    :cond_4b9
    move-object/from16 v17, v3

    move/from16 v58, v7

    move-object/from16 v32, v8

    move/from16 v26, v10

    move-object v14, v12

    move/from16 v22, v27

    const/16 v29, -0x1

    const/16 v31, 0x0

    move-wide v12, v5

    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "source":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v32    # "extras":Landroid/os/Bundle;
    .restart local v58    # "source":I
    :goto_4c9
    add-int/lit8 v9, v22, 0x1

    move/from16 v15, p3

    move-object/from16 v11, p4

    move/from16 v4, p10

    move-wide v5, v12

    move-object v12, v14

    move-object/from16 v3, v17

    move/from16 v13, v23

    move/from16 v10, v26

    move/from16 v1, v31

    move-object/from16 v8, v32

    move/from16 v7, v58

    const/4 v2, 0x1

    move/from16 v14, p2

    goto/16 :goto_fb

    .line 1169
    .end local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v32    # "extras":Landroid/os/Bundle;
    .end local v58    # "source":I
    .restart local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v7    # "source":I
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_4e4
    move-object/from16 v17, v3

    move/from16 v58, v7

    move-object/from16 v32, v8

    move/from16 v26, v10

    move-object v14, v12

    move-wide v12, v5

    .line 1169
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "source":I
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v17    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v32    # "extras":Landroid/os/Bundle;
    .restart local v58    # "source":I
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .registers 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 1519
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1520
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .registers 27
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1523
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    .line 1524
    .local v8, "isLoggable":Z
    if-nez v7, :cond_15

    .line 1525
    const-string v1, "SyncManager"

    const-string v2, "Can\'t schedule null sync operation."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void

    .line 1528
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 1529
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, v5}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v1

    .line 1530
    .local v1, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v5, -0x1

    if-nez v1, :cond_4d

    .line 1531
    const-string v9, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find backoff values for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v9, Landroid/util/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1533
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 1535
    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1536
    .local v9, "now":J
    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v5, v11, v5

    if-nez v5, :cond_60

    .line 1537
    const-wide/16 v5, 0x0

    goto :goto_69

    :cond_60
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 1538
    .local v5, "backoffDelay":J
    :goto_69
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v12, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v11

    .line 1539
    .local v11, "delayUntil":J
    cmp-long v13, v11, v9

    if-lez v13, :cond_78

    sub-long v13, v11, v9

    goto :goto_7a

    :cond_78
    const-wide/16 v13, 0x0

    .line 1540
    .local v13, "delayUntilDelay":J
    :goto_7a
    if-eqz v8, :cond_9a

    .line 1541
    const-string v15, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backoff delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delayUntil delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_9a
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v19, v5

    move-wide/from16 v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1544
    .end local v5    # "backoffDelay":J
    .end local v9    # "now":J
    .end local v11    # "delayUntil":J
    .end local v13    # "delayUntilDelay":J
    .end local p2    # "minDelay":J
    .local v1, "minDelay":J
    goto :goto_aa

    .line 1547
    .end local v1    # "minDelay":J
    .restart local p2    # "minDelay":J
    :cond_a7
    move-wide/from16 v4, p2

    move-wide v1, v4

    .line 1547
    .end local p2    # "minDelay":J
    .restart local v1    # "minDelay":J
    :goto_aa
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_b2

    .line 1548
    const-wide/16 v1, 0x0

    .line 1554
    .end local v1    # "minDelay":J
    .local v9, "minDelay":J
    :cond_b2
    move-wide v9, v1

    iget-boolean v1, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_1a5

    .line 1555
    const/4 v1, 0x0

    .line 1558
    .local v1, "inheritedSyncExemptionFlag":I
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1559
    .local v4, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 1560
    if-eqz v8, :cond_ee

    .line 1561
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_ee
    return-void

    .line 1566
    .end local v4    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_ef
    goto :goto_be

    .line 1568
    :cond_f0
    const/4 v3, 0x0

    .line 1569
    .local v3, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1570
    .local v4, "now":J
    add-long v11, v4, v9

    iput-wide v11, v7, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v6

    .line 1572
    .local v6, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object v11, v7

    .line 1573
    .local v11, "syncToRun":Lcom/android/server/content/SyncOperation;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_102
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncOperation;

    .line 1574
    .local v13, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v14, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v14, :cond_113

    .line 1575
    goto :goto_102

    .line 1577
    :cond_113
    iget-object v14, v13, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v15, v7, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12b

    .line 1578
    iget-wide v14, v11, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move/from16 v22, v3

    iget-wide v2, v13, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1578
    .end local v3    # "duplicatesCount":I
    .local v22, "duplicatesCount":I
    cmp-long v2, v14, v2

    if-lez v2, :cond_128

    .line 1579
    move-object v11, v13

    .line 1581
    :cond_128
    add-int/lit8 v3, v22, 0x1

    .line 1581
    .end local v13    # "op":Lcom/android/server/content/SyncOperation;
    .end local v22    # "duplicatesCount":I
    .restart local v3    # "duplicatesCount":I
    goto :goto_12d

    .line 1583
    :cond_12b
    move/from16 v22, v3

    :goto_12d
    goto :goto_102

    .line 1584
    :cond_12e
    move/from16 v22, v3

    .line 1584
    .end local v3    # "duplicatesCount":I
    .restart local v22    # "duplicatesCount":I
    const/4 v2, 0x1

    if-le v3, v2, :cond_13a

    .line 1585
    .end local v22    # "duplicatesCount":I
    .restart local v3    # "duplicatesCount":I
    const-string v2, "SyncManager"

    const-string v12, "FATAL ERROR! File a bug if you see this."

    invoke-static {v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_13a
    if-eq v7, v11, :cond_14f

    .line 1596
    const-wide/16 v12, 0x0

    cmp-long v2, v9, v12

    if-nez v2, :cond_14f

    iget v2, v11, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v12, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v2, v12, :cond_14f

    .line 1598
    move-object v11, v7

    .line 1599
    iget v2, v11, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1600
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1605
    :cond_14f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_153
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_195

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncOperation;

    .line 1606
    .local v12, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v13, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v13, :cond_164

    .line 1607
    goto :goto_153

    .line 1609
    :cond_164
    iget-object v13, v12, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_194

    .line 1610
    if-eq v12, v11, :cond_194

    .line 1611
    if-eqz v8, :cond_188

    .line 1612
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cancelling duplicate sync "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_188
    iget v13, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1615
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1616
    const-string/jumbo v13, "scheduleSyncOperationH-duplicate"

    invoke-direct {v0, v12, v13}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1619
    .end local v12    # "op":Lcom/android/server/content/SyncOperation;
    :cond_194
    goto :goto_153

    .line 1620
    :cond_195
    if-eq v11, v7, :cond_1a1

    .line 1622
    if-eqz v8, :cond_1a0

    .line 1623
    const-string v2, "SyncManager"

    const-string v12, "Not scheduling because a duplicate exists."

    invoke-static {v2, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_1a0
    return-void

    .line 1633
    :cond_1a1
    if-lez v1, :cond_1a5

    .line 1634
    iput v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1639
    .end local v1    # "inheritedSyncExemptionFlag":I
    .end local v3    # "duplicatesCount":I
    .end local v4    # "now":J
    .end local v6    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v11    # "syncToRun":Lcom/android/server/content/SyncOperation;
    :cond_1a5
    iget v1, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b0

    .line 1640
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v1

    iput v1, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1643
    :cond_1b0
    if-eqz v8, :cond_1cd

    .line 1644
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduling sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_1cd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v11

    .line 1649
    .local v11, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v1

    if-eqz v1, :cond_1d9

    .line 1650
    const/4 v1, 0x2

    goto :goto_1da

    :cond_1d9
    const/4 v1, 0x1

    :goto_1da
    move v12, v1

    .line 1654
    .local v12, "networkType":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 1655
    const/16 v1, 0x8

    goto :goto_1e5

    :cond_1e4
    const/4 v1, 0x0

    :goto_1e5
    move v13, v1

    .line 1657
    .local v13, "jobFlags":I
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/content/SyncJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1659
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1660
    invoke-virtual {v1, v12}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1661
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1662
    invoke-virtual {v1, v11}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1663
    invoke-virtual {v1, v13}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    .line 1665
    .local v14, "b":Landroid/app/job/JobInfo$Builder;
    iget-boolean v1, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_21c

    .line 1666
    iget-wide v1, v7, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v3, v7, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 1674
    const/4 v3, 0x1

    goto :goto_22f

    .line 1668
    :cond_21c
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_225

    .line 1669
    invoke-virtual {v14, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1671
    :cond_225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1674
    :goto_22f
    iget-object v1, v7, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "require_charging"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23d

    .line 1675
    invoke-virtual {v14, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1678
    :cond_23d
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26c

    .line 1680
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1681
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1682
    .local v1, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v1, :cond_26c

    .line 1683
    const/16 v16, 0x3e8

    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1685
    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iget v5, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1686
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x0

    const-string/jumbo v22, "sync by top app"

    .line 1683
    move-object v15, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1691
    .end local v1    # "dic":Lcom/android/server/DeviceIdleController$LocalService;
    :cond_26c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    if-eqz v1, :cond_287

    .line 1692
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1694
    .local v1, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v1, :cond_287

    .line 1695
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1696
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1695
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    .line 1701
    .end local v1    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    :cond_287
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v2, v7

    move-object v4, v14

    move-wide v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/content/SyncManagerInjector;->wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v14}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1704
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v5

    .line 1703
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 1705
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1312
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1317
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1318
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1319
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1320
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1321
    return-void
.end method

.method static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "onReadyCallback"    # Lcom/android/server/content/SyncManager$OnReadyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2784
    .local p1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2787
    .local v0, "connection":Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2788
    invoke-static {p0, v1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 2789
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2787
    const/16 v3, 0x15

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 2791
    .local v1, "isBound":Z
    if-eqz v1, :cond_2b

    .line 2793
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;

    invoke-direct {v3, p0, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 2801
    :cond_2b
    # invokes: Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2803
    :goto_2e
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 5
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 1303
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1305
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1306
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1307
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1308
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 884
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 885
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 886
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_29

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 887
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 888
    return-void

    .line 890
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_29
    goto :goto_8

    .line 891
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 892
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 13
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .line 1477
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 1478
    .local v0, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1480
    .local v2, "absoluteNow":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    .line 1481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v0, v2

    add-long/2addr v4, v6

    .local v4, "newDelayUntilTime":J
    goto :goto_15

    .line 1483
    .end local v4    # "newDelayUntilTime":J
    :cond_13
    const-wide/16 v4, 0x0

    .line 1485
    .restart local v4    # "newDelayUntilTime":J
    :goto_15
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1486
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1487
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay Until time set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayUntil newDelayUntilTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .registers 11
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .line 4063
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4064
    return v0

    .line 4067
    :cond_4
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 4068
    return v1

    .line 4070
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_1e

    move-object v2, p0

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    .line 4071
    .local v2, "bigger":Landroid/os/Bundle;
    :goto_1f
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_2b

    move-object v3, p1

    goto :goto_2c

    :cond_2b
    move-object v3, p0

    .line 4072
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_2c
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4073
    .local v5, "key":Ljava/lang/String;
    if-nez p2, :cond_49

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 4074
    goto :goto_34

    .line 4076
    :cond_49
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 4077
    return v1

    .line 4079
    :cond_50
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 4080
    return v1

    .line 4082
    .end local v5    # "key":Ljava/lang/String;
    :cond_5f
    goto :goto_34

    .line 4083
    :cond_60
    return v0
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 4
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 375
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .registers 12

    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d6

    if-eqz v0, :cond_7

    .line 521
    monitor-exit p0

    return-void

    .line 523
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d6

    .line 525
    .local v0, "token":J
    :try_start_b
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 526
    const-string v2, "SyncManager"

    const-string v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1b
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 530
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 532
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 534
    .local v2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v3, 0x0

    .line 535
    .local v3, "numPersistedPeriodicSyncs":I
    const/4 v4, 0x0

    .line 536
    .local v4, "numPersistedOneshotSyncs":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 537
    .local v6, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v8

    .line 538
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v8, :cond_65

    .line 539
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_5c

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 542
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    .line 545
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 548
    .end local v6    # "job":Landroid/app/job/JobInfo;
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_65
    :goto_65
    goto :goto_3e

    .line 549
    :cond_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded persisted syncs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodic syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oneshot syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " total system server jobs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "summary":Ljava/lang/String;
    const-string v6, "SyncManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 557
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 559
    sget-boolean v6, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    if-eqz v6, :cond_cb

    if-nez v3, :cond_cb

    .line 560
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 561
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b .. :try_end_cb} :catchall_d1

    .line 564
    .end local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    .end local v3    # "numPersistedPeriodicSyncs":I
    .end local v4    # "numPersistedOneshotSyncs":I
    .end local v5    # "summary":Ljava/lang/String;
    :cond_cb
    :try_start_cb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_d6

    .line 565
    nop

    .line 566
    monitor-exit p0

    return-void

    .line 564
    :catchall_d1
    move-exception v2

    :try_start_d2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d6

    .line 519
    .end local v0    # "token":J
    :catchall_d6
    move-exception v0

    monitor-exit p0

    .line 519
    .end local p0    # "this":Lcom/android/server/content/SyncManager;
    throw v0
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .registers 18

    .line 809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_b

    .line 810
    return-void

    .line 812
    :cond_b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 813
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 814
    .local v3, "userCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v3, :cond_72

    .line 815
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 816
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 818
    .local v7, "userId":I
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v8, v7}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 819
    .local v9, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v10, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 820
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v12, Landroid/content/SyncAdapterType;

    iget-object v12, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_51
    if-ge v13, v12, :cond_69

    aget-object v14, v11, v13

    .line 822
    .local v14, "account":Landroid/accounts/Account;
    invoke-direct {v0, v14, v10, v7}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_64

    .line 823
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v0, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v15, v14, v4, v0, v2}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 820
    .end local v14    # "account":Landroid/accounts/Account;
    :cond_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_51

    .line 827
    .end local v9    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_69
    nop

    .line 818
    move-object/from16 v0, p0

    goto :goto_31

    .line 814
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    .end local v7    # "userId":I
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_17

    .line 829
    .end local v5    # "i":I
    :cond_72
    return-void
.end method

.method private wtfWithLog(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 4224
    const-string v0, "SyncManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WTF: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4226
    return-void
.end method

.method private zeroToEmpty(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 2423
    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1512
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1513
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1731
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1732
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_2e

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v4, 0x0

    .line 1733
    invoke-static {p2, v3, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1734
    const-string v3, "cancelScheduledSyncOperation"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1736
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2e
    goto :goto_8

    .line 1737
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1739
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1740
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1743
    :cond_44
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1714
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1715
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_2f

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1716
    const-string v3, "clearScheduledSyncOperations"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1719
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2f
    goto :goto_8

    .line 1720
    :cond_30
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1722
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "checkAccountAccess"    # Z

    .line 1173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, "status":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1175
    return v1

    .line 1177
    :cond_8
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 1178
    .local v2, "type":Landroid/content/SyncAdapterType;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1179
    invoke-virtual {v3, v2, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 1180
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_17

    .line 1181
    return v1

    .line 1183
    :cond_17
    iget v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1184
    .local v4, "owningUid":I
    iget-object v5, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1186
    .local v5, "owningPackage":Ljava/lang/String;
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1187
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not scheduling job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -- package not allowed to start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_50} :catch_52

    .line 1190
    return v1

    .line 1194
    :cond_51
    goto :goto_53

    .line 1192
    :catch_52
    move-exception v1

    .line 1195
    :goto_53
    if-eqz p4, :cond_85

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_85

    .line 1196
    const-string v1, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Access to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " denied for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v1, 0x3

    return v1

    .line 1201
    :cond_85
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 2025
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2027
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v1}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 2029
    .local v1, "buckets":Lcom/android/server/content/SyncAdapterStateFetcher;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2030
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2031
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2033
    if-eqz p3, :cond_25

    .line 2034
    const-string v2, "Detailed Sync History"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 2037
    :cond_25
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2096
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Pending Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2097
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2099
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2100
    const/4 v1, 0x0

    .line 2101
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2102
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_37

    .line 2103
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    add-int/lit8 v1, v1, 0x1

    .line 2106
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_37
    goto :goto_1c

    .line 2107
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2108
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2113
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Periodic Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2114
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2116
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2117
    const/4 v1, 0x0

    .line 2118
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2119
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_37

    .line 2120
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    add-int/lit8 v1, v1, 0x1

    .line 2123
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_37
    goto :goto_1c

    .line 2124
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2125
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2446
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2447
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 2448
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 43
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2180
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Data connected: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2181
    const-string v3, "Battery saver: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2184
    const-string v3, "Background network restriction: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 2187
    .local v3, "cm":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_38

    const/4 v6, -0x1

    goto :goto_3c

    :cond_38
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v6

    .line 2188
    .local v6, "status":I
    :goto_3c
    packed-switch v6, :pswitch_data_5a4

    .line 2199
    const-string v7, "Unknown("

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2201
    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2201
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    goto :goto_5f

    .line 2196
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v6    # "status":I
    :pswitch_4d
    const-string v7, " enabled"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    goto :goto_5f

    .line 2193
    :pswitch_53
    const-string v7, " whitelisted"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    goto :goto_5f

    .line 2190
    :pswitch_59
    const-string v7, " disabled"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    nop

    .line 2206
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    :goto_5f
    const-string v3, "Auto sync: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v3

    .line 2208
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_aa

    .line 2209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2210
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2211
    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2210
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    goto :goto_6e

    .line 2213
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2215
    :cond_aa
    const-string v6, "Memory low: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    const-string v6, "Device idle: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2217
    const-string v6, "Reported active: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2218
    const-string v6, "Clock valid: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2220
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v6

    .line 2222
    .local v6, "accounts":[Landroid/accounts/AccountAndUser;
    const-string v7, "Accounts: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    sget-object v7, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v6, v7, :cond_ec

    .line 2224
    array-length v7, v6

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_f2

    .line 2226
    :cond_ec
    const-string/jumbo v7, "not known yet"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2229
    .local v7, "now":J
    const-string v9, "Now: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2233
    const-string v9, "Uptime: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v7, v8}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2234
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2235
    const-string v9, "Time spent syncing: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2238
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v9, v9, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2239
    invoke-virtual {v9}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v9

    .line 2238
    invoke-static {v2, v9, v10}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2240
    const-string v9, ", sync "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v9, v9, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v9, v9, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v9, :cond_158

    const-string v9, ""

    goto :goto_15b

    :cond_158
    const-string/jumbo v9, "not "

    :goto_15b
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    const-string v9, "in progress"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Active Syncs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2247
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1bf

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2248
    .local v11, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v12, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v12, v7, v12

    .line 2249
    .local v12, "durationInSeconds":J
    const-string v14, "  "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2251
    invoke-static {v2, v12, v13}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2252
    const-string v14, " - "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    iget-object v14, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v15, p2

    invoke-virtual {v14, v9, v4, v15}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2255
    .end local v11    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v12    # "durationInSeconds":J
    goto :goto_18c

    .line 2256
    :cond_1bf
    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2258
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2259
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2262
    const-string v10, "Sync Status"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v10, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v11, v4}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2268
    array-length v11, v6

    move v12, v4

    :goto_1db
    if-ge v12, v11, :cond_492

    aget-object v13, v6, v12

    .line 2269
    .local v13, "account":Landroid/accounts/AccountAndUser;
    const-string v14, "Account %s u%d %s\n"

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v5, v4, v17

    iget v5, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v4, v16

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v19, 0x2

    aput-object v5, v4, v19

    .line 2269
    invoke-virtual {v1, v14, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2272
    const-string v4, "======================================================================="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    new-instance v4, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2274
    .local v4, "table":Lcom/android/server/content/SyncManager$PrintTable;
    new-array v5, v5, [Ljava/lang/Object;

    const-string v14, "Authority"

    const/16 v17, 0x0

    aput-object v14, v5, v17

    const-string v14, "Syncable"

    const/16 v16, 0x1

    aput-object v14, v5, v16

    const-string v14, "Enabled"

    aput-object v14, v5, v19

    const-string v14, "Stats"

    const/16 v18, 0x3

    aput-object v14, v5, v18

    const/4 v14, 0x4

    const-string v20, "Loc"

    aput-object v20, v5, v14

    const/4 v14, 0x5

    const-string v20, "Poll"

    aput-object v20, v5, v14

    const/4 v14, 0x6

    const-string v20, "Per"

    aput-object v20, v5, v14

    const/4 v14, 0x7

    const-string v20, "Feed"

    aput-object v20, v5, v14

    const/16 v14, 0x8

    const-string v20, "User"

    aput-object v20, v5, v14

    const/16 v14, 0x9

    const-string v20, "Othr"

    aput-object v20, v5, v14

    const/16 v14, 0xa

    const-string v20, "Tot"

    aput-object v20, v5, v14

    const/16 v14, 0xb

    const-string v20, "Fail"

    aput-object v20, v5, v14

    const/16 v14, 0xc

    const-string v20, "Can"

    aput-object v20, v5, v14

    const/16 v14, 0xd

    const-string v20, "Time"

    aput-object v20, v5, v14

    const-string v14, "Last Sync"

    move-object/from16 v21, v3

    const/16 v3, 0xe

    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    aput-object v14, v5, v3

    const-string v14, "Backoff"

    const/16 v3, 0xf

    aput-object v14, v5, v3

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v14, v5}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2298
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2299
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v14, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2300
    new-instance v3, Lcom/android/server/content/SyncManager$15;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2308
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_476

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2309
    .local v14, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v22, v3

    iget-object v3, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v5

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 2309
    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v23, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b0

    .line 2310
    nop

    .line 2308
    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto :goto_28a

    .line 2312
    :cond_2b0
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v3

    .line 2313
    .local v3, "row":I
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v24, v6

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2313
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v24, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v25, v9

    iget-object v9, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 2313
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .local v25, "pm":Landroid/content/pm/PackageManager;
    move/from16 v26, v11

    iget-object v11, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v14

    iget v14, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2313
    .end local v14    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v27, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    invoke-direct {v6, v9, v11, v14}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2314
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 2319
    .local v5, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2320
    .local v6, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncStatusInfo;

    .line 2321
    .local v9, "status":Landroid/content/SyncStatusInfo;
    iget-object v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    iget-object v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2323
    .local v11, "authority":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v28, v5

    const/16 v5, 0x32

    .line 2323
    .end local v5    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .local v28, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    if-le v14, v5, :cond_2f9

    .line 2324
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2326
    :cond_2f9
    const/4 v5, 0x3

    new-array v14, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v14, v5

    iget v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v14, v16

    iget-boolean v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v14, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2328
    new-instance v5, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;

    .line 2328
    .local v5, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-direct {v5, v2, v4}, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2344
    const-string v14, "Total"

    move-object/from16 v29, v2

    iget-object v2, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 2344
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v29, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v30, v11

    sget-object v11, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    .line 2344
    .end local v11    # "authority":Ljava/lang/String;
    .local v30, "authority":Ljava/lang/String;
    move-object/from16 v31, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2344
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .local v31, "account":Landroid/accounts/AccountAndUser;
    invoke-interface {v5, v14, v2, v11, v13}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2345
    const-string v2, "Today"

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v13, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v2, v11, v13, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2346
    const-string v2, "Yestr"

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v13, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v3, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v2, v11, v13, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2348
    const/16 v2, 0xe

    .line 2349
    .local v2, "LAST_SYNC":I
    const/16 v11, 0xf

    .line 2351
    .local v11, "BACKOFF":I
    move v13, v3

    .line 2352
    .local v13, "row1":I
    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v14, v14, v7

    if-lez v14, :cond_3cd

    .line 2353
    add-int/lit8 v14, v13, 0x1

    .line 2353
    .local v14, "row1":I
    move/from16 v32, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    .line 2353
    .end local v2    # "LAST_SYNC":I
    .local v32, "LAST_SYNC":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v5

    const-string v5, "D: "

    .line 2353
    .end local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .local v33, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v34, v10

    move/from16 v35, v11

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 2353
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v11    # "BACKOFF":I
    .local v34, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v35, "BACKOFF":I
    sub-long/2addr v10, v7

    const-wide/16 v36, 0x3e8

    div-long v10, v10, v36

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v2, v10

    const/16 v5, 0xf

    invoke-virtual {v4, v13, v5, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2354
    .end local v13    # "row1":I
    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v10, v7

    if-lez v2, :cond_3c7

    .line 2355
    add-int/lit8 v2, v14, 0x1

    .line 2355
    .local v2, "row1":I
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "B: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v38, v12

    iget-wide v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v11, v7

    div-long v11, v11, v36

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/16 v5, 0xf

    invoke-virtual {v4, v14, v5, v10}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2356
    .end local v14    # "row1":I
    add-int/lit8 v13, v2, 0x1

    .line 2356
    .restart local v13    # "row1":I
    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v14, v14, v36

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v12, v11

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .end local v2    # "row1":I
    goto :goto_3d9

    .line 2360
    .end local v13    # "row1":I
    .restart local v14    # "row1":I
    :cond_3c7
    move/from16 v38, v12

    const/16 v5, 0xf

    move v13, v14

    goto :goto_3d9

    .line 2360
    .end local v14    # "row1":I
    .end local v32    # "LAST_SYNC":I
    .end local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v35    # "BACKOFF":I
    .local v2, "LAST_SYNC":I
    .restart local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v11    # "BACKOFF":I
    .restart local v13    # "row1":I
    :cond_3cd
    move/from16 v32, v2

    move-object/from16 v33, v5

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v38, v12

    const/16 v5, 0xf

    .line 2360
    .end local v2    # "LAST_SYNC":I
    .end local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v11    # "BACKOFF":I
    .restart local v32    # "LAST_SYNC":I
    .restart local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v35    # "BACKOFF":I
    :goto_3d9
    move v2, v3

    .line 2361
    .end local v13    # "row1":I
    .local v2, "row1":I
    iget-wide v10, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_416

    .line 2362
    add-int/lit8 v10, v2, 0x1

    .line 2362
    .local v10, "row1":I
    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v9, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v5, v15, v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SUCCESS"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v14, v11

    const/16 v5, 0xe

    invoke-virtual {v4, v2, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2364
    .end local v2    # "row1":I
    add-int/lit8 v2, v10, 0x1

    .line 2364
    .restart local v2    # "row1":I
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    iget-wide v12, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v12, v13}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v11

    invoke-virtual {v4, v10, v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2366
    .end local v10    # "row1":I
    :cond_416
    iget-wide v10, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_45e

    .line 2367
    add-int/lit8 v5, v2, 0x1

    .line 2367
    .local v5, "row1":I
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v13, v9, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " FAILURE"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/16 v10, 0xe

    invoke-virtual {v4, v2, v10, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2369
    .end local v2    # "row1":I
    add-int/lit8 v2, v5, 0x1

    .line 2369
    .restart local v2    # "row1":I
    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    iget-wide v14, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-virtual {v4, v5, v10, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2371
    .end local v5    # "row1":I
    add-int/lit8 v5, v2, 0x1

    .line 2371
    .restart local v5    # "row1":I
    new-array v13, v11, [Ljava/lang/Object;

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v11, v13, v12

    invoke-virtual {v4, v2, v10, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2371
    .end local v2    # "row1":I
    .end local v3    # "row":I
    .end local v5    # "row1":I
    .end local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "status":Landroid/content/SyncStatusInfo;
    .end local v27    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v30    # "authority":Ljava/lang/String;
    .end local v32    # "LAST_SYNC":I
    .end local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v35    # "BACKOFF":I
    goto :goto_460

    .line 2373
    :cond_45e
    const/16 v10, 0xe

    .line 2308
    :goto_460
    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move/from16 v11, v26

    move-object/from16 v2, v29

    move-object/from16 v13, v31

    move-object/from16 v10, v34

    move/from16 v12, v38

    move-object/from16 v15, p2

    goto/16 :goto_28a

    .line 2374
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v31    # "account":Landroid/accounts/AccountAndUser;
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v6, "accounts":[Landroid/accounts/AccountAndUser;
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .local v10, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v13, "account":Landroid/accounts/AccountAndUser;
    :cond_476
    move-object/from16 v29, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v34, v10

    move/from16 v26, v11

    move/from16 v38, v12

    move-object/from16 v31, v13

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .restart local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v31    # "account":Landroid/accounts/AccountAndUser;
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 2268
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v31    # "account":Landroid/accounts/AccountAndUser;
    add-int/lit8 v12, v38, 0x1

    move-object/from16 v3, v21

    const/4 v4, 0x0

    move-object/from16 v15, p2

    goto/16 :goto_1db

    .line 2377
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_492
    move-object/from16 v29, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v34, v10

    .line 2377
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2379
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2380
    const-string v2, "Per Adapter History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    const/4 v2, 0x0

    .line 2383
    .local v2, "i":I
    :goto_4ad
    move-object/from16 v3, v34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2383
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    if-ge v2, v4, :cond_5a1

    .line 2384
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2386
    .local v4, "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2389
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    const-string v5, " u"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2391
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2392
    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2397
    const-string v5, "    Per source last syncs:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    const/4 v5, 0x0

    .line 2398
    .local v5, "j":I
    :goto_505
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_54e

    .line 2399
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    const-string v6, "%8s"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v11, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    aget-object v11, v11, v5

    const/16 v17, 0x0

    aput-object v11, v10, v17

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    const-string v6, "  Success: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2402
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2404
    const-string v6, "  Failure: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    add-int/lit8 v5, v5, 0x1

    goto :goto_505

    .line 2408
    .end local v5    # "j":I
    :cond_54e
    const/4 v9, 0x1

    const/16 v17, 0x0

    const-string v5, "    Last syncs:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2409
    move/from16 v5, v17

    .line 2409
    .restart local v5    # "j":I
    :goto_558
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    if-ge v5, v6, :cond_58c

    .line 2410
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 2413
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2409
    add-int/lit8 v5, v5, 0x1

    goto :goto_558

    .line 2416
    .end local v5    # "j":I
    :cond_58c
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v5

    if-nez v5, :cond_59b

    .line 2417
    const-string v5, "      N/A"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    .end local v4    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    :cond_59b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v34, v3

    goto/16 :goto_4ad

    .line 2420
    .end local v2    # "i":I
    :cond_5a1
    return-void

    nop

    nop

    :pswitch_data_5a4
    .packed-switch 0x1
        :pswitch_59
        :pswitch_53
        :pswitch_4d
    .end packed-switch
.end method

.method getAllPendingSyncs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 293
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v1, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 296
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v4

    .line 297
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v4, :cond_2f

    .line 298
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v3    # "job":Landroid/app/job/JobInfo;
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2f
    goto :goto_16

    .line 301
    :cond_30
    return-object v1
.end method

.method getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 2

    .line 586
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 587
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 18
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1260
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v1, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 1263
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1264
    new-instance v4, Landroid/content/PeriodicSync;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-wide v10, v3, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v14, v3, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v12, v14, v12

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    goto :goto_46

    .line 1267
    :cond_44
    move-object/from16 v5, p1

    :cond_46
    :goto_46
    goto :goto_d

    .line 1269
    :cond_47
    move-object/from16 v5, p1

    return-object v1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1298
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .registers 8
    .param p1, "userId"    # I

    .line 1287
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1288
    .local v0, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/SyncAdapterType;

    .line 1289
    .local v1, "types":[Landroid/content/SyncAdapterType;
    const/4 v2, 0x0

    .line 1290
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1291
    .local v4, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v1, v2

    .line 1292
    add-int/lit8 v2, v2, 0x1

    .line 1293
    .end local v4    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    goto :goto_11

    .line 1294
    :cond_26
    return-object v1
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 801
    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_a

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    .line 806
    :goto_a
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 788
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 789
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 797
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 792
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .registers 7
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .line 1346
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1348
    .local v0, "payload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1349
    return-void
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1238
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1237
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1239
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1241
    return-void
.end method

.method public resetTodayStats()V
    .registers 3

    .line 4229
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 4230
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;I)V
    .registers 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncExemptionFlag"    # I

    .line 1278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1279
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1280
    sget-wide v8, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, -0x2

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    .line 1283
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    .registers 19
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "syncExemptionFlag"    # I

    .line 937
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    .line 939
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 16
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1249
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1251
    .local v0, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1252
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1253
    return-void
.end method
