.class public Lcom/android/server/pm/dex/PackageDexUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;,
        Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_PATH_LINE_CHAR:Ljava/lang/String; = "+"

.field private static final DEX_LINE_CHAR:Ljava/lang/String; = "#"

.field private static final LOADING_PACKAGE_CHAR:Ljava/lang/String; = "@"

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_1:I = 0x1

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_2:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

.field private static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDexUsage"

.field static final UNKNOWN_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnknownClassLoaderContext="

.field static final UNSUPPORTED_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnsupportedClassLoaderContext="

.field static final VARIABLE_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=VariableClassLoaderContext="


# instance fields
.field private final mPackageUseInfoMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageUseInfoMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 97
    const-string/jumbo v0, "package-dex-usage.list"

    const-string v1, "PackageDexUsage_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 99
    return-void
.end method

.method private clonePackageUseInfoMap()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 664
    .local v0, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 665
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 666
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v5, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    goto :goto_12

    .line 668
    :cond_33
    monitor-exit v1

    .line 669
    return-object v0

    .line 668
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2
.end method

.method private isSupportedVersion(I)Z
    .registers 4
    .param p1, "version"    # I

    .line 482
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    nop

    :cond_9
    :goto_9
    return v0
.end method

.method private maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .registers 5
    .param p1, "owningPackage"    # Ljava/lang/String;
    .param p2, "loadingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 478
    .local p3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .registers 6
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "context":Ljava/lang/String;
    const/4 v1, 0x2

    if-lt p2, v1, :cond_13

    .line 436
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_b

    goto :goto_13

    .line 438
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the classLoaderContext line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_13
    :goto_13
    if-nez v0, :cond_18

    const-string v1, "=UnknownClassLoaderContext="

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    return-object v1
.end method

.method private maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .registers 7
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x2

    if-lt p2, v0, :cond_3b

    .line 454
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1a

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 462
    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 463
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "@"

    .line 464
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 465
    return-object v1

    .line 456
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the loadingPackages line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    .end local v0    # "line":Ljava/lang/String;
    :cond_3b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readBoolean(Ljava/lang/String;)Z
    .registers 5
    .param p1, "bool"    # Ljava/lang/String;

    .line 677
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 678
    :cond_a
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 679
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bool encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 618
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 619
    .local v0, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 620
    return v1

    .line 622
    :cond_e
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v2

    if-ne v2, p3, :cond_1d

    .line 623
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const/4 v1, 0x1

    return v1

    .line 626
    :cond_1d
    return v1
.end method

.method private writeBoolean(Z)Ljava/lang/String;
    .registers 3
    .param p1, "bool"    # Z

    .line 673
    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 658
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 659
    monitor-exit v0

    .line 660
    return-void

    .line 659
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method clearUsedByOtherApps(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 549
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 550
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 551
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 553
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 554
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 683
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 684
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 685
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 646
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 647
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 648
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_37
    goto :goto_12

    .line 652
    :cond_38
    monitor-exit v1

    .line 653
    return-object v0

    .line 652
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 637
    .local v1, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_14

    :cond_f
    new-instance v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v2, v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    :goto_14
    monitor-exit v0

    return-object v2

    .line 638
    .end local v1    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method maybeWriteAsync()V
    .registers 2

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public read()V
    .registers 2

    .line 197
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method read(Ljava/io/Reader;)V
    .registers 25
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 312
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v0, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 314
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "versionLine":Ljava/lang/String;
    if-eqz v5, :cond_20c

    .line 319
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 323
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    .local v6, "version":I
    invoke-direct {v1, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 334
    .local v7, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v8, "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_3e
    if-ge v12, v10, :cond_4c

    aget-object v13, v9, v12

    .line 336
    .local v13, "abi":Ljava/lang/String;
    invoke-static {v13}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v13    # "abi":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    .line 338
    :cond_4c
    move-object v9, v7

    move-object v7, v0

    .end local v0    # "currentPackage":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .local v9, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :goto_4e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_1ca

    .line 339
    const-string v0, "#"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 346
    if-eqz v7, :cond_136

    .line 352
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "dexPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 356
    if-eqz v10, :cond_12c

    .line 359
    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, "elems":[Ljava/lang/String;
    array-length v15, v14

    const/4 v12, 0x3

    if-lt v15, v12, :cond_111

    .line 365
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v12

    .line 366
    .local v12, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "classLoaderContext":Ljava/lang/String;
    aget-object v13, v14, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 369
    .local v13, "ownerUserId":I
    const/16 v17, 0x1

    aget-object v11, v14, v17

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 370
    .local v11, "isUsedByOtherApps":Z
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "currentPackage":Ljava/lang/String;
    .local v18, "currentPackage":Ljava/lang/String;
    invoke-direct {v3, v11, v13, v15, v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v3, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    const/16 v16, 0x2

    .local v16, "i":I
    :goto_a0
    move/from16 v7, v16

    .end local v16    # "i":I
    .local v7, "i":I
    move/from16 v19, v11

    array-length v11, v14

    .end local v11    # "isUsedByOtherApps":Z
    .local v19, "isUsedByOtherApps":Z
    if-ge v7, v11, :cond_e6

    .line 374
    aget-object v11, v14, v7

    .line 375
    .local v11, "isa":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bf

    .line 376
    move-object/from16 v20, v12

    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .end local v12    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v20, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v21, v13

    aget-object v13, v14, v7

    .end local v13    # "ownerUserId":I
    .local v21, "ownerUserId":I
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    move-object/from16 v22, v14

    goto :goto_db

    .line 381
    .end local v20    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "ownerUserId":I
    .restart local v12    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "ownerUserId":I
    :cond_bf
    move-object/from16 v20, v12

    move/from16 v21, v13

    .end local v12    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "ownerUserId":I
    .restart local v20    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "ownerUserId":I
    const-string v12, "PackageDexUsage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v14

    const-string v14, "Unsupported ISA when parsing PackageDexUsage: "

    .end local v14    # "elems":[Ljava/lang/String;
    .local v22, "elems":[Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v11    # "isa":Ljava/lang/String;
    :goto_db
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v21

    move-object/from16 v14, v22

    goto :goto_a0

    .line 384
    .end local v16    # "i":I
    .end local v20    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "ownerUserId":I
    .end local v22    # "elems":[Ljava/lang/String;
    .restart local v12    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "ownerUserId":I
    .restart local v14    # "elems":[Ljava/lang/String;
    :cond_e6
    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v22, v14

    .end local v12    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "ownerUserId":I
    .end local v14    # "elems":[Ljava/lang/String;
    .restart local v20    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "ownerUserId":I
    .restart local v22    # "elems":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_109

    .line 385
    const-string v7, "PackageDexUsage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    goto :goto_163

    .line 389
    :cond_109
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v15    # "classLoaderContext":Ljava/lang/String;
    .end local v19    # "isUsedByOtherApps":Z
    .end local v20    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "ownerUserId":I
    .end local v22    # "elems":[Ljava/lang/String;
    goto :goto_163

    .line 361
    .end local v18    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "dexPath":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .restart local v14    # "elems":[Ljava/lang/String;
    :cond_111
    move-object/from16 v18, v7

    move-object/from16 v22, v14

    .end local v7    # "currentPackage":Ljava/lang/String;
    .end local v14    # "elems":[Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    .restart local v22    # "elems":[Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    .end local v18    # "currentPackage":Ljava/lang/String;
    .end local v22    # "elems":[Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_12c
    move-object/from16 v18, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "Could not find dexUseInfo line"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 347
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v18    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_136
    move-object/from16 v18, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    .end local v18    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_140
    move-object/from16 v18, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    const-string v0, "+"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 392
    const/4 v0, 0x2

    if-lt v6, v0, :cond_16a

    .line 400
    const-string v0, "+"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "codePath":Ljava/lang/String;
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v3

    .line 402
    .local v3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 338
    .end local v10    # "line":Ljava/lang/String;
    :goto_163
    move-object/from16 v7, v18

    move-object/from16 v3, p1

    const/4 v11, 0x0

    goto/16 :goto_4e

    .line 393
    .restart local v10    # "line":Ljava/lang/String;
    :cond_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected code path line when parsing PackageDexUseData: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_181
    const/4 v0, 0x2

    if-lt v6, v0, :cond_18e

    .line 406
    move-object v0, v10

    .line 407
    .end local v18    # "currentPackage":Ljava/lang/String;
    .local v0, "currentPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    .line 419
    .end local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .local v3, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    move-object v7, v0

    move-object v9, v3

    const/4 v3, 0x0

    goto :goto_1ab

    .line 411
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v3    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    :cond_18e
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "elems":[Ljava/lang/String;
    array-length v3, v0

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1b3

    .line 415
    const/4 v3, 0x0

    aget-object v7, v0, v3

    .line 416
    .end local v18    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v9, v11

    .line 417
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z
    invoke-static {v9, v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z

    .line 419
    .end local v0    # "elems":[Ljava/lang/String;
    :goto_1ab
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    move v11, v3

    move-object/from16 v3, p1

    goto/16 :goto_4e

    .line 413
    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "elems":[Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    :cond_1b3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 423
    .end local v0    # "elems":[Ljava/lang/String;
    .end local v18    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_1ca
    move-object/from16 v18, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v18    # "currentPackage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 424
    :try_start_1cf
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 425
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 426
    monitor-exit v3

    .line 427
    return-void

    .line 426
    :catchall_1db
    move-exception v0

    monitor-exit v3
    :try_end_1dd
    .catchall {:try_start_1cf .. :try_end_1dd} :catchall_1db

    throw v0

    .line 326
    .end local v8    # "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v10    # "line":Ljava/lang/String;
    .end local v18    # "currentPackage":Ljava/lang/String;
    :cond_1de
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v6    # "version":I
    :cond_1f5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid version line: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_20c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No version line found."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Void;

    .line 296
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 297
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 299
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_17} :catch_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_1a
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_28

    .line 306
    :catchall_18
    move-exception v2

    goto :goto_23

    .line 303
    :catch_1a
    move-exception v2

    .line 304
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to parse package dex usage."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 306
    :goto_23
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 301
    :catch_27
    move-exception v2

    .line 306
    :goto_28
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    nop

    .line 308
    return-void
.end method

.method public record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "owningPackageName"    # Ljava/lang/String;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "ownerUserId"    # I
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "isUsedByOtherApps"    # Z
    .param p6, "primaryOrSplit"    # Z
    .param p7, "loadingPackageName"    # Ljava/lang/String;
    .param p8, "classLoaderContext"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    .line 122
    move-object/from16 v8, p8

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 125
    if-eqz v8, :cond_ba

    .line 129
    iget-object v9, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v9

    .line 130
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 131
    .local v0, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    const/4 v10, 0x1

    if-nez v0, :cond_4d

    .line 133
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v0, v11

    .line 134
    if-eqz p6, :cond_32

    .line 138
    # invokes: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    .line 143
    :cond_32
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v11, "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    nop

    .line 147
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 146
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 149
    .end local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :goto_46
    iget-object v11, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v9

    return v10

    .line 153
    :cond_4d
    if-eqz p6, :cond_55

    .line 156
    # invokes: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    monitor-exit v9

    return v10

    .line 159
    :cond_55
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .restart local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    nop

    .line 162
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 161
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v12

    .line 164
    .local v12, "updateLoadingPackages":Z
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 165
    .local v13, "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-nez v13, :cond_78

    .line 167
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit v9

    return v10

    .line 170
    :cond_78
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v14

    if-ne v4, v14, :cond_8b

    .line 185
    # invokes: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    invoke-static {v13, v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v14

    if-nez v14, :cond_89

    if-eqz v12, :cond_87

    goto :goto_89

    :cond_87
    const/4 v10, 0x0

    nop

    :cond_89
    :goto_89
    monitor-exit v9

    return v10

    .line 179
    :cond_8b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    const-string v0, "Trying to change ownerUserId for  dex path "

    .line 179
    .end local v0    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .local v15, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 189
    .end local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v12    # "updateLoadingPackages":Z
    .end local v13    # "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v15    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_b7
    move-exception v0

    monitor-exit v9
    :try_end_b9
    .catchall {:try_start_1b .. :try_end_b9} :catchall_b7

    throw v0

    .line 126
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "Null classLoaderContext"

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loaderIsa "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is unsupported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 610
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 611
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 613
    :cond_10
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 614
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removePackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 564
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 575
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 577
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 578
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 580
    :cond_10
    const/4 v2, 0x0

    .line 581
    .local v2, "updated":Z
    nop

    .line 582
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 583
    .local v3, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 584
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 585
    .local v4, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    if-ne v5, p2, :cond_3a

    .line 586
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 587
    const/4 v2, 0x1

    .line 589
    .end local v4    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_3a
    goto :goto_1e

    .line 592
    :cond_3b
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 593
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v4

    if-nez v4, :cond_51

    .line 594
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const/4 v2, 0x1

    .line 597
    :cond_51
    monitor-exit v0

    return v2

    .line 598
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v2    # "updated":Z
    .end local v3    # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method syncData(Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 491
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 493
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 494
    .local v1, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 496
    .local v2, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 497
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 498
    .local v4, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 499
    .local v5, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v5, :cond_32

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_bf

    .line 505
    :cond_32
    nop

    .line 506
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 507
    .local v6, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 508
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 509
    .local v7, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 511
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 513
    .end local v7    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_62
    goto :goto_3f

    .line 516
    :cond_63
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 517
    .local v7, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 518
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 519
    .local v8, "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_76
    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    .line 520
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 521
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_76

    .line 528
    :cond_90
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 529
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 530
    .local v10, "codePath":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v10, v11, v12, v12}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 531
    .end local v10    # "codePath":Ljava/lang/String;
    goto :goto_9a

    .line 532
    :cond_ac
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v9

    if-nez v9, :cond_bf

    .line 533
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 539
    .end local v2    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v5    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    .end local v7    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_bf
    :goto_bf
    goto/16 :goto_d

    .line 540
    .end local v1    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :cond_c1
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_3 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method write(Ljava/io/Writer;)V
    .registers 19
    .param p1, "out"    # Ljava/io/Writer;

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 254
    .local v0, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 257
    .local v1, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string v3, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 258
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 260
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 262
    .local v5, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 263
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 264
    .local v7, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v1, v6}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 269
    .local v9, "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 270
    .local v10, "codePath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 271
    .local v11, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-static {v13, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 273
    .end local v9    # "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10    # "codePath":Ljava/lang/String;
    .end local v11    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_43

    .line 276
    :cond_8a
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_96
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 277
    .local v9, "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 278
    .local v10, "dexPath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 279
    .local v11, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    const-string v12, ","

    new-array v13, v3, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 281
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v15

    move-object/from16 v3, p0

    invoke-direct {v3, v15}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 280
    invoke-static {v12, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 282
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_ed
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 283
    .local v13, "isa":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .end local v13    # "isa":Ljava/lang/String;
    goto :goto_ed

    .line 285
    :cond_10e
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    .line 287
    # getter for: Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 286
    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v9    # "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v10    # "dexPath":Ljava/lang/String;
    .end local v11    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    nop

    .line 276
    const/4 v3, 0x2

    goto/16 :goto_96

    .line 290
    .end local v5    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_13a
    move-object/from16 v3, p0

    .line 260
    const/4 v3, 0x2

    goto/16 :goto_1c

    .line 291
    :cond_13f
    move-object/from16 v3, p0

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 292
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Void;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 215
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 218
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 219
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 222
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 228
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_26

    .line 223
    :catch_19
    move-exception v2

    .line 224
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1f

    .line 225
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 227
    :cond_1f
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to write usage for dex files"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    :goto_26
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    .line 210
    return-void
.end method
