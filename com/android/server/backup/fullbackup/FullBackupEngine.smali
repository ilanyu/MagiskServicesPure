.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field private final mOpToken:I

.field mOutput:Ljava/io/OutputStream;

.field public mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPkg:Landroid/content/pm/PackageInfo;

.field mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field private final mQuota:J

.field mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V
    .registers 14
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/fullbackup/FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p7, "quota"    # J
    .param p9, "opToken"    # I
    .param p10, "transportFlags"    # I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 185
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 186
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 187
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 188
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 189
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 190
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 192
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 193
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 194
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 195
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 196
    nop

    .line 197
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 196
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 63
    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 63
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/FullBackupDataOutput;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 63
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 63
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method private initializeAgent()Z
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 314
    :cond_11
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private tearDown()V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_25

    .line 393
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 394
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 395
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    .line 394
    invoke-static {v1, v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 396
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 400
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_25
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 19
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    move-object/from16 v0, p1

    .line 320
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "appSourceDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "apkDir":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "a"

    const/4 v4, 0x0

    move-object v5, v8

    move-object v6, v1

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 331
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 332
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    .line 333
    .local v4, "obbDir":Ljava/io/File;
    if-eqz v4, :cond_4f

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 338
    .local v5, "obbFiles":[Ljava/io/File;
    if-eqz v5, :cond_4f

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "obbDirName":Ljava/lang/String;
    array-length v7, v5

    :goto_38
    if-ge v3, v7, :cond_4f

    aget-object v15, v5, v3

    .line 341
    .local v15, "obb":Ljava/io/File;
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v10, "obb"

    const/4 v11, 0x0

    .line 342
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 341
    move-object v12, v6

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 340
    .end local v15    # "obb":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 346
    .end local v5    # "obbFiles":[Ljava/io/File;
    .end local v6    # "obbDirName":Ljava/lang/String;
    :cond_4f
    return-void
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 368
    .local v1, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 369
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 371
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 372
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 373
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 374
    .local v4, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 376
    if-eqz p3, :cond_45

    array-length v5, p3

    if-lez v5, :cond_45

    .line 377
    const v5, 0x1ffed01

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 378
    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 379
    invoke-virtual {v4, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 381
    :cond_45
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 382
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 386
    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 387
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    move-object/from16 v10, p0

    const/16 v11, -0x3eb

    .line 223
    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 225
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    .line 226
    move-object v1, v12

    .line 228
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_19
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_e6
    .catchall {:try_start_19 .. :try_end_1d} :catchall_e2

    move-object v15, v0

    .line 230
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v15, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_1e
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 231
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v16, v1

    .line 233
    .local v16, "isSharedStorage":Z
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    if-eqz v1, :cond_47

    if-nez v16, :cond_47

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_47

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v14

    if-eqz v1, :cond_45

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_47

    :cond_45
    move v7, v14

    goto :goto_48

    :cond_47
    move v7, v13

    .line 240
    .local v7, "sendApk":Z
    :goto_48
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v9

    .line 243
    .local v9, "widgetBlob":[B
    new-instance v17, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v5, v15, v14

    iget v6, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    if-nez v16, :cond_5e

    move v8, v14

    goto :goto_5f

    :cond_5e
    move v8, v13

    :goto_5f
    move-object/from16 v1, v17

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    move-object/from16 v1, v17

    .line 245
    .local v1, "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    aget-object v2, v15, v14

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 246
    aput-object v12, v15, v14

    .line 247
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "app-data-runner"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 248
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 253
    aget-object v3, v15, v13

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 254
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    .line 253
    invoke-static {v3, v4, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V

    .line 257
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 258
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v3

    if-nez v3, :cond_b4

    .line 260
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_b3} :catch_df
    .catchall {:try_start_1e .. :try_end_b3} :catchall_dd

    goto :goto_b5

    .line 265
    :cond_b4
    const/4 v11, 0x0

    .line 273
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v16    # "isSharedStorage":Z
    :goto_b5
    :try_start_b5
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 274
    if-eqz v15, :cond_ce

    .line 275
    aget-object v0, v15, v13

    if-eqz v0, :cond_c5

    .line 276
    aget-object v0, v15, v13

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 278
    :cond_c5
    aget-object v0, v15, v14

    if-eqz v0, :cond_ce

    .line 279
    aget-object v0, v15, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_ce} :catch_d0

    .line 285
    :cond_ce
    goto/16 :goto_139

    .line 282
    :catch_d0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v0, -0x3e8

    .line 286
    .end local v11    # "result":I
    .local v0, "result":I
    nop

    .line 288
    move v11, v0

    goto :goto_139

    .line 271
    .end local v0    # "result":I
    .restart local v11    # "result":I
    :catchall_dd
    move-exception v0

    goto :goto_e4

    .line 267
    :catch_df
    move-exception v0

    move-object v1, v15

    goto :goto_e7

    .line 271
    .end local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_e2
    move-exception v0

    move-object v15, v1

    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_e4
    move-object v1, v0

    goto :goto_13f

    .line 267
    .end local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :catch_e6
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    :goto_e7
    :try_start_e7
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_e7 .. :try_end_10d} :catchall_e2

    .line 269
    const/16 v2, -0x3eb

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "result":I
    .local v2, "result":I
    :try_start_10f
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 274
    if-eqz v1, :cond_128

    .line 275
    aget-object v0, v1, v13

    if-eqz v0, :cond_11f

    .line 276
    aget-object v0, v1, v13

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 278
    :cond_11f
    aget-object v0, v1, v14

    if-eqz v0, :cond_128

    .line 279
    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_128} :catch_12c

    .line 285
    :cond_128
    nop

    .line 288
    move-object v15, v1

    move v11, v2

    goto :goto_139

    .line 282
    :catch_12c
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v0, -0x3e8

    .line 286
    .end local v2    # "result":I
    .local v0, "result":I
    nop

    .line 288
    move v11, v0

    move-object v15, v1

    .end local v0    # "result":I
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "result":I
    .restart local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_139
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    .line 289
    .end local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    goto :goto_17f

    .line 271
    .restart local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_13f
    nop

    .line 273
    :try_start_140
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 274
    if-eqz v15, :cond_159

    .line 275
    aget-object v0, v15, v13

    if-eqz v0, :cond_150

    .line 276
    aget-object v0, v15, v13

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 278
    :cond_150
    aget-object v0, v15, v14

    if-eqz v0, :cond_159

    .line 279
    aget-object v0, v15, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_159} :catch_15a

    .line 285
    :cond_159
    goto :goto_164

    .line 282
    :catch_15a
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v11, -0x3e8

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :goto_164
    throw v1

    .line 290
    .end local v15    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_165
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_17f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    .line 293
    return v11
.end method

.method public preflightCheck()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_6
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 209
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 213
    .local v0, "result":I
    return v0

    .line 215
    .end local v0    # "result":I
    :cond_17
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 8
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 297
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 299
    :try_start_6
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 302
    goto :goto_14

    .line 300
    :catch_c
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method
