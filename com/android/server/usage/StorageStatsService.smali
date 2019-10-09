.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J

.field private static final DELAY_IN_MILLIS:J = 0x7530L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field private static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackage:Landroid/content/pm/PackageManager;

.field private final mStorage:Landroid/os/storage/StorageManager;

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 77
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 105
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 106
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 108
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 111
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 112
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 115
    new-instance v0, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 116
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 118
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usage/StorageStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 70
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 70
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 70
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 447
    cmp-long v0, p1, p3

    if-eqz v0, :cond_25

    .line 448
    const-string v0, "StorageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_25
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/content/pm/PackageStats;
    .param p2, "b"    # Landroid/content/pm/PackageStats;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 444
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # [J
    .param p2, "b"    # [J

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method private enforcePermission(ILjava/lang/String;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "mode":I
    if-eqz v0, :cond_3e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 147
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " blocked by mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_3e
    return-void
.end method

.method private getAppIds(I)[I
    .registers 7
    .param p1, "userId"    # I

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "appIds":[I
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 415
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 416
    .local v3, "appId":I
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_29

    .line 417
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 419
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appId":I
    :cond_29
    goto :goto_d

    .line 420
    :cond_2a
    return-object v0
.end method

.method private static getDefaultFlags()I
    .registers 2

    .line 424
    const-string v0, "fw.disable_quota"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 425
    return v1

    .line 427
    :cond_a
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .registers 4

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 137
    goto :goto_e

    .line 135
    :catch_6
    move-exception v0

    .line 136
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "StorageStatsService"

    const-string v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_e
    return-void
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 548
    const-string v0, "enable_cache_quota_calculation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .registers 6
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .line 453
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 454
    .local v0, "res":Landroid/app/usage/StorageStats;
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 455
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 456
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 457
    return-object v0
.end method


# virtual methods
.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 228
    const-wide/16 v0, 0x0

    .line 229
    .local v0, "cacheBytes":J
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 230
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v4

    .line 231
    .local v4, "stats":Landroid/app/usage/StorageStats;
    iget-wide v5, v4, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v5

    .line 232
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "stats":Landroid/app/usage/StorageStats;
    goto :goto_13

    .line 233
    :cond_2a
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 241
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 242
    .local v0, "uidMap":Landroid/util/SparseLongArray;
    sget-wide v1, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    return-wide v1

    .line 245
    .end local v0    # "uidMap":Landroid/util/SparseLongArray;
    :cond_1e
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide v0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 14
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_3c
    .catchall {:try_start_4 .. :try_end_a} :catchall_3a

    .line 205
    .local v2, "path":Ljava/io/File;
    nop

    .line 204
    nop

    .line 210
    :try_start_c
    const-string v3, "android"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 211
    const-string v3, "android"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 212
    .local v3, "cacheTotal":J
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v5

    .line 213
    .local v5, "cacheReserved":J
    const-wide/16 v7, 0x0

    sub-long v9, v3, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 215
    .local v7, "cacheClearable":J
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v9
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_3a

    add-long/2addr v9, v7

    .line 220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-wide v9

    .line 217
    .end local v3    # "cacheTotal":J
    .end local v5    # "cacheReserved":J
    .end local v7    # "cacheClearable":J
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_3a

    .line 220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    return-wide v3

    .line 220
    .end local v2    # "path":Ljava/io/File;
    :catchall_3a
    move-exception v2

    goto :goto_43

    .line 203
    :catch_3c
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3d
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_3a

    .line 220
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 182
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v0, :cond_f

    .line 183
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0

    .line 185
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 186
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_20

    .line 190
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide v1, v1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v1, v2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v1

    return-wide v1

    .line 187
    :cond_20
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find storage device for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 161
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 162
    :catch_e
    move-exception v0

    .line 163
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 171
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_14

    .line 172
    const-string/jumbo v0, "vold.has_reserved"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 174
    :cond_14
    return v1
.end method

.method notifySignificantDelta()V
    .registers 5

    .line 557
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.externalstorage.documents/"

    .line 558
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 557
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 559
    return-void
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .registers 10
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 380
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 387
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 390
    .local v0, "appIds":[I
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v1

    .line 392
    .local v1, "stats":[J
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 393
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v2

    .line 395
    .local v2, "manualStats":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_47
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_47} :catch_6c

    .line 399
    .end local v2    # "manualStats":[J
    :cond_47
    nop

    .line 398
    nop

    .line 401
    new-instance v2, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v2}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 402
    .local v2, "res":Landroid/app/usage/ExternalStorageStats;
    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 403
    const/4 v3, 0x1

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 404
    const/4 v3, 0x2

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 405
    const/4 v3, 0x3

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 406
    const/4 v3, 0x4

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 407
    const/4 v3, 0x5

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 408
    return-object v2

    .line 397
    .end local v1    # "stats":[J
    .end local v2    # "res":Landroid/app/usage/ExternalStorageStats;
    :catch_6c
    move-exception v1

    .line 398
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 25
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v12, p3

    .line 251
    move-object/from16 v13, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v12, v0, :cond_17

    .line 252
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    const-string v4, "StorageStatsService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_17
    :try_start_17
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v0, v2, v3, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1f} :catch_b2

    move-object v14, v0

    .line 262
    .local v14, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 261
    nop

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v3, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_2b

    goto :goto_32

    .line 267
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v13}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 270
    :goto_32
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v3, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4b

    .line 272
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v15, p1

    invoke-virtual {v1, v15, v0, v13}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 275
    :cond_4b
    move-object/from16 v15, p1

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 276
    .local v16, "appId":I
    new-array v5, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v5, v0

    .line 277
    .local v5, "packageNames":[Ljava/lang/String;
    new-array v11, v3, [J

    .line 278
    .local v11, "ceDataInodes":[J
    new-array v0, v0, [Ljava/lang/String;

    .line 280
    .local v0, "codePaths":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_76

    .line 283
    :cond_69
    const-class v3, Ljava/lang/String;

    .line 284
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {v3, v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 287
    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    :goto_76
    move-object/from16 v17, v0

    new-instance v0, Landroid/content/pm/PackageStats;

    const-string v3, "StorageStatsService"

    invoke-direct {v0, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 289
    .local v10, "stats":Landroid/content/pm/PackageStats;
    :try_start_80
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_82
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_80 .. :try_end_82} :catch_9f

    const/4 v7, 0x0

    move-object v4, v15

    move v6, v12

    move/from16 v8, v16

    move-object v9, v11

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v10    # "stats":Landroid/content/pm/PackageStats;
    .local v18, "stats":Landroid/content/pm/PackageStats;
    move-object/from16 v19, v11

    move-object/from16 v11, v18

    .end local v11    # "ceDataInodes":[J
    .local v19, "ceDataInodes":[J
    :try_start_90
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_93
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_90 .. :try_end_93} :catch_9b

    .line 293
    nop

    .line 294
    move-object/from16 v3, v18

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .local v3, "stats":Landroid/content/pm/PackageStats;
    return-object v0

    .line 291
    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .restart local v18    # "stats":Landroid/content/pm/PackageStats;
    :catch_9b
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .restart local v3    # "stats":Landroid/content/pm/PackageStats;
    goto :goto_a3

    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .end local v19    # "ceDataInodes":[J
    .restart local v10    # "stats":Landroid/content/pm/PackageStats;
    .restart local v11    # "ceDataInodes":[J
    :catch_9f
    move-exception v0

    move-object v3, v10

    move-object/from16 v19, v11

    .line 292
    .end local v10    # "stats":Landroid/content/pm/PackageStats;
    .end local v11    # "ceDataInodes":[J
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v3    # "stats":Landroid/content/pm/PackageStats;
    .restart local v19    # "ceDataInodes":[J
    :goto_a3
    new-instance v4, Landroid/os/ParcelableException;

    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 260
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .end local v5    # "packageNames":[Ljava/lang/String;
    .end local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "appId":I
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v19    # "ceDataInodes":[J
    :catch_b2
    move-exception v0

    move-object/from16 v15, p1

    .line 261
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 23
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 300
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 301
    .local v12, "userId":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 303
    .local v13, "appId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v12, v0, :cond_1b

    .line 304
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    const-string v4, "StorageStatsService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v2, :cond_24

    .line 314
    move-object/from16 v14, p3

    goto :goto_2d

    .line 311
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v14, p3

    invoke-direct {v1, v0, v14}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 314
    :goto_2d
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, "packageNames":[Ljava/lang/String;
    array-length v0, v15

    new-array v11, v0, [J

    .line 316
    .local v11, "ceDataInodes":[J
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    .line 318
    .local v3, "codePaths":[Ljava/lang/String;
    move-object v10, v3

    move v3, v0

    .local v3, "i":I
    .local v10, "codePaths":[Ljava/lang/String;
    :goto_3f
    array-length v4, v15

    if-ge v3, v4, :cond_71

    .line 320
    :try_start_42
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v5, v15, v3

    const/16 v6, 0x2000

    invoke-virtual {v4, v5, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 322
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_59

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_66

    .line 325
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_59
    const-class v5, Ljava/lang/String;

    .line 326
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-static {v5, v10, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_65} :catch_6a

    move-object v10, v5

    .line 330
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_66
    nop

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 328
    :catch_6a
    move-exception v0

    .line 329
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/os/ParcelableException;

    invoke-direct {v4, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 333
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    :cond_71
    new-instance v3, Landroid/content/pm/PackageStats;

    const-string v4, "StorageStatsService"

    invoke-direct {v3, v4}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    .line 335
    .local v9, "stats":Landroid/content/pm/PackageStats;
    :try_start_79
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v7
    :try_end_7f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_79 .. :try_end_7f} :catch_d3

    move-object/from16 v4, p1

    move-object v5, v15

    move v6, v12

    move v8, v13

    move-object/from16 v16, v9

    move-object v9, v11

    .end local v9    # "stats":Landroid/content/pm/PackageStats;
    .local v16, "stats":Landroid/content/pm/PackageStats;
    move-object/from16 v17, v10

    .end local v10    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    move-object/from16 v18, v11

    move-object/from16 v11, v16

    .end local v11    # "ceDataInodes":[J
    .local v18, "ceDataInodes":[J
    :try_start_8d
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 338
    const-string v3, "fw.verify_storage"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 339
    new-instance v0, Landroid/content/pm/PackageStats;

    const-string v3, "StorageStatsService"

    invoke-direct {v0, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object v5, v15

    move v6, v12

    move v8, v13

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object v11, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_c0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8d .. :try_end_c0} :catch_cf

    move-object/from16 v4, v16

    :try_start_c2
    invoke-static {v3, v0, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_c5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c2 .. :try_end_c5} :catch_c6

    .end local v0    # "manualStats":Landroid/content/pm/PackageStats;
    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .local v4, "stats":Landroid/content/pm/PackageStats;
    goto :goto_ca

    .line 344
    :catch_c6
    move-exception v0

    goto :goto_d9

    .line 346
    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :cond_c8
    move-object/from16 v4, v16

    .line 347
    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    :goto_ca
    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 344
    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_cf
    move-exception v0

    move-object/from16 v4, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    goto :goto_d9

    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v18    # "ceDataInodes":[J
    .restart local v9    # "stats":Landroid/content/pm/PackageStats;
    .restart local v10    # "codePaths":[Ljava/lang/String;
    .restart local v11    # "ceDataInodes":[J
    :catch_d3
    move-exception v0

    move-object v4, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    .line 345
    .end local v9    # "stats":Landroid/content/pm/PackageStats;
    .end local v10    # "codePaths":[Ljava/lang/String;
    .end local v11    # "ceDataInodes":[J
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v17    # "codePaths":[Ljava/lang/String;
    .restart local v18    # "ceDataInodes":[J
    :goto_d9
    new-instance v3, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 13
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 353
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 360
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 361
    .local v0, "appIds":[I
    new-instance v1, Landroid/content/pm/PackageStats;

    const-string v2, "StorageStatsService"

    invoke-direct {v1, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 363
    .local v7, "stats":Landroid/content/pm/PackageStats;
    :try_start_22
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v4

    move-object v2, p1

    move v3, p2

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 365
    const-string v1, "fw.verify_storage"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 366
    new-instance v1, Landroid/content/pm/PackageStats;

    const-string v2, "StorageStatsService"

    invoke-direct {v1, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 367
    .local v8, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v5, v0

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v7}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_5e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_22 .. :try_end_5e} :catch_64

    .line 372
    .end local v8    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_5e
    nop

    .line 373
    invoke-static {v7}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 370
    :catch_64
    move-exception v1

    .line 371
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
