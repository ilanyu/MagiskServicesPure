.class public Lcom/android/server/pm/PackageDexOptimizerManager;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;,
        Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;,
        Lcom/android/server/pm/PackageDexOptimizerManager$Holder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOOTDEXOPT_DATA_APPS_THRESHOLD:I = 0xa

.field private static final DEXOPT_WHITELIST:[Ljava/lang/String;

.field private static final START_DEXOPT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizerManager"

.field private static sPerformDexOptMethod:Ljava/lang/reflect/Method;

.field private static final sPreferredInstructionSet:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mPendingDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 51
    const-string v0, "com.eg.android.AlipayGphone"

    const-string v1, "com.tencent.mm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    .line 65
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_18
    const-class v4, Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "performDexOpt"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodError; {:try_start_18 .. :try_end_36} :catch_37

    .line 76
    goto :goto_56

    .line 68
    :catch_37
    move-exception v4

    .line 70
    .local v4, "e":Ljava/lang/NoSuchMethodError;
    :try_start_38
    const-class v5, Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "performDexOpt"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    invoke-static {v5, v6, v0}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodError; {:try_start_38 .. :try_end_51} :catch_52

    .line 75
    goto :goto_56

    .line 73
    :catch_52
    move-exception v0

    .line 74
    .local v0, "error":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    .line 77
    .end local v0    # "error":Ljava/lang/NoSuchMethodError;
    .end local v4    # "e":Ljava/lang/NoSuchMethodError;
    :goto_56
    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    .line 84
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageDexOptimizerManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 87
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageDexOptimizerManager$1;

    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getDefaultMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "sortedStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_ae

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_ae

    .line 151
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "mostUsagePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "persist.sys.dexopt_threshold"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, "threshold":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 157
    const/4 v4, 0x0

    .line 157
    .local v4, "i":I
    :goto_23
    :try_start_23
    sget-object v5, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_54

    .line 158
    sget-object v5, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 159
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 160
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_51

    .line 161
    const-string v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found default Package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 157
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 166
    .end local v4    # "i":I
    :cond_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_ab

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 170
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    if-lez v2, :cond_aa

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 172
    .local v4, "usage":Landroid/app/usage/UsageStats;
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 174
    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 175
    :try_start_6e
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 177
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_a2

    invoke-static {v7}, Lcom/android/server/pm/PackageDexOptimizerManager;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_7f

    goto :goto_a2

    .line 182
    :cond_7f
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 183
    const-string v8, "PackageDexOptimizerManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found most usage Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, -0x1

    .line 187
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_a0
    monitor-exit v6

    .line 188
    .end local v4    # "usage":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_59

    .line 178
    .restart local v4    # "usage":Landroid/app/usage/UsageStats;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_a2
    :goto_a2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 179
    monitor-exit v6

    goto :goto_59

    .line 187
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_a7
    move-exception v7

    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_6e .. :try_end_a9} :catchall_a7

    throw v7

    .line 190
    .end local v4    # "usage":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_aa
    return-object v1

    .line 166
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :catchall_ab
    move-exception v4

    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v4

    .line 148
    .end local v1    # "mostUsagePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "threshold":I
    :cond_ae
    :goto_ae
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager$Holder;->INSTANCE:Lcom/android/server/pm/PackageDexOptimizerManager;

    return-object v0
.end method

.method private static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 194
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 195
    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    return-object v0

    .line 198
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRecentlyUsedPackages(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "sortedStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 108
    .local v3, "usage":Landroid/app/usage/UsageStats;
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_32

    .line 109
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "usage":Landroid/app/usage/UsageStats;
    :cond_32
    goto :goto_15

    .line 112
    :cond_33
    return-object v1

    .line 114
    .end local v1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 118
    const-string/jumbo v0, "usagestats"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 120
    .local v0, "usm":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 121
    .local v1, "now":J
    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 124
    .local v3, "dexOptLRUThresholdInMills":J
    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v5

    .line 127
    .local v5, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    const/4 v6, 0x0

    .line 128
    .local v6, "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v5, :cond_51

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    .line 130
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 131
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 132
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    goto :goto_33

    .line 135
    :cond_49
    new-instance v7, Lcom/android/server/pm/PackageDexOptimizerManager$1;

    invoke-direct {v7}, Lcom/android/server/pm/PackageDexOptimizerManager$1;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    :cond_51
    return-object v6
.end method

.method public static isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method private static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 95
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method


# virtual methods
.method public ensurePackageDexOpt(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z

    move-result v0

    return v0
.end method

.method public ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "obs"    # Lmiui/os/IMiuiDexoptObserver;

    .line 207
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 209
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 210
    const/4 v1, 0x0

    return v1

    .line 213
    :cond_15
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v1

    .line 214
    :try_start_18
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    .line 215
    monitor-exit v1

    return v3

    .line 217
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_3a

    .line 220
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)V

    .line 221
    .local v1, "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 222
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 224
    return v3

    .line 218
    .end local v1    # "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method
