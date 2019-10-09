.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field private static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field private static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field private static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

.field private final mQuotaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStatsManager"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p4, "quotaMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseLongArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 101
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 102
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 104
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "cachequota.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 75
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 75
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;
    .param p1, "x1"    # Landroid/app/usage/ICacheQuotaService;

    .line 75
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 75
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createServiceConnection()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_5

    .line 125
    return-void

    .line 128
    :cond_5
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 161
    return-void
.end method

.method private disconnectService()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 258
    :cond_e
    return-void
.end method

.method static getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "uuid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "uid":I
    const-string v3, "bytes"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 399
    .local v3, "bytes":J
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 400
    invoke-virtual {v5, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v5
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_32} :catch_33

    .line 399
    return-object v5

    .line 401
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "bytes":J
    :catch_33
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "Invalid cache quota request, skipping."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v0
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .registers 8

    .line 261
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 264
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "could not access the cache quota service: no package!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v1

    .line 268
    :cond_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.usage.CacheQuotaService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 272
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_3e

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_32

    goto :goto_3e

    .line 276
    :cond_32
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 277
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 273
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_3e
    :goto_3e
    const-string v4, "CacheQuotaStrategy"

    const-string v5, "No valid components found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-object v1
.end method

.method private getUnfulfilledRequests()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    .line 168
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 169
    .local v10, "timeNow":J
    const-wide v2, 0x7528ad000L

    sub-long v12, v10, v2

    .line 171
    .local v12, "oneYearAgo":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 172
    .local v14, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/UserManager;

    .line 173
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 174
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 175
    .local v7, "userCount":I
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 176
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    move v0, v5

    .local v0, "i":I
    :goto_2e
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v7, :cond_ba

    .line 177
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 178
    .local v4, "info":Landroid/content/pm/UserInfo;
    iget-object v2, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v0, 0x4

    const/16 v16, 0x0

    .line 179
    move-object/from16 v17, v4

    move v4, v0

    .end local v4    # "info":Landroid/content/pm/UserInfo;
    .local v17, "info":Landroid/content/pm/UserInfo;
    move/from16 v18, v6

    move-wide v5, v12

    .end local v6    # "i":I
    .local v18, "i":I
    move/from16 v19, v7

    move-object/from16 v20, v8

    move-wide v7, v10

    .end local v7    # "userCount":I
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .local v19, "userCount":I
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v21, v9

    move/from16 v9, v16

    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v2 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v2, :cond_58

    .line 182
    nop

    .line 176
    move-object/from16 v7, v20

    goto :goto_ae

    .line 185
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 186
    .local v4, "stat":Landroid/app/usage/UsageStats;
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 190
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v6, v17

    :try_start_70
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_72} :catch_a1

    .end local v17    # "info":Landroid/content/pm/UserInfo;
    .local v6, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v7, v20

    const/4 v8, 0x0

    :try_start_75
    invoke-virtual {v7, v5, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 192
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v9}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 194
    invoke-virtual {v9, v8}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v8

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 195
    invoke-virtual {v8, v9}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v8

    .line 196
    invoke-virtual {v8, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v8

    move-object/from16 v22, v0

    const-wide/16 v0, -0x1

    .line 197
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    .line 192
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_9d} :catch_9f

    .line 202
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 203
    .end local v4    # "stat":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_a5

    .line 199
    .restart local v4    # "stat":Landroid/app/usage/UsageStats;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_9f
    move-exception v0

    goto :goto_a4

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_a1
    move-exception v0

    move-object/from16 v7, v20

    .line 201
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_a4
    nop

    .line 185
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "stat":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17    # "info":Landroid/content/pm/UserInfo;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_a5
    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v1, p0

    goto :goto_5c

    .line 176
    .end local v2    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    :cond_ac
    move-object/from16 v7, v20

    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_ae
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .local v0, "i":I
    move-object v8, v7

    move/from16 v7, v19

    move-object/from16 v9, v21

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto/16 :goto_2e

    .line 205
    .end local v0    # "i":I
    .end local v19    # "userCount":I
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "userCount":I
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_ba
    move/from16 v19, v7

    move-object v7, v8

    move-object/from16 v21, v9

    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v19    # "userCount":I
    .restart local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    return-object v14
.end method

.method private insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "quota"    # J

    .line 245
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 246
    .local v0, "volumeMap":Landroid/util/SparseLongArray;
    if-nez v0, :cond_15

    .line 247
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    move-object v0, v1

    .line 248
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_15
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 251
    return-void
.end method

.method private pushProcessedQuotas(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "requestSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_5f

    .line 220
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/CacheQuotaHint;

    .line 221
    .local v2, "request":Landroid/app/usage/CacheQuotaHint;
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v9

    .line 222
    .local v9, "proposedQuota":J
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_18

    .line 223
    goto :goto_5c

    .line 227
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v3

    move v11, v3

    .line 228
    .local v11, "uid":I
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 230
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 228
    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 231
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 233
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 231
    move-object v3, p0

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_40
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_18 .. :try_end_40} :catch_41

    .line 238
    .end local v11    # "uid":I
    goto :goto_5c

    .line 234
    :catch_41
    move-exception v3

    .line 235
    .local v3, "ex":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "CacheQuotaStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set cache quota for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v2    # "request":Landroid/app/usage/CacheQuotaHint;
    .end local v3    # "ex":Lcom/android/server/pm/Installer$InstallerException;
    .end local v9    # "proposedQuota":J
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 241
    .end local v1    # "i":I
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    .line 242
    return-void
.end method

.method protected static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .registers 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 348
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 350
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 351
    .local v1, "eventType":I
    :goto_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1c

    if-eq v1, v3, :cond_1c

    .line 353
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_11

    .line 356
    :cond_1c
    const/4 v4, 0x0

    if-ne v1, v3, :cond_27

    .line 357
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "No quotas found in quota file."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-object v4

    .line 361
    :cond_27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "cache-info"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 366
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, "quotas":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :try_start_38
    const-string/jumbo v7, "previousBytes"

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_43} :catch_72

    .line 374
    .local v7, "previousBytes":J
    nop

    .line 372
    nop

    .line 376
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 378
    :cond_49
    if-ne v1, v2, :cond_62

    .line 379
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 380
    const-string/jumbo v4, "quota"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 381
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v4

    .line 382
    .local v4, "request":Landroid/app/usage/CacheQuotaHint;
    if-nez v4, :cond_5f

    .line 383
    goto :goto_66

    .line 385
    :cond_5f
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v4    # "request":Landroid/app/usage/CacheQuotaHint;
    :cond_62
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 389
    :goto_66
    if-ne v1, v3, :cond_49

    .line 390
    new-instance v2, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 371
    .end local v7    # "previousBytes":J
    :catch_72
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Previous bytes formatted incorrectly; aborting quota read."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "quotas":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :cond_7b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid starting tag."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V
    .registers 12
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bytesWhenCalculated"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string v0, "cache-info"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 328
    .local v0, "requestSize":I
    const-string/jumbo v2, "previousBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    const/4 v2, 0x0

    .line 330
    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_5f

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/CacheQuotaHint;

    .line 332
    .local v3, "request":Landroid/app/usage/CacheQuotaHint;
    const-string/jumbo v4, "quota"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    invoke-virtual {v3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "uuid":Ljava/lang/String;
    if-eqz v4, :cond_3b

    .line 335
    const-string/jumbo v5, "uuid"

    invoke-virtual {v3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    :cond_3b
    const-string/jumbo v5, "uid"

    invoke-virtual {v3}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string v5, "bytes"

    invoke-virtual {v3}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    const-string/jumbo v5, "quota"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    .end local v3    # "request":Landroid/app/usage/CacheQuotaHint;
    .end local v4    # "uuid":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 341
    .end local v2    # "i":I
    :cond_5f
    const-string v2, "cache-info"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 343
    return-void
.end method

.method private writeXmlToFile(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v0, 0x0

    .line 283
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 284
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 285
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 286
    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V

    .line 287
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    .line 291
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_2e

    .line 288
    :catch_21
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "An error occurred while writing the cache quota file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 210
    const-string/jumbo v0, "requests"

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 214
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public recalculateQuotas()V
    .registers 7

    .line 111
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1b

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 120
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1b
    return-void
.end method

.method public setupQuotasFromFile()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_8} :catch_36

    .line 305
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 304
    nop

    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    :try_start_b
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v4
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_f} :catch_2b

    move-object v3, v4

    .line 312
    nop

    .line 314
    if-nez v3, :cond_1b

    .line 315
    const-string v4, "CacheQuotaStrategy"

    const-string v5, "An error occurred while parsing the cache quota file."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-wide v0

    .line 318
    :cond_1b
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 319
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 310
    :catch_2b
    move-exception v0

    .line 311
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    :catch_36
    move-exception v2

    .line 304
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-wide v0
.end method
