.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 22
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-object/from16 v15, p0

    .line 16347
    move-object/from16 v14, p2

    move-object/from16 v13, p1

    iput-object v13, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16348
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16350
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v9, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v10, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v11, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v12, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v8, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v14, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 16348
    const/16 v16, 0x0

    move/from16 v17, v0

    move-object v0, v15

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v13, v18

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V

    .line 16354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-nez v0, :cond_41

    .line 16358
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->statistic:Lcom/android/server/pm/InstallationStatistic;

    .line 16359
    return-void

    .line 16355
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forward locking only supported in ASEC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 25
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    .line 16362
    move-object/from16 v12, p1

    iput-object v12, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16363
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    sget-object v16, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v15

    move-object/from16 v8, p4

    move/from16 v12, v17

    move-object/from16 v13, v16

    move-object v15, v14

    move/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V

    .line 16366
    const/4 v0, 0x0

    if-eqz v15, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16367
    move-object/from16 v1, p3

    if-eqz v1, :cond_42

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    :cond_42
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16368
    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .line 16335
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return-object v0
.end method

.method private cleanUp()Z
    .registers 3

    .line 16519
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_29

    .line 16523
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 16525
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 16526
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16529
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 16520
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method private doCopyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 12
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16380
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 16382
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16383
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16384
    return v1

    .line 16388
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 16390
    .local v2, "beginCopy":J
    :try_start_18
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 16391
    .local v0, "isEphemeral":Z
    :goto_21
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16392
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 16393
    .local v4, "tempDir":Ljava/io/File;
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16394
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_86

    .line 16398
    .end local v0    # "isEphemeral":Z
    .end local v4    # "tempDir":Ljava/io/File;
    nop

    .line 16400
    new-instance v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .line 16418
    .local v0, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/4 v4, 0x1

    .line 16419
    .local v4, "ret":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v0}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v4

    .line 16420
    if-eq v4, v1, :cond_4c

    .line 16421
    const-string v1, "PackageManager"

    const-string v5, "Failed to copy package"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16422
    return v4

    .line 16425
    :cond_4c
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const-string/jumbo v6, "lib"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16426
    .local v1, "libraryRoot":Ljava/io/File;
    const/4 v5, 0x0

    .line 16428
    .local v5, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_57
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v6

    move-object v5, v6

    .line 16429
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 16432
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    iput-wide v7, v6, Lcom/android/server/pm/InstallationStatistic;->timeCopyApkConsumed:J
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_70} :catch_73
    .catchall {:try_start_57 .. :try_end_70} :catchall_71

    goto :goto_7d

    .line 16437
    :catchall_71
    move-exception v6

    goto :goto_82

    .line 16433
    :catch_73
    move-exception v6

    .line 16434
    .local v6, "e":Ljava/io/IOException;
    :try_start_74
    const-string v7, "PackageManager"

    const-string v8, "Copying native libraries failed"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_71

    .line 16435
    const/16 v4, -0x6e

    .line 16437
    .end local v6    # "e":Ljava/io/IOException;
    :goto_7d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 16438
    nop

    .line 16440
    return v4

    .line 16437
    :goto_82
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 16395
    .end local v0    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v1    # "libraryRoot":Ljava/io/File;
    .end local v4    # "ret":I
    .end local v5    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catch_86
    move-exception v0

    .line 16396
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create copy file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16397
    const/4 v1, -0x4

    return v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 4

    .line 16534
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16535
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 16537
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 16538
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v2
    :try_end_19
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_e .. :try_end_19} :catch_1b

    move-object v0, v2

    .line 16541
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_1c

    .line 16539
    :catch_1b
    move-exception v1

    .line 16544
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16545
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    .line 16546
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 6
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16371
    const-string v0, "copyApk"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16373
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 16375
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16373
    return v0

    .line 16375
    :catchall_10
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method doPostDeleteLI(Z)Z
    .registers 3
    .param p1, "delete"    # Z

    .line 16550
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 16551
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .registers 4
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .line 16502
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 16503
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16505
    :cond_6
    return p1
.end method

.method doPreInstall(I)I
    .registers 3
    .param p1, "status"    # I

    .line 16444
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 16445
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16447
    :cond_6
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 12
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .line 16451
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    .line 16452
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16453
    return v1

    .line 16456
    :cond_8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 16457
    .local v2, "targetDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16458
    .local v3, "beforeCodeFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4, v2, v5}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 16462
    .local v4, "afterCodeFile":Ljava/io/File;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_23} :catch_8c

    .line 16466
    nop

    .line 16468
    invoke-static {v4}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 16469
    const-string v0, "PackageManager"

    const-string v5, "Failed to restorecon"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16470
    return v1

    .line 16474
    :cond_32
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16475
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16479
    :try_start_36
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_74

    .line 16483
    nop

    .line 16484
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 16486
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    .line 16490
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 16491
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 16492
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 16493
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 16494
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 16495
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 16496
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 16498
    return v0

    .line 16480
    :catch_74
    move-exception v0

    .line 16481
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16482
    return v1

    .line 16463
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8c
    move-exception v0

    .line 16464
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v5, "PackageManager"

    const-string v6, "Failed to rename"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16465
    return v1
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .line 16510
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .line 16515
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
