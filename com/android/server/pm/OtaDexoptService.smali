.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field private static final DEBUG_DEXOPT:Z = true

.field private static final NO_LIBRARIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private availableSpaceAfterBulkDelete:J

.field private availableSpaceAfterDexopt:J

.field private availableSpaceBefore:J

.field private completeSize:I

.field private dexoptCommandCountExecuted:I

.field private dexoptCommandCountTotal:I

.field private importantPackageCount:I

.field private final mContext:Landroid/content/Context;

.field private mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private otaDexoptTimeStart:J

.field private otherPackageCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "&"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OtaDexoptService;->NO_LIBRARIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 94
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 97
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
    .registers 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilationReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 315
    .local v1, "collectingInstaller":Lcom/android/server/pm/Installer;
    new-instance v2, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    .line 318
    .local v2, "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 319
    .local v3, "libraryDependencies":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 321
    sget-object v4, Lcom/android/server/pm/OtaDexoptService;->NO_LIBRARIES:[Ljava/lang/String;

    move-object v3, v4

    .line 325
    .end local v3    # "libraryDependencies":[Ljava/lang/String;
    .local v9, "libraryDependencies":[Ljava/lang/String;
    :cond_24
    move-object v9, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 328
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v8, v3, p2, v4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 325
    move-object v3, p1

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 332
    monitor-exit p0

    return-object v0

    .line 249
    .end local v0    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "collectingInstaller":Lcom/android/server/pm/Installer;
    .end local v2    # "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    .end local v9    # "libraryDependencies":[Ljava/lang/String;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "compilationReason":I
    :catchall_42
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw p1
.end method

.method private getAvailableSpace()J
    .registers 8

    .line 236
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 238
    .local v0, "lowThreshold":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 241
    .local v3, "usableSpace":J
    sub-long v5, v3, v0

    return-wide v5
.end method

.method private getMainLowSpaceThreshold()J
    .registers 6

    .line 220
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 223
    .local v1, "lowThreshold":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    .line 226
    return-wide v1

    .line 224
    :cond_15
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid low memory threshold"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static inMegabytes(J)I
    .registers 7
    .param p0, "value"    # J

    .line 415
    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    .line 416
    .local v0, "in_mega_bytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    .line 417
    const-string v2, "OTADexopt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MB of free space, overflowing range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const v2, 0x7fffffff

    return v2

    .line 420
    :cond_2b
    long-to-int v2, v0

    return v2
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 101
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 102
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 105
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    .line 107
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .registers 19
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    move-object/from16 v1, p0

    .line 341
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_ec

    .line 345
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_16

    .line 346
    const-string v0, "OTADexopt"

    const-string v2, "No upgrade, skipping A/B artifacts check."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 351
    :cond_16
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v2

    .line 352
    .local v2, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    .line 353
    .local v0, "packagePaths":I
    const/4 v3, 0x0

    .line 354
    .local v3, "pathsSuccessful":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 355
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_35

    .line 356
    nop

    .line 354
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_31
    :goto_31
    move-object/from16 v1, p1

    goto/16 :goto_c7

    .line 360
    .restart local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_35
    invoke-static {v5}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 361
    goto :goto_31

    .line 363
    :cond_3c
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    if-nez v6, :cond_5c

    .line 364
    const-string v6, "OTADexopt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " can be optimized but has null codePath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    goto :goto_31

    .line 370
    :cond_5c
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string v7, "/system"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string v7, "/vendor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string v7, "/product"

    .line 371
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 372
    goto :goto_31

    .line 375
    :cond_7b
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "instructionSets":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v7

    .line 377
    .local v7, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "dexCodeInstructionSets":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    :goto_8b
    if-ge v10, v9, :cond_c5

    aget-object v11, v8, v10

    .line 379
    .local v11, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_93
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 380
    .local v13, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    iget-object v15, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    .line 381
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 385
    .local v14, "oatDir":Ljava/lang/String;
    add-int/lit8 v15, v0, 0x1

    .line 387
    .end local v0    # "packagePaths":I
    .local v15, "packagePaths":I
    move-object/from16 v1, p1

    :try_start_b2
    invoke-virtual {v1, v13, v11, v14}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b2 .. :try_end_b5} :catch_b8

    .line 388
    add-int/lit8 v3, v3, 0x1

    .line 390
    goto :goto_b9

    .line 389
    :catch_b8
    move-exception v0

    .line 391
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "oatDir":Ljava/lang/String;
    :goto_b9
    nop

    .line 379
    move v0, v15

    move-object/from16 v1, p0

    goto :goto_93

    .line 378
    .end local v11    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v15    # "packagePaths":I
    .restart local v0    # "packagePaths":I
    :cond_be
    move-object/from16 v1, p1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_8b

    .line 393
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "instructionSets":[Ljava/lang/String;
    .end local v7    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "dexCodeInstructionSets":[Ljava/lang/String;
    :cond_c5
    move-object/from16 v1, p1

    .line 354
    :goto_c7
    move-object/from16 v1, p0

    goto/16 :goto_22

    .line 394
    :cond_cb
    move-object/from16 v1, p1

    const-string v4, "OTADexopt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 342
    .end local v0    # "packagePaths":I
    .end local v2    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3    # "pathsSuccessful":I
    :cond_ec
    move-object/from16 v1, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Should not be ota-dexopting when trying to move."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performMetricsLogging()V
    .registers 7

    .line 424
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 426
    .local v0, "finalTime":J
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_available_space_before_mb"

    iget-wide v4, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 427
    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v4

    .line 426
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 428
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_available_space_after_bulk_delete_mb"

    iget-wide v4, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 429
    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v4

    .line 428
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 430
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_available_space_after_dexopt_mb"

    iget-wide v4, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 431
    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v4

    .line 430
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 433
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_num_important_packages"

    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 435
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_num_other_packages"

    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 437
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_num_commands"

    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 438
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ota_dexopt_num_commands_executed"

    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 441
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long v3, v0, v3

    .line 442
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 443
    .local v2, "elapsedTimeSeconds":I
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ota_dexopt_time_s"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 444
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .registers 9
    .param p1, "important"    # I
    .param p2, "others"    # I
    .param p3, "spaceBegin"    # J
    .param p5, "spaceBulk"    # J

    .line 401
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 402
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 403
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 405
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 406
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 411
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 412
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_1
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 168
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 170
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 171
    monitor-exit p0

    return-void

    .line 164
    :catchall_16
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method

.method public declared-synchronized getProgress()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_9

    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    monitor-exit p0

    return v0

    .line 188
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    .local v0, "commandsLeft":I
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    int-to-float v2, v2

    div-float/2addr v1, v2

    monitor-exit p0

    return v1

    .line 184
    .end local v0    # "commandsLeft":I
    :catchall_19
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return v0

    .line 176
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 174
    :catchall_15
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_6e

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 199
    const-string v0, "(all done)"
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_76

    monitor-exit p0

    return-object v0

    .line 202
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "next":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    .line 205
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 207
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_76

    .line 208
    monitor-exit p0

    return-object v0

    .line 211
    :cond_42
    :try_start_42
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " commands left."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    const-string v1, "(no free space)"
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_76

    monitor-exit p0

    return-object v1

    .line 195
    .end local v0    # "next":Ljava/lang/String;
    :cond_6e
    :try_start_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_76

    .line 193
    :catchall_76
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 113
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 115
    return-void
.end method

.method public declared-synchronized prepare()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_d9

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e1

    .line 126
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 127
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 126
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v2, "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 134
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_d6

    .line 136
    :try_start_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 137
    .local v3, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x4

    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    goto :goto_40

    .line 139
    :cond_57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 141
    .restart local v3    # "p":Landroid/content/pm/PackageParser$Package;
    iget-boolean v4, v3, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    if-nez v4, :cond_76

    .line 144
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x0

    .line 145
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v5

    .line 144
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    goto :goto_5b

    .line 142
    .restart local v3    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Found a core app that\'s not important"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_7e
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v3

    .line 150
    .local v3, "spaceAvailable":J
    const-wide/32 v5, 0x40000000

    cmp-long v0, v3, v5

    if-gez v0, :cond_c3

    .line 151
    const-string v0, "OTADexopt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 154
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    .line 155
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_af

    .line 157
    :cond_c3
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v10

    .line 159
    .local v10, "spaceAvailableNow":J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move-object v5, p0

    move-wide v8, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_d4
    .catchall {:try_start_3c .. :try_end_d4} :catchall_e1

    .line 160
    monitor-exit p0

    return-void

    .line 134
    .end local v1    # "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2    # "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3    # "spaceAvailable":J
    .end local v10    # "spaceAvailableNow":J
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v1

    .line 120
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_e1

    .line 118
    :catchall_e1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    throw v0
.end method
