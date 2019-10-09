.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IDLE_OPTIMIZATION_PERIOD:J

.field private static IS_OTA_UPGRADE:Z = false

.field private static final JOB_IDLE_OPTIMIZE:I = 0x320

.field private static final JOB_OTA_IDLE_OPTIMIZE:I = 0x322

.field private static final JOB_POST_BOOT_UPDATE:I = 0x321

.field private static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field private static final OPTIMIZE_ABORT_BY_JOB_SCHEDULER:I = 0x2

.field private static final OPTIMIZE_ABORT_NO_SPACE_LEFT:I = 0x3

.field private static final OPTIMIZE_CONTINUE:I = 0x1

.field private static final OPTIMIZE_PROCESSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static isCharging:Z

.field private static mContext:Landroid/content/Context;

.field private static final mDowngradeUnusedAppsThresholdInMillis:J

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mTop20Pkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static otaHasOptedPkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static otaToOptPkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDataDir:Ljava/io/File;

.field private final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->IS_OTA_UPGRADE:Z

    .line 79
    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 84
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 86
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 108
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 126
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    return-void
.end method

.method private abortIdleOptimizations(J)I
    .registers 8
    .param p1, "lowStorageThreshold"    # J

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 632
    const/4 v0, 0x2

    return v0

    .line 634
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 635
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_2c

    .line 637
    const-string v2, "BackgroundDexOptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x3

    return v2

    .line 641
    :cond_2c
    const/4 v2, 0x1

    return v2
.end method

.method private abortOtaIdleOptimizations(J)I
    .registers 8
    .param p1, "lowStorageThreshold"    # J

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 615
    const/4 v0, 0x2

    return v0

    .line 617
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 618
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_2c

    .line 620
    const-string v2, "BackgroundDexOptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x3

    return v2

    .line 624
    :cond_2c
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic access$000(Lcom/android/server/pm/BackgroundDexOptService;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"    # Landroid/app/job/JobParameters;
    .param p2, "x2"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "x3"    # Landroid/util/ArraySet;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x2"    # Landroid/util/ArraySet;
    .param p3, "x3"    # Landroid/content/Context;
    .param p4, "x4"    # Z

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 64
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    return v0
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/ArraySet;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()J
    .registers 2

    .line 64
    sget-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    return-wide v0
.end method

.method static synthetic access$700()Landroid/content/ComponentName;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x2"    # Landroid/util/ArraySet;
    .param p3, "x3"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getBatteryLevel()I
    .registers 7

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 280
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 281
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 282
    .local v3, "scale":I
    const-string/jumbo v4, "present"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 284
    .local v4, "present":Z
    const/16 v5, 0x64

    if-nez v4, :cond_28

    .line 286
    return v5

    .line 289
    :cond_28
    if-ltz v2, :cond_30

    if-gtz v3, :cond_2d

    goto :goto_30

    .line 294
    :cond_2d
    mul-int/2addr v5, v2

    div-int/2addr v5, v3

    return v5

    .line 291
    :cond_30
    :goto_30
    const/4 v5, 0x0

    return v5
.end method

.method private static getDowngradeUnusedAppsThresholdInMillis()J
    .registers 5

    .line 773
    const-string/jumbo v0, "pm.dexopt.downgrade_after_inactive_days"

    .line 774
    .local v0, "sysPropKey":Ljava/lang/String;
    const-string/jumbo v1, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "sysPropValue":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1e

    .line 779
    :cond_13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2

    .line 776
    :cond_1e
    :goto_1e
    const-string v2, "BackgroundDexOptService"

    const-string v3, "SysProp pm.dexopt.downgrade_after_inactive_days not set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method

.method private getLowStorageThreshold(Landroid/content/Context;)J
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 299
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 300
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    .line 301
    const-string v2, "BackgroundDexOptService"

    const-string v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_17
    return-wide v0
.end method

.method private final getOptPkgsByBatteryLevel()Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v0

    .line 249
    .local v0, "lev":I
    const/4 v1, 0x0

    .line 250
    .local v1, "N":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 251
    .local v2, "otaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v3, 0x50

    if-le v0, v3, :cond_11

    const/16 v1, 0xa

    goto :goto_1e

    .line 252
    :cond_11
    const/16 v3, 0x32

    if-le v0, v3, :cond_17

    const/4 v1, 0x5

    goto :goto_1e

    .line 253
    :cond_17
    const/16 v3, 0x1e

    if-le v0, v3, :cond_1d

    const/4 v1, 0x3

    goto :goto_1e

    .line 254
    :cond_1d
    const/4 v1, 0x0

    .line 255
    :goto_1e
    const/4 v3, 0x0

    .line 256
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_38

    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 257
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 260
    :cond_38
    return-object v2
.end method

.method private static getRecentlyWeekUsageStats(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 217
    const-string/jumbo v0, "usagestats"

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 220
    .local v0, "usm":Landroid/app/usage/UsageStatsManager;
    if-eqz v0, :cond_4c

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    .local v1, "tillTime":J
    const-wide/32 v3, 0x240c8400

    sub-long v3, v1, v3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v3

    .line 225
    .local v3, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    if-eqz v3, :cond_4c

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 229
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    goto :goto_2d

    .line 232
    :cond_43
    new-instance v5, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v5}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    return-object v4

    .line 244
    .end local v1    # "tillTime":J
    .end local v3    # "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v4    # "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_4c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .line 427
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I
    .registers 19
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isOtaCall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)I"
        }
    .end annotation

    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v8, p0

    .line 432
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Performing idle optimizations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, v8, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 436
    const/4 v10, 0x0

    if-eqz p4, :cond_1c

    .line 437
    iget-object v0, v8, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 438
    iget-object v0, v8, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_26

    .line 440
    :cond_1c
    iget-object v0, v8, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 442
    iget-object v0, v8, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    :goto_26
    move-object/from16 v11, p3

    invoke-direct {v8, v11}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v12

    .line 448
    .local v12, "lowStorageThreshold":J
    if-eqz p4, :cond_3c

    .line 449
    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;Z)I

    move-result v0

    .local v0, "result":I
    goto :goto_48

    .line 452
    .end local v0    # "result":I
    :cond_3c
    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    move-object v0, v8

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v0

    .line 455
    .restart local v0    # "result":I
    :goto_48
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 456
    return v0

    .line 459
    :cond_4c
    const-string v2, "dalvik.vm.dexopt.secondary"

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 460
    if-eqz p4, :cond_60

    .line 461
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-direct {v8, v2, v9}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;Z)I

    move-result v0

    .line 465
    .end local v0    # "result":I
    .local v9, "result":I
    :goto_5e
    move v9, v0

    goto :goto_69

    .line 463
    .end local v9    # "result":I
    .restart local v0    # "result":I
    :cond_60
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I

    move-result v0

    goto :goto_5e

    .line 465
    .end local v0    # "result":I
    .restart local v9    # "result":I
    :goto_69
    if-ne v9, v1, :cond_6c

    .line 466
    return v9

    .line 468
    :cond_6c
    if-eqz p4, :cond_7c

    .line 469
    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;Z)I

    move-result v0

    .end local v9    # "result":I
    .restart local v0    # "result":I
    :goto_7b
    goto :goto_89

    .line 472
    .end local v0    # "result":I
    .restart local v9    # "result":I
    :cond_7c
    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    move-object v0, v8

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v0

    goto :goto_7b

    .line 477
    .end local v9    # "result":I
    .restart local v0    # "result":I
    :cond_89
    :goto_89
    return v0
.end method

.method private static isBackgroundDexoptDisabled()Z
    .registers 2

    .line 783
    const-string/jumbo v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 271
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    monitor-enter v1

    .line 272
    :try_start_c
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v1

    .line 274
    return-void

    .line 273
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    .line 270
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private notifyPinService(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 765
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    .line 766
    .local v0, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v0, :cond_23

    .line 767
    const-string v1, "BackgroundDexOptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinning optimized code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v0, p1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;)V

    .line 770
    :cond_23
    return-void
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I
    .registers 15
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"    # J
    .param p5, "is_for_primary_dex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 484
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "failedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;Z)I

    move-result v0

    return v0
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;Z)I
    .registers 29
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"    # J
    .param p5, "is_for_primary_dex"    # Z
    .param p7, "isOtaCall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "failedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    .line 491
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 492
    .local v7, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-wide v8, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v8

    .line 496
    .local v8, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v9, 0x2

    mul-long/2addr v9, v3

    .line 498
    .local v9, "lowStorageThresholdForDowngrade":J
    invoke-direct {v1, v9, v10}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v11

    .line 499
    .local v11, "shouldDowngrade":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 502
    .local v12, "pkg":Ljava/lang/String;
    if-eqz p7, :cond_3b

    .line 503
    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->abortOtaIdleOptimizations(J)I

    move-result v14

    .line 504
    .local v14, "abort_code":I
    sget-boolean v15, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    if-nez v15, :cond_3f

    sget-object v13, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 506
    .end local v14    # "abort_code":I
    :cond_3b
    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v14

    .restart local v14    # "abort_code":I
    :cond_3f
    :goto_3f
    move v13, v14

    .line 510
    .end local v14    # "abort_code":I
    .local v13, "abort_code":I
    const/4 v14, 0x2

    if-ne v13, v14, :cond_44

    .line 511
    return v13

    .line 514
    :cond_44
    monitor-enter p6

    .line 515
    :try_start_45
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 517
    monitor-exit p6

    goto :goto_1f

    .line 519
    :cond_4d
    monitor-exit p6
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_e5

    .line 524
    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    if-eqz v11, :cond_65

    .line 527
    if-eqz p5, :cond_62

    invoke-virtual {v2, v12}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_62

    .line 530
    invoke-virtual {v2, v12}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    .line 531
    goto :goto_1f

    .line 533
    :cond_62
    const/4 v14, 0x5

    .line 534
    .local v14, "reason":I
    const/4 v15, 0x1

    .local v15, "downgrade":Z
    goto :goto_6a

    .line 536
    .end local v14    # "reason":I
    .end local v15    # "downgrade":Z
    :cond_65
    const/4 v14, 0x3

    if-eq v13, v14, :cond_1f

    .line 537
    const/4 v14, 0x3

    .line 538
    .restart local v14    # "reason":I
    const/4 v15, 0x0

    .line 544
    .restart local v15    # "downgrade":Z
    :goto_6a
    monitor-enter p6

    .line 547
    :try_start_6b
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 548
    monitor-exit p6
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_e2

    .line 553
    const/16 v17, 0x5

    .line 556
    if-eqz v15, :cond_76

    const/16 v18, 0x20

    goto :goto_78

    :cond_76
    const/16 v18, 0x0

    :goto_78
    move-object/from16 v19, v0

    or-int v0, v17, v18

    or-int/lit16 v3, v0, 0x200

    .line 558
    .local v3, "dexoptFlags":I
    if-eqz p5, :cond_9a

    .line 559
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, v12, v14, v3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    .line 561
    .local v0, "result":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v4, :cond_90

    move/from16 v16, v5

    goto :goto_92

    :cond_90
    const/16 v16, 0x0

    :goto_92
    move/from16 v4, v16

    .line 562
    .local v4, "success":Z
    if-ne v0, v5, :cond_99

    .line 563
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v0    # "result":I
    :cond_99
    goto :goto_a5

    .line 566
    .end local v4    # "success":Z
    :cond_9a
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 v4, v3, 0x8

    invoke-direct {v0, v12, v14, v4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v4

    .line 569
    .restart local v4    # "success":Z
    :goto_a5
    if-eqz v4, :cond_d2

    .line 571
    monitor-enter p6

    .line 572
    :try_start_a8
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 573
    monitor-exit p6
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_cf

    .line 575
    if-eqz p7, :cond_d2

    .line 576
    const-string v0, "BackgroundDexOptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After ota, optimize package : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCharging = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 573
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit p6
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v0

    .line 582
    :cond_d2
    :goto_d2
    move/from16 v20, v3

    const-wide/16 v2, 0xc8

    .end local v3    # "dexoptFlags":I
    .local v20, "dexoptFlags":I
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 583
    .end local v4    # "success":Z
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "abort_code":I
    .end local v14    # "reason":I
    .end local v15    # "downgrade":Z
    .end local v20    # "dexoptFlags":I
    nop

    .line 499
    move-object/from16 v0, v19

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    goto/16 :goto_1f

    .line 548
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "abort_code":I
    .restart local v14    # "reason":I
    .restart local v15    # "downgrade":Z
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit p6
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    .line 519
    .end local v14    # "reason":I
    .end local v15    # "downgrade":Z
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit p6
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0

    .line 584
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "abort_code":I
    :cond_e8
    invoke-direct {v1, v7}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method private postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 16
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 328
    .local v0, "lowBatteryThreshold":I
    invoke-direct {p0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v1

    .line 330
    .local v1, "lowThreshold":J
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 332
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 333
    .local v3, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 334
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 336
    return-void

    .line 338
    :cond_33
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 340
    goto :goto_75

    .line 342
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v7

    if-ge v7, v0, :cond_43

    .line 344
    goto :goto_75

    .line 346
    :cond_43
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 347
    .local v7, "usableSpace":J
    cmp-long v9, v7, v1

    if-gez v9, :cond_64

    .line 349
    const-string v5, "BackgroundDexOptService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    goto :goto_75

    .line 366
    :cond_64
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-direct {v9, v6, v11, v10}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v9}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v9

    .line 370
    .local v9, "result":I
    if-ne v9, v11, :cond_74

    .line 371
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "usableSpace":J
    .end local v9    # "result":I
    :cond_74
    goto :goto_1e

    .line 374
    :cond_75
    :goto_75
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 376
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 377
    return-void
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I
    .registers 3
    .param p1, "dm"    # Lcom/android/server/pm/dex/DexManager;

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;Z)I

    move-result v0

    return v0
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;Z)I
    .registers 7
    .param p1, "dm"    # Lcom/android/server/pm/dex/DexManager;
    .param p2, "isOtaCall"    # Z

    .line 595
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    .local v1, "p":Ljava/lang/String;
    if-nez p2, :cond_1e

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_1e
    if-eqz p2, :cond_2a

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 598
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 599
    :cond_28
    const/4 v0, 0x2

    return v0

    .line 602
    :cond_2a
    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 605
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 606
    .end local v1    # "p":Ljava/lang/String;
    goto :goto_8

    .line 607
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 408
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/pm/BackgroundDexOptService$4;

    const-string v2, "BackgroundDexOptService_IdleOptimization"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$4;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V

    .line 419
    invoke-virtual {v6}, Lcom/android/server/pm/BackgroundDexOptService$4;->start()V

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public static runIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 663
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    .line 665
    .local v0, "bdos":Lcom/android/server/pm/BackgroundDexOptService;
    if-nez p2, :cond_c

    .line 666
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_11

    .line 668
    .end local v1    # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 670
    .restart local v1    # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_11
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v2

    .line 671
    .local v2, "result":I
    if-nez v2, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    return v3
.end method

.method private runOtaIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 382
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/pm/BackgroundDexOptService$3;

    const-string v2, "BackgroundDexOptService_OtaIdleOptimization"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V

    .line 401
    invoke-virtual {v6}, Lcom/android/server/pm/BackgroundDexOptService$3;->start()V

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 309
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 311
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_a
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    const-string v3, "BackgroundDexOptService_PostBootUpdate"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    .line 319
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    return-void

    .line 134
    :cond_7
    sput-object p0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    .line 135
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    .line 139
    :cond_14
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    if-nez v0, :cond_1f

    .line 140
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    .line 143
    :cond_1f
    const-string v0, "batterymanager"

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 145
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    if-eqz v0, :cond_2f

    .line 146
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    .line 150
    :cond_2f
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 154
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x321

    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 155
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 156
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 160
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v2, :cond_64

    const/4 v2, 0x0

    goto :goto_6a

    :cond_64
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v2

    :goto_6a
    sput-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->IS_OTA_UPGRADE:Z

    .line 161
    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->IS_OTA_UPGRADE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_bb

    .line 162
    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    const-wide/16 v4, 0xa

    const/16 v6, 0x322

    if-nez v2, :cond_9a

    .line 163
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v7, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v6, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 164
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d9

    .line 169
    :cond_9a
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v7, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v6, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 170
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d9

    .line 178
    :cond_bb
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x320

    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 179
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 188
    :goto_d9
    return-void
.end method

.method public static setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V
    .registers 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 192
    sput-object p0, Lcom/android/server/pm/BackgroundDexOptService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 193
    return-void
.end method

.method private shouldDowngrade(J)Z
    .registers 6
    .param p1, "lowStorageThresholdForDowngrade"    # J

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 647
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_c

    .line 648
    const/4 v2, 0x1

    return v2

    .line 651
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private static updateTop20ThirdPartyPkgs()V
    .registers 8

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    .line 197
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundDexOptService;->getRecentlyWeekUsageStats(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "usageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 199
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v3, v1, :cond_4f

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 201
    .local v3, "usage":Landroid/app/usage/UsageStats;
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 203
    :try_start_30
    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 204
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_43

    goto :goto_4a

    .line 207
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_4c

    .line 208
    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v3    # "usage":Landroid/app/usage/UsageStats;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_13

    .line 205
    .restart local v3    # "usage":Landroid/app/usage/UsageStats;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v5

    goto :goto_13

    .line 207
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_4c
    move-exception v1

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v1

    .line 210
    .end local v3    # "usage":Landroid/app/usage/UsageStats;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4f
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->mTop20Pkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 211
    const-string v1, "BackgroundDexOptService"

    const-string v3, "abnormal! getTop20ThirdPartyPkgs returns empty."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5e
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 9
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 683
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 684
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 688
    return v2

    .line 691
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .line 692
    .local v1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 696
    return v2

    .line 699
    :cond_1c
    const/4 v3, 0x0

    .line 700
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    const/16 v5, 0x321

    if-ne v4, v5, :cond_2a

    .line 701
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v3

    goto :goto_7b

    .line 702
    :cond_2a
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    const/16 v5, 0x320

    if-ne v4, v5, :cond_37

    .line 703
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v3

    goto :goto_7b

    .line 705
    :cond_37
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    const/16 v5, 0x322

    if-ne v4, v5, :cond_7b

    .line 706
    sget-boolean v4, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    if-eqz v4, :cond_48

    .line 707
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->runOtaIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v3

    goto :goto_7b

    .line 709
    :cond_48
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->updateTop20ThirdPartyPkgs()V

    .line 710
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getOptPkgsByBatteryLevel()Landroid/util/ArraySet;

    move-result-object v4

    .line 711
    .local v4, "otaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 712
    return v2

    .line 715
    :cond_56
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 716
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 717
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_74

    .line 718
    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 720
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_74
    goto :goto_61

    .line 721
    :cond_75
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runOtaIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v3

    .line 725
    .end local v4    # "otaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7b
    :goto_7b
    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 734
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x321

    if-ne v0, v3, :cond_10

    .line 735
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 738
    return v1

    .line 739
    :cond_10
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v3, 0x320

    if-ne v0, v3, :cond_23

    .line 740
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 744
    return v2

    .line 745
    :cond_23
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v3, 0x322

    if-ne v0, v3, :cond_5c

    .line 746
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortOtaIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z

    if-eqz v0, :cond_3a

    .line 750
    return v2

    .line 752
    :cond_3a
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_53

    .line 754
    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 756
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_53
    goto :goto_40

    .line 757
    :cond_54
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 760
    :cond_5c
    return v1
.end method
