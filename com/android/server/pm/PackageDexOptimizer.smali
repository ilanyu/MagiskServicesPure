.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field public static final SKIP_SHARED_LIBRARY_CHECK:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 104
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 106
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 112
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 113
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 115
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .registers 5
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    .line 356
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 357
    const-wide/16 v0, -0x1

    return-wide v0

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private acquireWakeLockLI(ILjava/lang/String;)J
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 373
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 374
    const-wide/16 v0, -0x1

    return-wide v0

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 119
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    .line 120
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 666
    return-object v1

    .line 668
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 673
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 675
    .local v2, "oatDir":Ljava/io/File;
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_19 .. :try_end_22} :catch_28

    .line 679
    nop

    .line 680
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :catch_28
    move-exception v3

    .line 677
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "PackageManager.DexOptimizer"

    const-string v5, "Failed to create oat dir"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    return-object v1

    .line 682
    .end local v2    # "oatDir":Ljava/io/File;
    .end local v3    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_31
    return-object v1
.end method

.method private dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .registers 44
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isa"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;
    .param p5, "profileUpdated"    # Z
    .param p6, "classLoaderContext"    # Ljava/lang/String;
    .param p7, "dexoptFlags"    # I
    .param p8, "uid"    # I
    .param p9, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p10, "downgrade"    # Z
    .param p11, "profileName"    # Ljava/lang/String;
    .param p12, "dexMetadataPath"    # Ljava/lang/String;
    .param p13, "compilationReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p9

    .line 281
    move-object v1, v8

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 283
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_21

    .line 284
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_21
    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "oatDir":Ljava/lang/String;
    const-string v0, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt (dexoptNeeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    move/from16 v4, p7

    invoke-direct {v8, v4}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " targetFilter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " oatDir="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " classLoaderContext="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide/from16 v27, v10

    .line 304
    .local v27, "startTime":J
    iget-object v10, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 307
    invoke-static/range {p13 .. p13}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v26
    :try_end_9b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_81 .. :try_end_9b} :catch_ca

    .line 304
    move-object v11, v15

    move/from16 v23, v12

    move/from16 v12, p8

    move-object v8, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move-object v9, v15

    move v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    :try_start_b6
    invoke-virtual/range {v10 .. v26}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz v8, :cond_c6

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 311
    .local v10, "endTime":J
    sub-long v12, v10, v27

    long-to-int v0, v12

    int-to-long v12, v0

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_c6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b6 .. :try_end_c6} :catch_c8

    .line 313
    .end local v10    # "endTime":J
    :cond_c6
    const/4 v0, 0x1

    return v0

    .line 314
    .end local v27    # "startTime":J
    :catch_c8
    move-exception v0

    goto :goto_cd

    :catch_ca
    move-exception v0

    move-object v8, v13

    move-object v9, v15

    .line 315
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_cd
    const-string v3, "PackageManager.DexOptimizer"

    const-string v7, "Failed to dexopt"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v3, -0x1

    return v3
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 32
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    .line 404
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_14

    .line 407
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 410
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 414
    .local v14, "compilerFilter":Ljava/lang/String;
    move-object/from16 v13, p4

    invoke-direct {v1, v2, v14, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    .line 416
    .local v0, "dexoptFlags":I
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    if-eqz v3, :cond_3a

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 417
    invoke-static {v3, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 418
    or-int/lit16 v0, v0, 0x100

    .line 426
    .end local v0    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_38
    move v12, v0

    goto :goto_49

    .line 419
    .end local v12    # "dexoptFlags":I
    .restart local v0    # "dexoptFlags":I
    :cond_3a
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v3, :cond_100

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 420
    invoke-static {v3, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 421
    or-int/lit16 v0, v0, 0x80

    goto :goto_38

    .line 426
    .end local v0    # "dexoptFlags":I
    .restart local v12    # "dexoptFlags":I
    :goto_49
    const-string v0, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-direct {v1, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " target-filter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v21, "&"

    .line 437
    .local v21, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v0

    move v11, v0

    .line 439
    .local v11, "reason":I
    :try_start_90
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 444
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 447
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v16

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 448
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v19
    :try_end_be
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_90 .. :try_end_be} :catch_f1

    .line 444
    move-object/from16 v23, v4

    move-object v4, v15

    move/from16 v22, v9

    const/4 v9, 0x0

    move-object/from16 v24, v10

    move v10, v12

    move/from16 v25, v11

    move-object v11, v14

    .end local v11    # "reason":I
    .local v25, "reason":I
    move/from16 v26, v12

    move-object/from16 v12, v24

    .end local v12    # "dexoptFlags":I
    .local v26, "dexoptFlags":I
    move-object/from16 v13, v21

    move-object/from16 v24, v14

    move-object/from16 v14, v23

    .end local v14    # "compilerFilter":Ljava/lang/String;
    .local v24, "compilerFilter":Ljava/lang/String;
    move/from16 v15, v16

    move/from16 v16, v22

    :try_start_d8
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d8 .. :try_end_db} :catch_e7

    .line 449
    .end local v7    # "isa":Ljava/lang/String;
    nop

    .line 439
    move-object/from16 v15, p2

    move-object/from16 v13, p4

    move-object/from16 v14, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto :goto_98

    .line 452
    :catch_e7
    move-exception v0

    goto :goto_f8

    .line 451
    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .restart local v11    # "reason":I
    .restart local v12    # "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :cond_e9
    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v24, v14

    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .end local v14    # "compilerFilter":Ljava/lang/String;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    .restart local v25    # "reason":I
    .restart local v26    # "dexoptFlags":I
    const/4 v0, 0x1

    return v0

    .line 452
    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .restart local v11    # "reason":I
    .restart local v12    # "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :catch_f1
    move-exception v0

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v24, v14

    .line 453
    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .end local v14    # "compilerFilter":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    .restart local v25    # "reason":I
    .restart local v26    # "dexoptFlags":I
    :goto_f8
    const-string v3, "PackageManager.DexOptimizer"

    const-string v4, "Failed to dexopt"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    return v20

    .line 423
    .end local v21    # "classLoaderContext":Ljava/lang/String;
    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .local v0, "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :cond_100
    move-object/from16 v24, v14

    .end local v14    # "compilerFilter":Ljava/lang/String;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    const-string v3, "PackageManager.DexOptimizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not infer CE/DE storage for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return v20
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 16
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 564
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 565
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 570
    .local v1, "debuggable":Z
    :goto_b
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    .line 571
    .local v4, "isProfileGuidedFilter":Z
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isForwardLocked()Z

    move-result v5

    if-nez v5, :cond_1f

    if-eqz v4, :cond_1d

    .line 572
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1d
    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v3

    .line 573
    .local v5, "isPublic":Z
    :goto_20
    if-eqz v4, :cond_25

    const/16 v6, 0x10

    goto :goto_26

    :cond_25
    move v6, v3

    .line 577
    .local v6, "profileFlag":I
    :goto_26
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v7

    if-nez v7, :cond_2f

    .line 578
    nop

    .line 579
    move v7, v3

    goto :goto_31

    :cond_2f
    const/16 v7, 0x400

    .line 581
    .local v7, "hiddenApiFlag":I
    :goto_31
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v8

    .line 582
    .local v8, "compilationReason":I
    const/4 v9, 0x1

    .line 583
    .local v9, "generateCompactDex":Z
    packed-switch v8, :pswitch_data_90

    goto :goto_3b

    .line 587
    :pswitch_3a
    const/4 v9, 0x0

    .line 595
    :goto_3b
    if-eqz v4, :cond_4e

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v10, :cond_47

    .line 596
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v10

    if-nez v10, :cond_4e

    :cond_47
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v10

    if-eqz v10, :cond_4e

    goto :goto_4f

    :cond_4e
    move v2, v3

    .line 598
    .local v2, "generateAppImage":Z
    :goto_4f
    if-eqz v5, :cond_53

    .line 599
    const/4 v10, 0x2

    goto :goto_55

    .line 598
    :cond_53
    nop

    .line 599
    move v10, v3

    :goto_55
    if-eqz v1, :cond_59

    const/4 v11, 0x4

    goto :goto_5a

    :cond_59
    move v11, v3

    :goto_5a
    or-int/2addr v10, v11

    or-int/2addr v10, v6

    .line 601
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v11

    if-eqz v11, :cond_65

    const/16 v11, 0x8

    goto :goto_66

    :cond_65
    move v11, v3

    :goto_66
    or-int/2addr v10, v11

    .line 602
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v11

    if-eqz v11, :cond_70

    const/16 v11, 0x200

    goto :goto_71

    :cond_70
    move v11, v3

    :goto_71
    or-int/2addr v10, v11

    .line 604
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptBgCpuset()Z

    move-result v11

    if-eqz v11, :cond_7b

    const/16 v11, 0x4000

    goto :goto_7c

    :cond_7b
    move v11, v3

    :goto_7c
    or-int/2addr v10, v11

    .line 605
    if-eqz v9, :cond_82

    const/16 v11, 0x800

    goto :goto_83

    :cond_82
    move v11, v3

    :goto_83
    or-int/2addr v10, v11

    .line 606
    if-eqz v2, :cond_89

    const/16 v3, 0x1000

    nop

    :cond_89
    or-int/2addr v3, v10

    or-int/2addr v3, v7

    .line 608
    .local v3, "dexFlags":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v10

    return v10

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method private getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 556
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isa"    # Ljava/lang/String;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "classLoaderContext"    # Ljava/lang/String;
    .param p5, "newProfile"    # Z
    .param p6, "downgrade"    # Z

    .line 619
    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_b

    .line 624
    .local v0, "dexoptNeeded":I
    nop

    .line 623
    nop

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 621
    .end local v0    # "dexoptNeeded":I
    :catch_b
    move-exception v0

    .line 622
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading apk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    const/4 v1, -0x1

    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"    # Ljava/io/File;

    .line 686
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 531
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 532
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 534
    .local v1, "vmSafeMode":Z
    :goto_9
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 535
    const-string/jumbo v2, "verify"

    return-object v2

    .line 537
    :cond_1b
    if-eqz v1, :cond_22

    .line 538
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 541
    :cond_22
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz p3, :cond_30

    .line 543
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 547
    :cond_30
    return-object p2
.end method

.method private isAppImageEnabled()Z
    .registers 3

    .line 560
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 639
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 640
    return v1

    .line 644
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 645
    :catch_11
    move-exception v0

    .line 646
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageManager.DexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 43
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 164
    if-eqz p3, :cond_9

    .line 165
    move-object/from16 v0, p3

    goto :goto_f

    :cond_9
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    :goto_f
    move-object v13, v0

    .line 166
    .local v13, "instructionSets":[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v11

    .line 169
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 170
    .local v0, "sharedGid":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_50

    .line 171
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Well this is awkward; package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " had UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/16 v0, 0x270f

    .line 179
    .end local v0    # "sharedGid":I
    .local v9, "sharedGid":I
    :cond_50
    move v9, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Z

    .line 180
    .local v8, "pathsWithCode":[Z
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_66

    move/from16 v0, v17

    goto :goto_68

    :cond_66
    move/from16 v0, v16

    :goto_68
    aput-boolean v0, v8, v16

    .line 181
    move/from16 v0, v17

    .line 181
    .local v0, "i":I
    :goto_6c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 182
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7f

    move/from16 v1, v17

    goto :goto_81

    :cond_7f
    move/from16 v1, v16

    :goto_81
    aput-boolean v1, v8, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 184
    .end local v0    # "i":I
    :cond_86
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v7, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v6

    if-eq v0, v1, :cond_d2

    .line 189
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 193
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-nez v0, :cond_c3

    const-string/jumbo v3, "null"

    goto :goto_c7

    :cond_c3
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_c7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_d2
    const/4 v0, 0x0

    .line 199
    .local v0, "result":I
    move v1, v0

    move/from16 v0, v16

    .line 199
    .local v0, "i":I
    .local v1, "result":I
    :goto_d6
    move v4, v0

    .line 199
    .end local v0    # "i":I
    .local v4, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_280

    .line 201
    aget-boolean v0, v8, v4

    if-nez v0, :cond_e2

    .line 202
    goto :goto_107

    .line 204
    :cond_e2
    aget-object v0, v6, v4

    if-eqz v0, :cond_249

    .line 211
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_118

    .line 215
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    .line 216
    nop

    .line 199
    .end local v3    # "path":Ljava/lang/String;
    :goto_107
    move/from16 v33, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v8

    move/from16 v32, v9

    move v15, v10

    move-object/from16 v34, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    goto/16 :goto_232

    .line 220
    .restart local v3    # "path":Ljava/lang/String;
    :cond_118
    if-nez v4, :cond_11c

    const/4 v2, 0x0

    goto :goto_122

    :cond_11c
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    add-int/lit8 v5, v4, -0x1

    aget-object v2, v2, v5

    :goto_122
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "profileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 223
    .local v5, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v18

    if-eqz v18, :cond_142

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 225
    .local v0, "dexMetadataFile":Ljava/io/File;
    if-nez v0, :cond_13b

    .line 226
    const/16 v18, 0x0

    goto :goto_13f

    :cond_13b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    :goto_13f
    move-object/from16 v0, v18

    .line 226
    .end local v5    # "dexMetadataPath":Ljava/lang/String;
    .local v0, "dexMetadataPath":Ljava/lang/String;
    goto :goto_143

    .line 229
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .restart local v5    # "dexMetadataPath":Ljava/lang/String;
    :cond_142
    move-object v0, v5

    .line 229
    .end local v5    # "dexMetadataPath":Ljava/lang/String;
    .restart local v0    # "dexMetadataPath":Ljava/lang/String;
    :goto_143
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v5

    if-nez v5, :cond_155

    .line 230
    move-object/from16 v5, p5

    invoke-virtual {v5, v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_152

    goto :goto_157

    :cond_152
    move/from16 v18, v16

    goto :goto_159

    :cond_155
    move-object/from16 v5, p5

    :goto_157
    move/from16 v18, v17

    :goto_159
    move/from16 v20, v18

    .line 234
    .local v20, "isUsedByOtherApps":Z
    iget-object v10, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 235
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    .line 234
    move-object/from16 v23, v13

    move/from16 v13, v20

    invoke-direct {v14, v10, v5, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 236
    .end local v20    # "isUsedByOtherApps":Z
    .local v5, "compilerFilter":Ljava/lang/String;
    .local v13, "isUsedByOtherApps":Z
    .local v23, "instructionSets":[Ljava/lang/String;
    nop

    .line 237
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v10

    .line 236
    invoke-static {v15, v10, v5, v2, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->maybeAdjustCompilerFilter(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    .end local v5    # "compilerFilter":Ljava/lang/String;
    .local v10, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v5

    if-eqz v5, :cond_181

    .line 240
    invoke-direct {v14, v15, v9, v2, v10}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_181

    move/from16 v5, v17

    goto :goto_183

    :cond_181
    move/from16 v5, v16

    .line 244
    .local v5, "profileUpdated":Z
    :goto_183
    move/from16 v24, v5

    move-object/from16 v5, p6

    invoke-direct {v14, v15, v10, v5}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v18

    .line 246
    .end local v5    # "profileUpdated":Z
    .local v18, "dexoptFlags":I
    .local v24, "profileUpdated":Z
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptBgCpuset()Z

    move-result v19

    if-eqz v19, :cond_1b4

    .line 247
    move-object/from16 v25, v0

    const-string v0, "PackageManager.DexOptimizer"

    .line 247
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .local v25, "dexMetadataPath":Ljava/lang/String;
    move-object/from16 v26, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .end local v2    # "profileName":Ljava/lang/String;
    .local v26, "profileName":Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dexopt-bg: bg flag is added to pkg = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " path = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b8

    .line 251
    .end local v25    # "dexMetadataPath":Ljava/lang/String;
    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v0    # "dexMetadataPath":Ljava/lang/String;
    .restart local v2    # "profileName":Ljava/lang/String;
    :cond_1b4
    move-object/from16 v25, v0

    move-object/from16 v26, v2

    .line 251
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .end local v2    # "profileName":Ljava/lang/String;
    .restart local v25    # "dexMetadataPath":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    :goto_1b8
    array-length v7, v12

    move/from16 v2, v16

    :goto_1bb
    if-ge v2, v7, :cond_224

    aget-object v19, v12, v2

    .line 252
    .local v19, "dexCodeIsa":Ljava/lang/String;
    aget-object v20, v6, v4

    .line 254
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v22

    .line 255
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v28

    .line 252
    move-object v0, v14

    move v14, v1

    move-object v1, v15

    .line 252
    .end local v1    # "result":I
    .local v14, "result":I
    move/from16 v29, v2

    move-object v2, v3

    move-object/from16 v30, v3

    move-object/from16 v3, v19

    .line 252
    .end local v3    # "path":Ljava/lang/String;
    .local v30, "path":Ljava/lang/String;
    move v15, v4

    move-object v4, v10

    .line 252
    .end local v4    # "i":I
    .local v15, "i":I
    move-object/from16 v31, v6

    move-object/from16 v6, v20

    .line 252
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .local v31, "classLoaderContexts":[Ljava/lang/String;
    move/from16 v20, v7

    move/from16 v7, v18

    move-object/from16 v27, v8

    move v8, v9

    .line 252
    .end local v8    # "pathsWithCode":[Z
    .local v27, "pathsWithCode":[Z
    move/from16 v32, v9

    move-object/from16 v9, p4

    .line 252
    .end local v9    # "sharedGid":I
    .local v32, "sharedGid":I
    move-object/from16 v21, v10

    move/from16 v33, v15

    const/4 v15, -0x1

    move/from16 v10, v22

    .line 252
    .end local v10    # "compilerFilter":Ljava/lang/String;
    .end local v15    # "i":I
    .local v21, "compilerFilter":Ljava/lang/String;
    .local v33, "i":I
    move-object/from16 v34, v11

    move-object/from16 v11, v26

    .line 252
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v22, v12

    move-object/from16 v12, v25

    .line 252
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v22, "dexCodeInstructionSets":[Ljava/lang/String;
    move/from16 v35, v13

    move/from16 v13, v28

    .line 252
    .end local v13    # "isUsedByOtherApps":Z
    .local v35, "isUsedByOtherApps":Z
    move/from16 v5, v24

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .end local v24    # "profileUpdated":Z
    .local v0, "newResult":I
    .restart local v5    # "profileUpdated":Z
    if-eq v14, v15, :cond_204

    if-eqz v0, :cond_204

    .line 261
    nop

    .line 251
    .end local v14    # "result":I
    .end local v19    # "dexCodeIsa":Ljava/lang/String;
    .local v0, "result":I
    move v1, v0

    goto :goto_205

    .line 251
    .end local v0    # "result":I
    .restart local v14    # "result":I
    :cond_204
    move v1, v14

    .line 251
    .end local v14    # "result":I
    .restart local v1    # "result":I
    :goto_205
    add-int/lit8 v2, v29, 0x1

    move/from16 v24, v5

    move/from16 v7, v20

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v8, v27

    move-object/from16 v3, v30

    move-object/from16 v6, v31

    move/from16 v9, v32

    move/from16 v4, v33

    move-object/from16 v11, v34

    move/from16 v13, v35

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p6

    goto :goto_1bb

    .line 199
    .end local v5    # "profileUpdated":Z
    .end local v18    # "dexoptFlags":I
    .end local v21    # "compilerFilter":Ljava/lang/String;
    .end local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v25    # "dexMetadataPath":Ljava/lang/String;
    .end local v26    # "profileName":Ljava/lang/String;
    .end local v27    # "pathsWithCode":[Z
    .end local v30    # "path":Ljava/lang/String;
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .end local v33    # "i":I
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "isUsedByOtherApps":Z
    .restart local v4    # "i":I
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    :cond_224
    move v14, v1

    move/from16 v33, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v8

    move/from16 v32, v9

    move-object/from16 v34, v11

    move-object/from16 v22, v12

    const/4 v15, -0x1

    .line 199
    .end local v4    # "i":I
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v27    # "pathsWithCode":[Z
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    .restart local v33    # "i":I
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_232
    add-int/lit8 v0, v33, 0x1

    .line 199
    .end local v33    # "i":I
    .local v0, "i":I
    move-object/from16 v7, p2

    move v10, v15

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v8, v27

    move-object/from16 v6, v31

    move/from16 v9, v32

    move-object/from16 v11, v34

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    goto/16 :goto_d6

    .line 205
    .end local v0    # "i":I
    .end local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v23    # "instructionSets":[Ljava/lang/String;
    .end local v27    # "pathsWithCode":[Z
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v13, "instructionSets":[Ljava/lang/String;
    :cond_249
    move/from16 v33, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v8

    move/from16 v32, v9

    move-object/from16 v34, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .line 205
    .end local v4    # "i":I
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .restart local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v23    # "instructionSets":[Ljava/lang/String;
    .restart local v27    # "pathsWithCode":[Z
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    .restart local v33    # "i":I
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v33

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v33    # "i":I
    .local v3, "i":I
    const-string v4, " path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-object/from16 v4, v34

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 207
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local v3    # "i":I
    .end local v4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v23    # "instructionSets":[Ljava/lang/String;
    .end local v27    # "pathsWithCode":[Z
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "instructionSets":[Ljava/lang/String;
    :cond_280
    move-object/from16 v31, v6

    move-object/from16 v27, v8

    move/from16 v32, v9

    move-object v4, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .line 265
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .restart local v4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v23    # "instructionSets":[Ljava/lang/String;
    .restart local v27    # "pathsWithCode":[Z
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    return v1
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 697
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_10
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 700
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_1a
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    .line 703
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_26
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 706
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_31
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3d

    .line 709
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3d
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_48

    .line 712
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_48
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_54

    .line 715
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_54
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_60

    .line 718
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_60
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_6b

    .line 721
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_6b
    and-int/lit16 v1, p1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_76

    .line 725
    const-string v1, "cpuset_bg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_76
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_81

    .line 729
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_81
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .registers 8
    .param p1, "acquireTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 384
    return-void

    .line 387
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 390
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 391
    .local v0, "duration":J
    const-wide/32 v2, 0xa1220

    cmp-long v2, v0, v2

    if-ltz v2, :cond_54

    .line 392
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_55

    .line 398
    .end local v0    # "duration":J
    :cond_54
    goto :goto_77

    .line 396
    :catch_55
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2
    .param p1, "dexoptFlags"    # I

    .line 470
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2
    .param p1, "dexoptNeeded"    # I

    .line 463
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 9
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 336
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1e

    .line 344
    .local v1, "acquireTime":J
    :try_start_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 346
    :try_start_14
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 344
    return v3

    .line 346
    :catchall_19
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw v3

    .line 348
    .end local v1    # "acquireTime":J
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v1

    .line 337
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 16
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 478
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "instructionSets":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v2

    .line 483
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 484
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 487
    array-length v5, v1

    const/4 v6, 0x0

    :goto_38
    if-ge v6, v5, :cond_8c

    aget-object v7, v1, v6

    .line 489
    .local v7, "isa":Ljava/lang/String;
    :try_start_3c
    invoke-static {v4, v7}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v8

    .line 490
    .local v8, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": [status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] [reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v8}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 490
    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6c} :catch_6d

    .line 494
    .end local v8    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_89

    .line 492
    :catch_6d
    move-exception v8

    .line 493
    .local v8, "ioe":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": [Exception]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .end local v7    # "isa":Ljava/lang/String;
    .end local v8    # "ioe":Ljava/io/IOException;
    :goto_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 497
    :cond_8c
    invoke-virtual {p3, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "used by other apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    :cond_ab
    invoke-virtual {p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v5

    .line 503
    .local v5, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_122

    .line 504
    const-string/jumbo v6, "known secondary dex files:"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 506
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 507
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 508
    .local v8, "dex":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 509
    .local v9, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 512
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "class loader context: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "used by other apps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 516
    :cond_11b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 517
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8    # "dex":Ljava/lang/String;
    .end local v9    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_c6

    .line 518
    :cond_11f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    :cond_122
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 521
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    goto/16 :goto_12

    .line 522
    :cond_127
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 136
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    .line 140
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_12
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_2a

    .line 148
    .local v1, "acquireTime":J
    :try_start_1c
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_25

    .line 151
    :try_start_20
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 148
    return v3

    .line 151
    :catchall_25
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw v3

    .line 153
    .end local v1    # "acquireTime":J
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1

    .line 137
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method systemReady()V
    .registers 2

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 691
    return-void
.end method
