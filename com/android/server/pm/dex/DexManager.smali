.class public Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/DexManager$DexSearchResult;,
        Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;,
        Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;,
        Lcom/android/server/pm/dex/DexManager$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

.field private static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field private static DEX_SEARCH_NOT_FOUND:I = 0x0

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field private static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mListener:Lcom/android/server/pm/dex/DexManager$Listener;

.field private final mPackageCodeLocationsCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageCodeLocationsCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    .line 100
    const/4 v0, 0x1

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    .line 101
    const/4 v0, 0x2

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 102
    const/4 v0, 0x3

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    .line 115
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;Lcom/android/server/pm/dex/DexManager$Listener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p4, "installer"    # Lcom/android/server/pm/Installer;
    .param p5, "installLock"    # Ljava/lang/Object;
    .param p6, "listener"    # Lcom/android/server/pm/dex/DexManager$Listener;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 130
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 131
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 132
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 133
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 134
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 135
    iput-object p6, p0, Lcom/android/server/pm/dex/DexManager;->mListener:Lcom/android/server/pm/dex/DexManager$Listener;

    .line 136
    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 70
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 70
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 70
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 70
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;
    .param p4, "dataDirs"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 331
    .local v1, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 332
    if-eqz p4, :cond_23

    .line 333
    array-length v2, p4

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_23

    aget-object v4, p4, v3

    .line 338
    .local v4, "dataDir":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 339
    invoke-virtual {v1, v4, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 333
    .end local v4    # "dataDir":Ljava/lang/String;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 343
    .end local v1    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_23
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .registers 11
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 316
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 317
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 319
    .local v6, "dataDirs":[Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method private getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .registers 10
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 609
    const-string v0, "/system/framework/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 610
    new-instance v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const-string v1, "framework"

    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v0

    .line 615
    :cond_12
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 617
    .local v0, "loadingPackageCodeLocations":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 618
    .local v1, "outcome":I
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_29

    .line 620
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    # getter for: Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 626
    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v2

    .line 627
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 628
    .local v4, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v4, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 629
    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v5, :cond_56

    .line 630
    new-instance v3, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    # getter for: Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-object v3

    .line 632
    .end local v4    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_56
    goto :goto_36

    .line 633
    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_61

    .line 651
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 633
    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v3
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 709
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static isPackageSelectedToRunOob(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 718
    .local p0, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 719
    return v1

    .line 721
    :cond_b
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "oobListProperty":Ljava/lang/String;
    const-string v2, "ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 724
    return v3

    .line 726
    :cond_1e
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v1

    :goto_26
    if-ge v5, v4, :cond_34

    aget-object v6, v2, v5

    .line 727
    .local v6, "oobPkgName":Ljava/lang/String;
    invoke-interface {p0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 728
    return v3

    .line 726
    .end local v6    # "oobPkgName":Ljava/lang/String;
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 731
    :cond_34
    return v1
.end method

.method private loadInternal(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 347
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v0, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v1, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 353
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 354
    .local v4, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 355
    .local v5, "userId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 357
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v7, v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 364
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v8, v9}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 366
    .local v8, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v9, v10}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 370
    .local v9, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v10, :cond_76

    .line 372
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 374
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_76
    goto :goto_32

    .line 375
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v4    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "userId":I
    :cond_77
    goto :goto_12

    .line 377
    :cond_78
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 378
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;)V

    .line 379
    return-void
.end method

.method private static logIfApkHasUncompressedCode(Ljava/lang/String;)V
    .registers 11
    .param p0, "fileName"    # Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    :try_start_1
    new-instance v1, Landroid/util/jar/StrictJarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v1

    .line 769
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 770
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 772
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_7e

    .line 773
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_50

    .line 774
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has compressed dex code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    .line 776
    :cond_50
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    and-long/2addr v6, v8

    cmp-long v3, v6, v4

    if-eqz v3, :cond_e0

    .line 777
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has unaligned dex code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 780
    :cond_7e
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".so"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 781
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_b3

    .line 782
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has compressed native code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 782
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 784
    :cond_b3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v6

    const-wide/16 v8, 0xfff

    and-long/2addr v6, v8

    cmp-long v3, v6, v4

    if-eqz v3, :cond_e0

    .line 785
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has unaligned native code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 785
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e0} :catch_ec
    .catchall {:try_start_1 .. :try_end_e0} :catchall_ea

    .line 789
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_e0
    :goto_e0
    goto/16 :goto_c

    .line 794
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_e2
    nop

    .line 795
    :try_start_e3
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_e9

    .line 797
    :catch_e7
    move-exception v1

    .line 798
    goto :goto_109

    .line 797
    :cond_e9
    :goto_e9
    goto :goto_109

    .line 793
    :catchall_ea
    move-exception v1

    goto :goto_10a

    .line 790
    :catch_ec
    move-exception v1

    .line 791
    .local v1, "ignore":Ljava/io/IOException;
    :try_start_ed
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing APK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_ed .. :try_end_103} :catchall_ea

    .line 794
    .end local v1    # "ignore":Ljava/io/IOException;
    if-eqz v0, :cond_e9

    .line 795
    :try_start_105
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_e7

    goto :goto_e9

    .line 799
    :goto_109
    return-void

    .line 793
    :goto_10a
    nop

    .line 794
    if-eqz v0, :cond_113

    .line 795
    :try_start_10d
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_113

    .line 797
    :catch_111
    move-exception v2

    nop

    :cond_113
    :goto_113
    throw v1
.end method

.method private static logIfPackageHasUncompressedCode(Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 752
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->logIfApkHasUncompressedCode(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 755
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager;->logIfApkHasUncompressedCode(Ljava/lang/String;)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 758
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public static maybeLogUnexpectedPackageDetails(Landroid/content/pm/PackageParser$Package;)V
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 738
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_5

    .line 739
    return-void

    .line 742
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 743
    invoke-static {p0}, Lcom/android/server/pm/dex/DexManager;->logIfPackageHasUncompressedCode(Landroid/content/pm/PackageParser$Package;)V

    .line 745
    :cond_16
    return-void
.end method

.method private notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 30
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "loaderUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .local p2, "classLoaderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 174
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 175
    const-string v3, "DexManager"

    const-string v4, "Bad call to noitfyDexLoad: args have different size"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 178
    :cond_18
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 179
    const-string v3, "DexManager"

    const-string v4, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_26
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 183
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading dex files "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in unsupported ISA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 189
    :cond_52
    move-object/from16 v5, p4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "dexPathsToRegister":[Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/dex/DexoptUtils;->processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "classLoaderContexts":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 196
    .local v6, "dexPathIndex":I
    array-length v13, v4

    move v12, v3

    move/from16 v16, v6

    .end local v6    # "dexPathIndex":I
    .local v16, "dexPathIndex":I
    :goto_6a
    if-ge v12, v13, :cond_e8

    aget-object v11, v4, v12

    .line 198
    .local v11, "dexPath":Ljava/lang/String;
    move/from16 v10, p5

    invoke-direct {v0, v1, v11, v10}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v9

    .line 205
    .local v9, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v6

    sget v7, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v6, v7, :cond_d9

    .line 209
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 210
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    move/from16 v17, v6

    .line 211
    .local v17, "isUsedByOtherApps":Z
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v6

    sget v8, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v6, v8, :cond_9d

    .line 212
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v6

    sget v8, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v6, v8, :cond_9b

    goto :goto_9d

    :cond_9b
    move v7, v3

    nop

    :cond_9d
    :goto_9d
    move/from16 v18, v7

    .line 214
    .local v18, "primaryOrSplit":Z
    if-eqz v18, :cond_a9

    if-nez v17, :cond_a9

    .line 218
    nop

    .line 196
    move/from16 v22, v12

    move/from16 v23, v13

    goto :goto_e3

    .line 227
    :cond_a9
    if-nez v15, :cond_af

    .line 228
    const-string v6, "=UnsupportedClassLoaderContext="

    .line 229
    :goto_ad
    move-object v14, v6

    goto :goto_b2

    :cond_af
    aget-object v6, v15, v16

    goto :goto_ad

    .line 230
    .local v14, "classLoaderContext":Ljava/lang/String;
    :goto_b2
    iget-object v6, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v20, v9

    move v9, v10

    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .local v20, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    move-object v10, v5

    move-object/from16 v21, v11

    move/from16 v11, v17

    .end local v11    # "dexPath":Ljava/lang/String;
    .local v21, "dexPath":Ljava/lang/String;
    move/from16 v22, v12

    move/from16 v12, v18

    move/from16 v23, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 233
    iget-object v6, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .end local v14    # "classLoaderContext":Ljava/lang/String;
    .end local v17    # "isUsedByOtherApps":Z
    .end local v18    # "primaryOrSplit":Z
    goto :goto_e1

    .line 242
    .end local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v21    # "dexPath":Ljava/lang/String;
    .restart local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v11    # "dexPath":Ljava/lang/String;
    :cond_d9
    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v11    # "dexPath":Ljava/lang/String;
    .restart local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v21    # "dexPath":Ljava/lang/String;
    :cond_e1
    :goto_e1
    add-int/lit8 v16, v16, 0x1

    .line 196
    .end local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v21    # "dexPath":Ljava/lang/String;
    :goto_e3
    add-int/lit8 v12, v22, 0x1

    move/from16 v13, v23

    goto :goto_6a

    .line 244
    :cond_e8
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 655
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method private registerSettingObserver()V
    .registers 7

    .line 667
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/server/pm/dex/DexManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/pm/dex/DexManager$1;-><init>(Lcom/android/server/pm/dex/DexManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 680
    .local v1, "privAppOobObserver":Landroid/database/ContentObserver;
    const-string/jumbo v3, "priv_app_oob_enabled"

    .line 681
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 680
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 684
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 686
    new-instance v5, Lcom/android/server/pm/dex/DexManager$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/server/pm/dex/DexManager$2;-><init>(Lcom/android/server/pm/dex/DexManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object v2, v5

    .line 696
    .local v2, "privAppOobListObserver":Landroid/database/ContentObserver;
    const-string/jumbo v5, "priv_app_oob_list"

    .line 697
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 696
    invoke-virtual {v0, v5, v4, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 700
    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 701
    return-void
.end method


# virtual methods
.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 15
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 420
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 421
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_10

    .line 422
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 423
    .local v0, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 425
    .local v2, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    .line 430
    return v4

    .line 432
    :cond_24
    const/4 v3, 0x1

    .line 433
    .local v3, "success":Z
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 434
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 435
    .local v7, "dexPath":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 439
    .local v8, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :try_start_49
    iget-object v9, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 440
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v10

    .line 439
    const/4 v11, 0x0

    invoke-interface {v9, v1, v11, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_54} :catch_93

    .line 443
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 442
    nop

    .line 448
    if-nez v9, :cond_84

    .line 449
    const-string v10, "DexManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find package when compiling secondary dex "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 449
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v10, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v11

    invoke-virtual {v10, v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 452
    goto :goto_31

    .line 455
    :cond_84
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v10, v7, v8, p1}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v10

    .line 457
    .local v10, "result":I
    if-eqz v3, :cond_91

    const/4 v12, -0x1

    if-eq v10, v12, :cond_91

    move v11, v4

    nop

    :cond_91
    move v3, v11

    .line 458
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v7    # "dexPath":Ljava/lang/String;
    .end local v8    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "result":I
    goto :goto_31

    .line 441
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v7    # "dexPath":Ljava/lang/String;
    .restart local v8    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :catch_93
    move-exception v4

    .line 442
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 459
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v7    # "dexPath":Ljava/lang/String;
    .end local v8    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_9a
    return v3
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 393
    .local v0, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_b

    sget-object v1, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public load(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 254
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 259
    goto :goto_11

    .line 255
    :catch_4
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 257
    const-string v1, "DexManager"

    const-string v2, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 10
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "loaderUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 163
    .local p2, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 168
    goto :goto_1d

    .line 165
    :catch_4
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while notifying dex load for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    .line 307
    .local v0, "updated":Z
    :goto_10
    if-eqz v0, :cond_17

    .line 308
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 310
    :cond_17
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .registers 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 269
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 274
    return-void

    .line 270
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;

    .line 282
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 290
    :cond_16
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 468
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v10

    .line 469
    .local v10, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 474
    return-void

    .line 477
    :cond_13
    const/4 v0, 0x0

    .line 478
    .local v0, "updated":Z
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    .end local v0    # "updated":Z
    .local v12, "updated":Z
    :goto_21
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_177

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 479
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 480
    .local v14, "dexPath":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 481
    .local v15, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v0, 0x0

    move-object v2, v0

    .line 487
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_3f
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 488
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 487
    invoke-interface {v0, v9, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_49} :catch_4b

    move-object v2, v0

    .line 491
    goto :goto_4c

    .line 489
    :catch_4b
    move-exception v0

    .line 492
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :goto_4c
    move-object v7, v2

    const/16 v16, 0x1

    if-nez v7, :cond_88

    .line 495
    const-string v0, "DexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package when compiling secondary dex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 499
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 498
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_85

    if-eqz v12, :cond_82

    goto :goto_85

    :cond_82
    move/from16 v16, v8

    nop

    :cond_85
    :goto_85
    move/from16 v12, v16

    .line 500
    goto :goto_21

    .line 502
    :cond_88
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 503
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 504
    .local v0, "flags":I
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_9b

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 505
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 506
    or-int/lit8 v0, v0, 0x1

    .line 517
    .end local v0    # "flags":I
    .local v4, "flags":I
    :goto_99
    move v4, v0

    goto :goto_aa

    .line 507
    .end local v4    # "flags":I
    .restart local v0    # "flags":I
    :cond_9b
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_145

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 508
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 509
    or-int/lit8 v0, v0, 0x2

    goto :goto_99

    .line 517
    .end local v0    # "flags":I
    .restart local v4    # "flags":I
    :goto_aa
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mListener:Lcom/android/server/pm/dex/DexManager$Listener;

    if-eqz v0, :cond_b3

    .line 518
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mListener:Lcom/android/server/pm/dex/DexManager$Listener;

    invoke-interface {v0, v5, v15, v14, v4}, Lcom/android/server/pm/dex/DexManager$Listener;->onReconcileSecondaryDexFile(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V

    .line 521
    :cond_b3
    const/16 v17, 0x1

    .line 522
    .local v17, "dexStillExists":Z
    iget-object v3, v1, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 524
    :try_start_b8
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 525
    .local v6, "isas":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_c9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b8 .. :try_end_c9} :catch_fb
    .catchall {:try_start_b8 .. :try_end_c9} :catchall_f1

    :try_start_c9
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_cb
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c9 .. :try_end_cb} :catch_e5
    .catchall {:try_start_c9 .. :try_end_cb} :catchall_f1

    move-object/from16 v19, v3

    move-object v3, v14

    move/from16 v20, v4

    move-object v4, v9

    .end local v4    # "flags":I
    .local v20, "flags":I
    move-object/from16 v21, v5

    move v5, v0

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v22, v7

    move-object v7, v8

    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .local v22, "pkg":Landroid/content/pm/PackageInfo;
    const/16 v18, 0x0

    move/from16 v8, v20

    :try_start_db
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_df
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_db .. :try_end_df} :catch_e3
    .catchall {:try_start_db .. :try_end_df} :catchall_142

    .line 530
    .end local v6    # "isas":[Ljava/lang/String;
    .end local v17    # "dexStillExists":Z
    .local v0, "dexStillExists":Z
    nop

    .line 531
    move/from16 v17, v0

    goto :goto_128

    .line 527
    .end local v0    # "dexStillExists":Z
    .restart local v17    # "dexStillExists":Z
    :catch_e3
    move-exception v0

    goto :goto_106

    .end local v20    # "flags":I
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_e5
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    const/16 v18, 0x0

    goto :goto_106

    .line 531
    :catchall_f1
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    .end local v4    # "flags":I
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v20    # "flags":I
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_143

    .line 527
    .end local v20    # "flags":I
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_fb
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v18, v8

    .line 528
    .end local v4    # "flags":I
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v20    # "flags":I
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_106
    :try_start_106
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got InstallerException when reconciling dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_128
    monitor-exit v19
    :try_end_129
    .catchall {:try_start_106 .. :try_end_129} :catchall_142

    .line 532
    if-nez v17, :cond_140

    .line 533
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 534
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 533
    invoke-virtual {v0, v9, v14, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13d

    if-eqz v12, :cond_13a

    goto :goto_13d

    :cond_13a
    move/from16 v16, v18

    nop

    :cond_13d
    :goto_13d
    move/from16 v0, v16

    .line 537
    .end local v12    # "updated":Z
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v17    # "dexStillExists":Z
    .end local v20    # "flags":I
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "updated":Z
    move v12, v0

    .end local v0    # "updated":Z
    .restart local v12    # "updated":Z
    :cond_140
    goto/16 :goto_21

    .line 531
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v14    # "dexPath":Ljava/lang/String;
    .restart local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local v17    # "dexStillExists":Z
    .restart local v20    # "flags":I
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_142
    move-exception v0

    :goto_143
    :try_start_143
    monitor-exit v19
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    throw v0

    .line 511
    .end local v17    # "dexStillExists":Z
    .end local v20    # "flags":I
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_145
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v18, v8

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not infer CE/DE storage for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 513
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 512
    invoke-virtual {v2, v9, v14, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_173

    if-eqz v12, :cond_170

    goto :goto_173

    :cond_170
    move/from16 v16, v18

    nop

    :cond_173
    :goto_173
    move/from16 v12, v16

    .line 514
    goto/16 :goto_21

    .line 538
    .end local v0    # "flags":I
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_177
    if-eqz v12, :cond_17e

    .line 539
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 541
    :cond_17e
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .registers 26
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z
    .param p4, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    .line 548
    move/from16 v12, p4

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 550
    .local v13, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_1d

    .line 551
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Package not found"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 553
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 554
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Dex path does not belong to package"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 556
    :cond_31
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_c1

    .line 557
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_43

    goto/16 :goto_c1

    .line 562
    :cond_43
    const/4 v2, 0x0

    .line 563
    .local v2, "update":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v15

    array-length v10, v15

    move/from16 v16, v2

    move v9, v14

    .end local v2    # "update":Z
    .local v16, "update":Z
    :goto_4c
    if-ge v9, v10, :cond_76

    aget-object v17, v15, v9

    .line 564
    .local v17, "isa":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 566
    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "=UnknownClassLoaderContext="

    .line 564
    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v17

    move/from16 v7, p3

    move/from16 v20, v9

    move-object/from16 v9, v18

    move/from16 v18, v10

    move-object/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 568
    .local v2, "newUpdate":Z
    or-int v16, v16, v2

    .line 563
    .end local v2    # "newUpdate":Z
    .end local v17    # "isa":Ljava/lang/String;
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v18

    goto :goto_4c

    .line 570
    :cond_76
    if-eqz v16, :cond_7d

    .line 571
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 574
    :cond_7d
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    # getter for: Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 575
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 578
    .local v2, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 581
    .local v3, "options":Lcom/android/server/pm/dex/DexoptOptions;
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v4, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 589
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_b8

    .line 590
    const-string v5, "DexManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to optimize dex module "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_b8
    new-instance v5, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v6, "Dex module registered successfully"

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v5

    .line 558
    .end local v2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local v4    # "result":I
    .end local v16    # "update":Z
    :cond_c1
    :goto_c1
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Main apks cannot be registered"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method

.method public systemReady()V
    .registers 1

    .line 139
    invoke-direct {p0}, Lcom/android/server/pm/dex/DexManager;->registerSettingObserver()V

    .line 140
    return-void
.end method

.method public writePackageDexUsageNow()V
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 664
    return-void
.end method
