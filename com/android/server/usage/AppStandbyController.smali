.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$SettingsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field static final ELAPSED_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_SCHEDULED:I = 0xc

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_UPDATE_STABLE_CHARGING:I = 0xe

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field static final SCREEN_TIME_THRESHOLDS:[J

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field static final THRESHOLD_BUCKETS:[I

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field static final sStandbyUpdatePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActiveAdminApps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation
.end field

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoleWindowMillis:J

.field mAppIdleTempParoled:Z

.field mAppStandbyElapsedThresholds:[J

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mChargingStable:Z

.field mCheckIdleIntervalMillis:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation
.end field

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private mLastAppIdleParoledTime:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field mNotificationSeenTimeoutMillis:J

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageAccessListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPredictionTimeoutMillis:J

.field mStableChargingThresholdMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 132
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    .line 139
    new-array v1, v0, [J

    fill-array-data v1, :array_32

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    .line 146
    new-array v1, v0, [I

    fill-array-data v1, :array_46

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    return-void

    :array_1e
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
    .end array-data

    :array_32
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
    .end array-data

    :array_46
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 312
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 313
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .registers 11
    .param p1, "injector"    # Lcom/android/server/usage/AppStandbyController$Injector;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 207
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 208
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 1703
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1705
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1714
    new-instance v0, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 316
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 317
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 318
    new-instance v0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 319
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 320
    new-instance v0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.CHARGING"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "deviceStates":Landroid/content/IntentFilter;
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_86
    new-instance v3, Lcom/android/server/usage/AppIdleHistory;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 329
    invoke-virtual {v5}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 330
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_86 .. :try_end_9a} :catchall_c5

    .line 332
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v2, "packageFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    return-void

    .line 330
    .end local v2    # "packageFilter":Landroid/content/IntentFilter;
    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppStandbyController;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .registers 31
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 611
    move-wide/from16 v12, p4

    if-gtz p3, :cond_15

    .line 613
    :try_start_a
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_13

    .line 618
    .end local p3    # "uid":I
    .local v0, "uid":I
    nop

    .line 620
    move v14, v0

    goto :goto_17

    .line 614
    .end local v0    # "uid":I
    .restart local p3    # "uid":I
    :catch_13
    move-exception v0

    .line 617
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    .line 620
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_15
    move/from16 v14, p3

    .line 621
    .end local p3    # "uid":I
    .local v14, "uid":I
    :goto_17
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 620
    invoke-virtual {v9, v10, v0, v11}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v15

    .line 627
    .local v15, "isSpecial":Z
    if-eqz v15, :cond_40

    .line 628
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 629
    :try_start_24
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v6, 0x5

    const/16 v7, 0x100

    move-object v2, v10

    move v3, v11

    move-wide v4, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 631
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_3d

    .line 632
    const/4 v6, 0x5

    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-wide v4, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_e9

    .line 631
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 635
    :cond_40
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 636
    :try_start_43
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 637
    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 639
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 640
    .local v1, "reason":I
    const v2, 0xff00

    and-int v7, v1, v2

    .line 644
    .local v7, "oldMainReason":I
    const/16 v2, 0x400

    if-ne v7, v2, :cond_56

    .line 645
    monitor-exit v8

    return-void

    .line 647
    :cond_56
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v6, v2

    .line 648
    .local v6, "oldBucket":I
    const/16 v2, 0xa

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 649
    .local v3, "newBucket":I
    invoke-direct {v9, v0, v12, v13}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v4

    move/from16 v16, v4

    .line 651
    .local v16, "predictionLate":Z
    const/16 v4, 0x100

    if-eq v7, v4, :cond_73

    const/16 v4, 0x300

    if-eq v7, v4, :cond_73

    const/16 v4, 0x200

    if-eq v7, v4, :cond_73

    if-eqz v16, :cond_8c

    .line 656
    :cond_73
    if-nez v16, :cond_85

    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v4, v2, :cond_85

    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v5, 0x28

    if-gt v4, v5, :cond_85

    .line 658
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    move v3, v4

    .line 659
    const/16 v1, 0x501

    goto :goto_8c

    .line 664
    :cond_85
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v4

    move v3, v4

    .line 669
    const/16 v1, 0x200

    .line 674
    :cond_8c
    :goto_8c
    iget-object v4, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v4

    move-wide/from16 v17, v4

    .line 675
    .local v17, "elapsedTimeAdjusted":J
    if-lt v3, v2, :cond_a5

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v2, v4, v17

    if-lez v2, :cond_a5

    .line 677
    const/16 v2, 0xa

    .line 678
    .end local v3    # "newBucket":I
    .local v2, "newBucket":I
    iget v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move v1, v3

    .line 697
    .end local v1    # "reason":I
    .end local v2    # "newBucket":I
    .local v4, "newBucket":I
    .local v19, "reason":I
    :goto_a1
    move/from16 v19, v1

    move v4, v2

    goto :goto_bd

    .line 682
    .end local v4    # "newBucket":I
    .end local v19    # "reason":I
    .restart local v1    # "reason":I
    .restart local v3    # "newBucket":I
    :cond_a5
    const/16 v2, 0x14

    if-lt v3, v2, :cond_ba

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v2, v4, v17

    if-lez v2, :cond_ba

    .line 684
    const/16 v2, 0x14

    .line 686
    .end local v3    # "newBucket":I
    .restart local v2    # "newBucket":I
    if-ne v2, v6, :cond_b6

    .line 687
    iget v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_b8

    .line 688
    :cond_b6
    const/16 v3, 0x307

    :goto_b8
    move v1, v3

    goto :goto_a1

    .line 697
    .end local v2    # "newBucket":I
    .restart local v3    # "newBucket":I
    :cond_ba
    move/from16 v19, v1

    move v4, v3

    .end local v1    # "reason":I
    .end local v3    # "newBucket":I
    .restart local v4    # "newBucket":I
    .restart local v19    # "reason":I
    :goto_bd
    if-lt v6, v4, :cond_c5

    if-eqz v16, :cond_c2

    goto :goto_c5

    .line 703
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v4    # "newBucket":I
    .end local v6    # "oldBucket":I
    .end local v7    # "oldMainReason":I
    .end local v16    # "predictionLate":Z
    .end local v17    # "elapsedTimeAdjusted":J
    .end local v19    # "reason":I
    :cond_c2
    move-object/from16 v24, v8

    goto :goto_e8

    .line 698
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v4    # "newBucket":I
    .restart local v6    # "oldBucket":I
    .restart local v7    # "oldMainReason":I
    .restart local v16    # "predictionLate":Z
    .restart local v17    # "elapsedTimeAdjusted":J
    .restart local v19    # "reason":I
    :cond_c5
    :goto_c5
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, v10

    move v3, v11

    move/from16 v20, v4

    move-wide v4, v12

    .end local v4    # "newBucket":I
    .local v20, "newBucket":I
    move/from16 v21, v6

    move/from16 v6, v20

    .end local v6    # "oldBucket":I
    .local v21, "oldBucket":I
    move/from16 v22, v7

    move/from16 v7, v19

    .end local v7    # "oldMainReason":I
    .local v22, "oldMainReason":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V
    :try_end_d7
    .catchall {:try_start_43 .. :try_end_d7} :catchall_ea

    .line 700
    const/16 v23, 0x0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-wide v4, v12

    move/from16 v6, v20

    move/from16 v7, v19

    move-object/from16 v24, v8

    move/from16 v8, v23

    :try_start_e5
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 703
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "predictionLate":Z
    .end local v17    # "elapsedTimeAdjusted":J
    .end local v19    # "reason":I
    .end local v20    # "newBucket":I
    .end local v21    # "oldBucket":I
    .end local v22    # "oldMainReason":I
    :goto_e8
    monitor-exit v24

    .line 705
    :goto_e9
    return-void

    .line 703
    :catchall_ea
    move-exception v0

    move-object/from16 v24, v8

    :goto_ed
    monitor-exit v24
    :try_end_ee
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_ef

    throw v0

    :catchall_ef
    move-exception v0

    goto :goto_ed
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1301
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1302
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1307
    return-void
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "activeScorer":Ljava/lang/String;
    if-eqz p1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 956
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 958
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1277
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_a

    .line 1279
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsLocked()V

    .line 1281
    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_16

    .line 1282
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1284
    :cond_16
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1285
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1271
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "userStartedInteracting"    # Z

    .line 717
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 720
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object v1

    .line 723
    .local v1, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 725
    .end local v1    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_1f
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 794
    .local v0, "uid":I
    if-eqz p3, :cond_12

    .line 795
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_19

    .line 798
    :cond_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 802
    .end local v0    # "uid":I
    :goto_19
    goto :goto_1b

    .line 801
    :catch_1a
    move-exception v0

    .line 803
    :goto_1b
    return-void
.end method

.method private postNextParoleTimeout(JZ)V
    .registers 10
    .param p1, "now"    # J
    .param p3, "forced"    # Z

    .line 515
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 519
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    sub-long/2addr v2, p1

    .line 520
    .local v2, "timeLeft":J
    if-eqz p3, :cond_11

    .line 523
    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v2, v4

    .line 525
    :cond_11
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_19

    .line 526
    const-wide/16 v2, 0x0

    .line 528
    :cond_19
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 529
    return-void
.end method

.method private postParoleEndTimeout()V
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 534
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    return-void
.end method

.method private postParoleStateChanged()V
    .registers 3

    .line 539
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 540
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 541
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedRealtime"    # J

    .line 709
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 710
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 709
    :goto_1a
    return v0
.end method

.method private usageEventToSubReason(I)I
    .registers 3
    .param p1, "eventType"    # I

    .line 888
    sparse-switch p1, :sswitch_data_16

    .line 896
    const/4 v0, 0x0

    return v0

    .line 894
    :sswitch_5
    const/16 v0, 0x9

    return v0

    .line 895
    :sswitch_8
    const/16 v0, 0xa

    return v0

    .line 893
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 892
    :sswitch_d
    const/4 v0, 0x3

    return v0

    .line 891
    :sswitch_f
    const/4 v0, 0x1

    return v0

    .line 890
    :sswitch_11
    const/4 v0, 0x5

    return v0

    .line 889
    :sswitch_13
    const/4 v0, 0x4

    return v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_11
        0x6 -> :sswitch_f
        0x7 -> :sswitch_d
        0xa -> :sswitch_b
        0xd -> :sswitch_8
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method private waitForAdminData()V
    .registers 5

    .line 1254
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1255
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1258
    :cond_17
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .registers 6
    .param p1, "adminPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1226
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1228
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_18

    .line 1229
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1230
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1232
    :cond_18
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 1234
    return-void

    .line 1233
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 962
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 963
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 964
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_10
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method checkIdleStates(I)Z
    .registers 22
    .param p1, "checkUserId"    # I

    move-object/from16 v7, p0

    .line 566
    move/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v9, 0x0

    if-nez v0, :cond_a

    .line 567
    return v9

    .line 572
    :cond_a
    :try_start_a
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    .line 573
    .local v0, "runningUserIds":[I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1a

    .line 574
    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_68

    if-nez v1, :cond_1a

    .line 575
    return v9

    .line 579
    :cond_1a
    nop

    .line 578
    nop

    .line 581
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 582
    .local v11, "elapsedRealtime":J
    move v1, v9

    .local v1, "i":I
    :goto_23
    move v13, v1

    .end local v1    # "i":I
    .local v13, "i":I
    array-length v1, v0

    if-ge v13, v1, :cond_66

    .line 583
    aget v14, v0, v13

    .line 584
    .local v14, "userId":I
    if-eq v8, v10, :cond_2e

    if-eq v8, v14, :cond_2e

    .line 585
    goto :goto_63

    .line 590
    :cond_2e
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v15

    .line 593
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    .line 594
    .local v5, "packageCount":I
    move v1, v9

    .local v1, "p":I
    :goto_3b
    move v6, v1

    .end local v1    # "p":I
    .local v6, "p":I
    if-ge v6, v5, :cond_63

    .line 595
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 596
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 597
    .local v3, "packageName":Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v1, v7

    move/from16 v16, v2

    move-object v2, v3

    move-object/from16 v17, v3

    move v3, v14

    .end local v3    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v18, v4

    move/from16 v4, v16

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    move/from16 v16, v5

    move/from16 v19, v6

    move-wide v5, v11

    .end local v5    # "packageCount":I
    .end local v6    # "p":I
    .local v16, "packageCount":I
    .local v19, "p":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    .line 594
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "p":I
    .restart local v1    # "p":I
    move/from16 v5, v16

    goto :goto_3b

    .line 582
    .end local v1    # "p":I
    .end local v14    # "userId":I
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "packageCount":I
    :cond_63
    :goto_63
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .local v1, "i":I
    goto :goto_23

    .line 605
    .end local v1    # "i":I
    :cond_66
    const/4 v1, 0x1

    return v1

    .line 577
    .end local v0    # "runningUserIds":[I
    .end local v11    # "elapsedRealtime":J
    :catch_68
    move-exception v0

    .line 578
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method checkParoleTimeout()V
    .registers 16

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "setParoled":Z
    const/4 v1, 0x0

    .line 751
    .local v1, "waitForNetwork":Z
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 752
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    .line 753
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v4

    goto :goto_15

    :cond_14
    move v5, v3

    .line 755
    .local v5, "networkActive":Z
    :goto_15
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 756
    :try_start_18
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v7}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v7

    .line 757
    .local v7, "now":J
    iget-boolean v9, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v9, :cond_43

    .line 758
    iget-wide v9, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long v9, v7, v9

    .line 759
    .local v9, "timeSinceLastParole":J
    iget-wide v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_40

    .line 761
    if-eqz v5, :cond_30

    .line 763
    const/4 v0, 0x1

    goto :goto_43

    .line 765
    :cond_30
    iget-wide v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    iget-wide v13, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v11, v13

    cmp-long v3, v9, v11

    if-lez v3, :cond_3b

    .line 768
    const/4 v0, 0x1

    goto :goto_43

    .line 771
    :cond_3b
    const/4 v1, 0x1

    .line 772
    invoke-direct {p0, v7, v8, v4}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    goto :goto_43

    .line 777
    :cond_40
    invoke-direct {p0, v7, v8, v3}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 780
    .end local v7    # "now":J
    .end local v9    # "timeSinceLastParole":J
    :cond_43
    :goto_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_18 .. :try_end_44} :catchall_55

    .line 781
    if-eqz v1, :cond_4f

    .line 782
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v6, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 784
    :cond_4f
    if-eqz v0, :cond_54

    .line 786
    invoke-virtual {p0, v4}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 788
    :cond_54
    return-void

    .line 780
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v3
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1355
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 1357
    monitor-exit v0

    .line 1358
    return-void

    .line 1357
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method clearCarrierPrivilegedApps()V
    .registers 3

    .line 1292
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1295
    monitor-exit v0

    .line 1296
    return-void

    .line 1295
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1431
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier privileged apps (have="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_ed

    .line 1436
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1437
    const-string v0, "Settings:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const-string v0, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1441
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1443
    const-string v0, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1445
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1447
    const-string v0, "  mAppIdleParoleWindowMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1449
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1451
    const-string v0, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1453
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1455
    const-string v0, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1457
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1458
    const-string v0, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1460
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1461
    const-string v0, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1463
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1465
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1466
    const-string/jumbo v0, "mAppIdleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1467
    const-string v0, " mAppIdleTempParoled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1468
    const-string v0, " mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1469
    const-string v0, " mChargingStable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1470
    const-string v0, " mLastAppIdleParoledTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1472
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1473
    const-string/jumbo v0, "mScreenThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v0, "mElapsedThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v0, "mStableChargingThresholdMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1477
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1478
    return-void

    .line 1434
    :catchall_ed
    move-exception v1

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v1
.end method

.method dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .registers 6
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1425
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 1427
    monitor-exit v0

    .line 1428
    return-void

    .line 1427
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method flushDurationsToDisk()V
    .registers 3

    .line 1345
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 1347
    monitor-exit v0

    .line 1348
    return-void

    .line 1347
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method flushToDisk(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1339
    monitor-exit v0

    .line 1340
    return-void

    .line 1339
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    move-object/from16 v15, p0

    .line 909
    iget-boolean v0, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 911
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v16

    .line 912
    .local v16, "appId":I
    if-gez v16, :cond_e

    return-void

    .line 913
    :cond_e
    iget-object v0, v15, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v17

    .line 915
    .local v17, "elapsedRealtime":J
    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v14

    .line 918
    .local v14, "previouslyIdle":Z
    iget-object v7, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 919
    :try_start_24
    iget-object v1, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v12

    .line 920
    .local v12, "standbyBucket":I
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_59

    .line 921
    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 924
    .local v0, "stillIdle":Z
    if-eq v14, v0, :cond_57

    .line 925
    const/16 v13, 0x400

    const/4 v1, 0x0

    move-object v7, v15

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, v17

    move v2, v14

    move v14, v1

    .end local v14    # "previouslyIdle":Z
    .local v2, "previouslyIdle":Z
    invoke-direct/range {v7 .. v14}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 927
    if-nez v0, :cond_58

    .line 928
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    goto :goto_58

    .line 931
    .end local v2    # "previouslyIdle":Z
    .restart local v14    # "previouslyIdle":Z
    :cond_57
    move v2, v14

    .end local v14    # "previouslyIdle":Z
    .restart local v2    # "previouslyIdle":Z
    :cond_58
    :goto_58
    return-void

    .line 920
    .end local v0    # "stillIdle":Z
    .end local v2    # "previouslyIdle":Z
    .end local v12    # "standbyBucket":I
    .restart local v14    # "previouslyIdle":Z
    :catchall_59
    move-exception v0

    move v2, v14

    .end local v14    # "previouslyIdle":Z
    .restart local v2    # "previouslyIdle":Z
    :goto_5b
    :try_start_5b
    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    throw v0

    :catchall_5d
    move-exception v0

    goto :goto_5b
.end method

.method getActiveAdminAppsForTest(I)Ljava/util/Set;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1263
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getAppId(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 980
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 981
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_c
    move-exception v0

    .line 982
    .local v0, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1140
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1d

    if-eqz p5, :cond_f

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1141
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1d

    .line 1145
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1147
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1

    .line 1142
    :cond_1d
    :goto_1d
    const/16 v0, 0xa

    return v0
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1153
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getBucketForLocked(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result v0

    .line 740
    .local v0, "bucketIndex":I
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget v1, v1, v0

    return v1
.end method

.method getIdleUidsForUser(I)[I
    .registers 15
    .param p1, "userId"    # I

    .line 1068
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1069
    new-array v0, v1, [I

    return-object v0

    .line 1072
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 1076
    .local v6, "elapsedRealtime":J
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1077
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1078
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_1b

    .line 1079
    new-array v1, v1, [I

    return-object v1

    .line 1081
    :cond_1b
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_a3

    .end local v0    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    move-object v0, v2

    .line 1084
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    nop

    .line 1083
    nop

    .line 1088
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v8, v2

    .line 1092
    .local v8, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    .local v2, "i":I
    :goto_2e
    move v10, v2

    .end local v2    # "i":I
    .local v10, "i":I
    if-ltz v10, :cond_6c

    .line 1093
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 1096
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v2

    .line 1099
    .local v2, "idle":Z
    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 1100
    .local v3, "index":I
    const/high16 v4, 0x10000

    if-gez v3, :cond_5b

    .line 1101
    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v2, :cond_55

    goto :goto_56

    :cond_55
    move v4, v1

    :goto_56
    add-int/2addr v4, v9

    invoke-virtual {v8, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_69

    .line 1103
    :cond_5b
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1104
    .local v5, "value":I
    add-int/lit8 v12, v5, 0x1

    if-eqz v2, :cond_64

    goto :goto_65

    :cond_64
    move v4, v1

    :goto_65
    add-int/2addr v12, v4

    invoke-virtual {v8, v3, v12}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1092
    .end local v2    # "idle":Z
    .end local v3    # "index":I
    .end local v5    # "value":I
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_69
    add-int/lit8 v2, v10, -0x1

    .end local v10    # "i":I
    .local v2, "i":I
    goto :goto_2e

    .line 1110
    .end local v2    # "i":I
    :cond_6c
    const/4 v1, 0x0

    .line 1111
    .local v1, "numIdle":I
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v9

    .restart local v2    # "i":I
    :goto_72
    if-ltz v2, :cond_83

    .line 1112
    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 1113
    .local v3, "value":I
    and-int/lit16 v4, v3, 0x7fff

    shr-int/lit8 v5, v3, 0x10

    if-ne v4, v5, :cond_80

    .line 1114
    add-int/lit8 v1, v1, 0x1

    .line 1111
    .end local v3    # "value":I
    :cond_80
    add-int/lit8 v2, v2, -0x1

    goto :goto_72

    .line 1118
    .end local v2    # "i":I
    :cond_83
    new-array v2, v1, [I

    .line 1119
    .local v2, "res":[I
    const/4 v1, 0x0

    .line 1120
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    sub-int/2addr v3, v9

    .local v3, "i":I
    :goto_8b
    if-ltz v3, :cond_a2

    .line 1121
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 1122
    .local v4, "value":I
    and-int/lit16 v5, v4, 0x7fff

    shr-int/lit8 v9, v4, 0x10

    if-ne v5, v9, :cond_9f

    .line 1123
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 1124
    add-int/lit8 v1, v1, 0x1

    .line 1120
    .end local v4    # "value":I
    :cond_9f
    add-int/lit8 v3, v3, -0x1

    goto :goto_8b

    .line 1128
    .end local v3    # "i":I
    :cond_a2
    return-object v2

    .line 1082
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "numIdle":I
    .end local v2    # "res":[I
    .end local v8    # "uidStates":Landroid/util/SparseIntArray;
    :catch_a3
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 941
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 943
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3
.end method

.method informListeners(Ljava/lang/String;IIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I
    .param p5, "userInteraction"    # Z

    .line 1316
    const/16 v0, 0x28

    if-lt p3, v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v4, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 1317
    .local v4, "idle":Z
    :goto_9
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1318
    :try_start_c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    move-object v8, v1

    .line 1319
    .local v8, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1320
    if-eqz p5, :cond_2b

    .line 1321
    invoke-virtual {v8, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1323
    .end local v8    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_2b
    goto :goto_12

    .line 1324
    :cond_2c
    monitor-exit v0

    .line 1325
    return-void

    .line 1324
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    throw v1
.end method

.method informParoleStateChanged()V
    .registers 5

    .line 1328
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    .line 1329
    .local v0, "paroled":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1330
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1331
    .local v3, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v3, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1332
    .end local v3    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    goto :goto_d

    .line 1333
    :cond_1d
    monitor-exit v1

    .line 1334
    return-void

    .line 1333
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method initializeDefaultsForSystemApps(I)V
    .registers 22
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 1378
    move/from16 v11, p1

    iget-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_c

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 1381
    return-void

    .line 1383
    :cond_c
    const-string v0, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appIdleEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 1386
    .local v12, "elapsedRealtime":J
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 1389
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1390
    .local v15, "packageCount":I
    iget-object v9, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    if-ge v0, v15, :cond_7a

    .line 1392
    :try_start_44
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    move-object v10, v2

    .line 1393
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1394
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6f

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1397
    iget-object v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v5, 0xa

    const/4 v6, 0x6

    iget-wide v7, v1, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_76

    add-long v18, v12, v7

    move v4, v11

    const-wide/16 v7, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-wide/from16 v9, v18

    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    :try_start_6b
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_71

    .line 1391
    :cond_6f
    move-object/from16 v16, v9

    :goto_71
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v16

    goto :goto_42

    .line 1402
    .end local v0    # "i":I
    :catchall_76
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_7f

    :cond_7a
    move-object/from16 v16, v9

    monitor-exit v16

    .line 1403
    return-void

    .line 1402
    :catchall_7e
    move-exception v0

    :goto_7f
    monitor-exit v16
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_7e

    throw v0
.end method

.method isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1219
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1220
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1221
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 1222
    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .line 1060
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1061
    const/4 v0, 0x0

    return v0

    .line 1063
    :cond_8
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 988
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 989
    return v1

    .line 991
    :cond_8
    if-eqz p5, :cond_13

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 992
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 993
    return v1

    .line 995
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method isAppSpecial(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 1000
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1002
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 1003
    return v2

    .line 1005
    :cond_a
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_f

    .line 1007
    return v2

    .line 1009
    :cond_f
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1012
    return v2

    .line 1014
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz v1, :cond_50

    .line 1019
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_4a

    if-eqz v1, :cond_25

    .line 1020
    return v2

    .line 1024
    :cond_25
    nop

    .line 1026
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1027
    return v2

    .line 1030
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1031
    return v2

    .line 1034
    :cond_34
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 1035
    invoke-virtual {v1, v3, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1036
    return v2

    .line 1039
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1040
    return v2

    .line 1022
    :catch_4a
    move-exception v0

    .line 1023
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1045
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1046
    return v2

    .line 1049
    :cond_57
    return v0
.end method

.method isDisplayOn()Z
    .registers 2

    .line 1351
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method isParoledOrCharging()Z
    .registers 4

    .line 506
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    nop

    :cond_14
    :goto_14
    monitor-exit v0

    return v1

    .line 510
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 1247
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1248
    return-void
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 347
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 348
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7c

    .line 349
    const-string v0, "AppStandbyController"

    const-string v1, "Setting app idle enabled state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 352
    new-instance v0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 353
    .local v0, "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->registerObserver()V

    .line 354
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 356
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 357
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 358
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 360
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 361
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_56
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 363
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_79

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 367
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-eqz v1, :cond_71

    .line 368
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 371
    :cond_71
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v1, :cond_78

    .line 372
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 374
    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    :cond_78
    goto :goto_89

    .line 363
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v2

    .line 374
    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    :cond_7c
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_89

    .line 375
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 377
    :cond_89
    :goto_89
    return-void
.end method

.method onDeviceIdleModeChanged()V
    .registers 8

    .line 806
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 808
    .local v0, "deviceIdle":Z
    const/4 v1, 0x0

    .line 809
    .local v1, "paroled":Z
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 810
    :try_start_a
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 811
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long/2addr v3, v5

    .line 812
    .local v3, "timeSinceLastParole":J
    if-nez v0, :cond_1d

    iget-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1d

    .line 818
    const/4 v1, 0x1

    goto :goto_20

    .line 819
    :cond_1d
    if-eqz v0, :cond_25

    .line 821
    const/4 v1, 0x0

    .line 825
    .end local v3    # "timeSinceLastParole":J
    :goto_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_27

    .line 826
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 827
    return-void

    .line 823
    .restart local v3    # "timeSinceLastParole":J
    :cond_25
    :try_start_25
    monitor-exit v2

    return-void

    .line 825
    .end local v3    # "timeSinceLastParole":J
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v3
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 947
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 949
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    .line 950
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 951
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 952
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    .line 953
    return-void

    .line 951
    :catchall_13
    move-exception v2

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v2

    .line 952
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw v1
.end method

.method postCheckIdleStates(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 544
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_18

    .line 556
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 559
    :goto_18
    return-void
.end method

.method postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1406
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1407
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1408
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1409
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1410
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1411
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1412
    return-void
.end method

.method postReportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1415
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1416
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1417
    return-void
.end method

.method postReportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1420
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1422
    return-void
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 970
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 971
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 972
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 28
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    move-object/from16 v9, p0

    .line 380
    move/from16 v8, p3

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 383
    :cond_9
    move-object/from16 v7, p1

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "packages":[Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v19

    .line 386
    .local v19, "elapsedRealtime":J
    array-length v4, v6

    const/4 v0, 0x0

    move v5, v0

    :goto_18
    if-ge v5, v4, :cond_ab

    aget-object v0, v6, v5

    move-object v3, v0

    .line 390
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1d
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v3, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v2, v0

    .line 392
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_91

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_35

    .line 393
    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_98

    .line 395
    :cond_35
    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 396
    iget-object v15, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_40} :catch_99

    .line 397
    :try_start_40
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0x8

    const-wide/16 v16, 0x0

    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_7a

    add-long v21, v19, v11

    move-object v11, v3

    move v12, v8

    move-object/from16 v23, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v21

    :try_start_54
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 401
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v11, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_71

    const/4 v12, 0x0

    move-object v1, v9

    move-object v13, v2

    move-object v2, v3

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    move-object v14, v3

    move v3, v8

    .end local v3    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v4, v19

    move-object/from16 v17, v6

    move v6, v10

    .end local v6    # "packages":[Ljava/lang/String;
    .local v17, "packages":[Ljava/lang/String;
    move v7, v11

    move v8, v12

    :try_start_6c
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 403
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v23

    goto :goto_90

    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :catchall_71
    move-exception v0

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_84

    :catchall_7a
    move-exception v0

    move-object v13, v2

    move-object v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v23, v15

    move v15, v4

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_84
    monitor-exit v23
    :try_end_85
    .catchall {:try_start_6c .. :try_end_85} :catchall_88

    :try_start_85
    throw v0
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_86} :catch_86

    .line 405
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catch_86
    move-exception v0

    goto :goto_a0

    .line 403
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_88
    move-exception v0

    goto :goto_84

    .line 407
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_8a
    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_90
    goto :goto_a0

    .line 393
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_91
    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_98
    goto :goto_a0

    .line 405
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :catch_99
    move-exception v0

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 386
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_a0
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v7, p1

    move/from16 v8, p3

    move v4, v15

    move-object/from16 v6, v17

    goto/16 :goto_18

    .line 409
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_ab
    move-object/from16 v17, v6

    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V
    .registers 35
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "elapsedRealtime"    # J
    .param p4, "userId"    # I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v6, p2

    .line 830
    move/from16 v4, p4

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_d

    return-void

    .line 831
    :cond_d
    iget-object v5, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 834
    :try_start_10
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v1, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v0

    .line 837
    .local v0, "previouslyIdle":Z
    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0xe

    const/4 v3, 0x6

    const/4 v8, 0x1

    const/16 v15, 0xa

    if-eq v1, v8, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v11, 0x2

    if-eq v1, v11, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v3, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v11, 0x7

    if-eq v1, v11, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v15, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v2, :cond_44

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v11, 0xd

    if-ne v1, v11, :cond_3f

    goto :goto_44

    .line 884
    .end local v0    # "previouslyIdle":Z
    :cond_3f
    move v13, v4

    move-object/from16 v17, v5

    goto/16 :goto_10b

    .line 845
    .restart local v0    # "previouslyIdle":Z
    :cond_44
    :goto_44
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v11, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v11, v4, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 847
    .local v1, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v14, v11

    .line 848
    .local v14, "prevBucket":I
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move/from16 v25, v11

    .line 850
    .local v25, "prevBucketReason":I
    iget v11, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-direct {v9, v11}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v11

    move/from16 v26, v11

    .line 851
    .local v26, "subReason":I
    const/16 v13, 0x300

    or-int v27, v13, v26

    .line 852
    .local v27, "reason":I
    iget v11, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v11, v15, :cond_ac

    iget v11, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v11, v2, :cond_6b

    .line 855
    move v8, v13

    move v2, v14

    move v3, v15

    goto :goto_af

    .line 859
    :cond_6b
    iget v2, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v2, v3, :cond_8d

    .line 860
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v19, 0xa

    const-wide/16 v21, 0x0

    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v23, v6, v11

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v20, v26

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 863
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 868
    .local v2, "nextCheckTime":J
    move-wide v11, v2

    move v8, v13

    move v2, v14

    move v3, v15

    goto :goto_c8

    .line 865
    .end local v2    # "nextCheckTime":J
    :cond_8d
    iget-object v11, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v3, 0xa

    move/from16 v28, v14

    iget-wide v13, v9, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .end local v14    # "prevBucket":I
    .local v28, "prevBucket":I
    add-long v18, v6, v13

    move-object v12, v1

    const/16 v14, 0x300

    move-object v13, v2

    move v8, v14

    move/from16 v2, v28

    move v14, v3

    .end local v28    # "prevBucket":I
    .local v2, "prevBucket":I
    move v3, v15

    move/from16 v15, v26

    move-wide/from16 v16, v6

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 868
    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    goto :goto_c8

    .line 855
    .end local v2    # "prevBucket":I
    .restart local v14    # "prevBucket":I
    :cond_ac
    move v8, v13

    move v2, v14

    move v3, v15

    .end local v14    # "prevBucket":I
    .restart local v2    # "prevBucket":I
    :goto_af
    iget-object v11, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v12, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v19, 0x14

    const-wide/16 v21, 0x0

    iget-wide v13, v9, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    add-long v23, v6, v13

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    move-object/from16 v18, v12

    move/from16 v20, v26

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 858
    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 868
    .local v11, "nextCheckTime":J
    :goto_c8
    nop

    .line 870
    iget-object v13, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v14, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v15, 0xb

    const/4 v8, -0x1

    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 871
    invoke-virtual {v14, v15, v4, v8, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 870
    invoke-virtual {v13, v3, v11, v12}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 873
    iget v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0xa

    if-ne v3, v8, :cond_ee

    iget v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v2, v3, :cond_ee

    const v3, 0xff00

    and-int v3, v25, v3

    const/16 v8, 0x300

    if-eq v3, v8, :cond_ee

    const/4 v8, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v8, 0x0

    .line 877
    .local v8, "userStartedInteracting":Z
    :goto_ef
    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I
    :try_end_f3
    .catchall {:try_start_10 .. :try_end_f3} :catchall_10d

    move-object v15, v1

    move-object v1, v9

    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v15, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v16, v2

    move-object v2, v3

    .end local v2    # "prevBucket":I
    .local v16, "prevBucket":I
    move v3, v4

    move v13, v4

    move-object/from16 v17, v5

    move-wide v4, v6

    move v6, v14

    move/from16 v7, v27

    :try_start_100
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 880
    if-eqz v0, :cond_10b

    .line 881
    iget-object v1, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v13, v2}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 884
    .end local v0    # "previouslyIdle":Z
    .end local v8    # "userStartedInteracting":Z
    .end local v11    # "nextCheckTime":J
    .end local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "prevBucket":I
    .end local v25    # "prevBucketReason":I
    .end local v26    # "subReason":I
    .end local v27    # "reason":I
    :cond_10b
    :goto_10b
    monitor-exit v17

    .line 885
    return-void

    .line 884
    :catchall_10d
    move-exception v0

    move v13, v4

    move-object/from16 v17, v5

    :goto_111
    monitor-exit v17
    :try_end_112
    .catchall {:try_start_100 .. :try_end_112} :catchall_113

    throw v0

    :catchall_113
    move-exception v0

    goto :goto_111
.end method

.method reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    move-object/from16 v9, p0

    .line 412
    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 418
    :cond_7
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 420
    const/16 v0, 0xa

    .line 421
    .local v0, "bucketToPromote":I
    const/16 v1, 0xb

    .line 422
    .local v1, "usageReason":I
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 427
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .local v2, "durationMillis":J
    .local v19, "bucketToPromote":I
    .local v20, "usageReason":I
    :goto_15
    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_21

    .line 425
    .end local v2    # "durationMillis":J
    .end local v19    # "bucketToPromote":I
    .end local v20    # "usageReason":I
    :cond_1a
    const/16 v0, 0x14

    .line 426
    .restart local v0    # "bucketToPromote":I
    const/16 v1, 0xc

    .line 427
    .restart local v1    # "usageReason":I
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    goto :goto_15

    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .restart local v2    # "durationMillis":J
    .restart local v19    # "bucketToPromote":I
    .restart local v20    # "usageReason":I
    :goto_21
    move-wide/from16 v21, v2

    .line 430
    .end local v2    # "durationMillis":J
    .local v21, "durationMillis":J
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v23

    .line 432
    .local v23, "elapsedRealtime":J
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 433
    :try_start_2c
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v15, 0x0

    add-long v17, v23, v21

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, v19

    move/from16 v14, v20

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 437
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_51

    const/4 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, v23

    move-object v11, v8

    move v8, v10

    :try_start_4c
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 439
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v11

    .line 440
    return-void

    .line 439
    :catchall_51
    move-exception v0

    move-object v11, v8

    :goto_53
    monitor-exit v11
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_55

    throw v0

    :catchall_55
    move-exception v0

    goto :goto_53
.end method

.method reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 443
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    .line 447
    .local v9, "elapsedRealtime":J
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 448
    :try_start_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v3, 0xa

    const/16 v4, 0xd

    const-wide/16 v5, 0x0

    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    add-long v7, v9, v1

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 452
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 454
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v11

    .line 455
    return-void

    .line 454
    :catchall_2e
    move-exception v0

    monitor-exit v11
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1237
    .local p1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1238
    if-nez p1, :cond_d

    .line 1239
    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_12

    .line 1243
    :catchall_b
    move-exception v1

    goto :goto_14

    .line 1241
    :cond_d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1243
    :goto_12
    monitor-exit v0

    .line 1244
    return-void

    .line 1243
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_b

    throw v1
.end method

.method setAppIdleAsync(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 1132
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    goto :goto_12

    .line 1134
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    return-void

    .line 1132
    :cond_12
    :goto_12
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 343
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 344
    return-void
.end method

.method setAppIdleParoled(Z)V
    .registers 6
    .param p1, "paroled"    # Z

    .line 489
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 491
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-eq v3, p1, :cond_1e

    .line 492
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    .line 494
    if-eqz p1, :cond_15

    .line 495
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleEndTimeout()V

    goto :goto_1b

    .line 497
    :cond_15
    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    .line 498
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 500
    :goto_1b
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 502
    .end local v1    # "now":J
    :cond_1e
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J

    .line 1158
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1159
    return-void
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "resetTimeout"    # Z

    move-object/from16 v9, p0

    move/from16 v1, p3

    move-wide/from16 v10, p5

    .line 1163
    iget-object v12, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1164
    :try_start_9
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_9b

    move-object/from16 v13, p1

    move/from16 v14, p2

    :try_start_f
    invoke-virtual {v0, v13, v14, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 1166
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const v2, 0xff00

    and-int v4, p4, v2

    const/16 v5, 0x500

    if-ne v4, v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    move v15, v4

    .line 1169
    .local v15, "predicted":Z
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_28

    monitor-exit v12

    return-void

    .line 1172
    :cond_28
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v6, 0x32

    if-eq v4, v6, :cond_30

    if-ne v1, v6, :cond_34

    :cond_30
    if-eqz v15, :cond_34

    .line 1175
    monitor-exit v12

    return-void

    .line 1179
    :cond_34
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v2, v4

    const/16 v4, 0x400

    if-ne v2, v4, :cond_3f

    if-eqz v15, :cond_3f

    monitor-exit v12

    return-void

    .line 1183
    :cond_3f
    if-eqz v15, :cond_73

    .line 1185
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v6

    .line 1188
    .local v6, "elapsedTimeAdjusted":J
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1190
    if-le v1, v5, :cond_5d

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_5d

    .line 1192
    const/16 v1, 0xa

    .line 1193
    .end local p3    # "newBucket":I
    .local v1, "newBucket":I
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1211
    .end local v1    # "newBucket":I
    .end local v6    # "elapsedTimeAdjusted":J
    .end local p4    # "reason":I
    .local v16, "newBucket":I
    .local v17, "reason":I
    :goto_58
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_77

    .line 1197
    .end local v16    # "newBucket":I
    .end local v17    # "reason":I
    .restart local v6    # "elapsedTimeAdjusted":J
    .restart local p3    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_5d
    const/16 v2, 0x14

    if-le v1, v2, :cond_73

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_73

    .line 1199
    const/16 v1, 0x14

    .line 1200
    .end local p3    # "newBucket":I
    .restart local v1    # "newBucket":I
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v2, v1, :cond_70

    .line 1201
    const/16 v2, 0x307

    goto :goto_58

    .line 1203
    :cond_70
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_72
    .catchall {:try_start_f .. :try_end_72} :catchall_99

    .end local v6    # "elapsedTimeAdjusted":J
    .end local p4    # "reason":I
    .local v2, "reason":I
    goto :goto_58

    .line 1211
    .end local v1    # "newBucket":I
    .end local v2    # "reason":I
    .restart local p3    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_73
    move/from16 v17, p4

    move/from16 v16, v1

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .restart local v16    # "newBucket":I
    .restart local v17    # "reason":I
    :goto_77
    :try_start_77
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, v13

    move v3, v14

    move-wide v4, v10

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1213
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v15    # "predicted":Z
    monitor-exit v12
    :try_end_86
    .catchall {:try_start_77 .. :try_end_86} :catchall_93

    .line 1214
    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v13

    move v3, v14

    move-wide v4, v10

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1215
    return-void

    .line 1213
    :catchall_93
    move-exception v0

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_a2

    .end local v16    # "newBucket":I
    .end local v17    # "reason":I
    .restart local p3    # "newBucket":I
    .restart local p4    # "reason":I
    :catchall_99
    move-exception v0

    goto :goto_a0

    :catchall_9b
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v14, p2

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .restart local v1    # "newBucket":I
    .local v3, "reason":I
    :goto_a0
    move/from16 v3, p4

    :goto_a2
    :try_start_a2
    monitor-exit v12
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a4

    throw v0

    :catchall_a4
    move-exception v0

    goto :goto_a2
.end method

.method setChargingState(Z)V
    .registers 7
    .param p1, "charging"    # Z

    .line 458
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, p1, :cond_1d

    .line 460
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    .line 462
    const/16 v1, 0xe

    if-eqz p1, :cond_15

    .line 467
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    .line 470
    :cond_15
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 474
    :cond_1d
    :goto_1d
    monitor-exit v0

    .line 475
    return-void

    .line 474
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 934
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 936
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateChargingStableState()V
    .registers 4

    .line 478
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, v2, :cond_10

    .line 481
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    .line 482
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 484
    :cond_10
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
