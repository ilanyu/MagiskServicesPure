.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .registers 11
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "allowObbs"    # Z
    .param p8, "ephemeralOpToken"    # I

    .line 134
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 76
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 122
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 125
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 135
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 136
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 137
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 138
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 139
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 140
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 141
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 142
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    .line 143
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 145
    nop

    .line 146
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 145
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 148
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p1, "x1"    # J

    .line 70
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 634
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 641
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 609
    const-string v0, "c"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 613
    return v1

    .line 616
    :cond_c
    const-string/jumbo v0, "r"

    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 621
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 625
    return v1

    .line 630
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 574
    return-void
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 652
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    .line 651
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 655
    const/4 v1, 0x0

    return v1

    .line 658
    :cond_19
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 659
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 596
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_c

    .line 597
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 600
    :cond_c
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 580
    monitor-enter p0

    .line 581
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v0, :cond_29

    .line 583
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 584
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    .line 585
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 586
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2b

    .line 589
    goto :goto_27

    .line 587
    :catch_1f
    move-exception v1

    .line 588
    .local v1, "e":Ljava/io/IOException;
    :try_start_20
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v1    # "e":Ljava/io/IOException;
    :goto_27
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 592
    :cond_29
    monitor-exit p0

    .line 593
    return-void

    .line 592
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    .line 603
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 604
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 606
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 60
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_17

    .line 161
    const-string v0, "BackupManagerService"

    const-string v2, "Restore engine used after halting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v13

    .line 165
    :cond_17
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    move-object v14, v0

    .line 172
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v15, p7

    invoke-direct {v0, v10, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v9, v0

    .line 180
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v8, -0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_28
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    .line 181
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_600

    .line 186
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 187
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_38} :catch_60b

    if-nez v0, :cond_99

    .line 190
    if-eqz v12, :cond_73

    .line 191
    :try_start_3c
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 192
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected data for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " but saw "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 194
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 195
    return v13

    .line 550
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_69
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, v15

    goto/16 :goto_613

    .line 201
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_73
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 202
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_82
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_99

    .line 209
    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 213
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 214
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 215
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_99} :catch_69

    .line 219
    :cond_99
    :try_start_99
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a1} :catch_60b

    if-eqz v0, :cond_fc

    .line 220
    :try_start_a3
    invoke-virtual {v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 222
    .local v0, "signatures":[Landroid/content/pm/Signature;
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 224
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 225
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 224
    move-object v2, v9

    move-object v13, v3

    move-object/from16 v3, v16

    .line 224
    .end local v3    # "pkg":Ljava/lang/String;
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v29, v4

    move/from16 v4, p5

    .line 224
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move-object v15, v5

    move-object/from16 v5, v29

    move v15, v6

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 227
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v29

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 227
    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 234
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v13}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_e9} :catch_f2

    .line 235
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 556
    move/from16 v7, p6

    move-object v3, v6

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_606

    .line 550
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_f2
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    .line 550
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v30, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v43, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_f8
    move-object/from16 v30, p7

    goto/16 :goto_613

    .line 235
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_fc
    move-object v13, v3

    move v15, v6

    move-object v6, v4

    .line 235
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    :try_start_ff
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_107} :catch_60b

    if-eqz v0, :cond_130

    .line 237
    :try_start_109
    invoke-virtual {v9, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 243
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 245
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_116} :catch_f2

    move-object v2, v0

    .line 247
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_117
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11c} :catch_126

    .line 556
    move/from16 v7, p6

    move-object/from16 v30, v2

    move-object v3, v6

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_608

    .line 550
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_126
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v30, v2

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_613

    .line 251
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_130
    const/4 v0, 0x1

    .line 252
    .local v0, "okay":Z
    :try_start_131
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v7, v2

    .line 253
    .local v7, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v7}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_142} :catch_60b

    packed-switch v2, :pswitch_data_650

    .line 306
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 306
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v32, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_149
    const-string v2, "BackupManagerService"
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14b} :catch_5f6

    goto/16 :goto_1d1

    .line 290
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_14d
    :try_start_14d
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 292
    const-string v2, "BackupManagerService"

    const-string v3, "apk present but ACCEPT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15e} :catch_f2

    .line 298
    const/4 v0, 0x0

    .line 313
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_15f
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    goto/16 :goto_1de

    .line 261
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_165
    :try_start_165
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 263
    const-string v2, "BackupManagerService"

    const-string v3, "APK file; installing"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v5, v8

    move-object v8, v2

    .line 267
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 268
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_18c} :catch_1c1

    .line 267
    move-object/from16 v16, v2

    move-object v2, v10

    move-object/from16 v5, v16

    move-object/from16 v31, v6

    move-object v6, v15

    .line 267
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v31, "info":Lcom/android/server/backup/FileMetadata;
    move-object v15, v7

    move-object/from16 v7, v31

    .line 267
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v32, v15

    move-object v15, v9

    move-object v9, v14

    .line 267
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_19b
    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    .line 273
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_1a6

    .line 274
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1a8

    .line 275
    :cond_1a6
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 273
    :goto_1a8
    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v3, v31

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 279
    .end local v31    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v15, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 280
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_1b4
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 284
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1bf} :catch_1ed

    .line 285
    const/4 v0, 0x0

    .line 287
    goto :goto_1de

    .line 550
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1c1
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 550
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_613

    .line 255
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v0    # "okay":Z
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    :pswitch_1cb
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 255
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 256
    goto :goto_1de

    .line 306
    :goto_1d1
    :try_start_1d1
    const-string v4, "Invalid policy from manifest"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 308
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_1de
    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1e2} :catch_5f6

    if-eqz v2, :cond_1f6

    :try_start_1e4
    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f7

    goto :goto_1f6

    .line 550
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1ed
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object v9, v15

    goto/16 :goto_f8

    .line 314
    .restart local v0    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1f6
    :goto_1f6
    const/4 v0, 0x0

    .line 322
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :cond_1f7
    move v2, v0

    if-eqz v2, :cond_272

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1fc} :catch_1ed

    if-nez v0, :cond_272

    .line 328
    :try_start_1fe
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 329
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 334
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_235

    .line 341
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 343
    .local v0, "forceClear":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_223

    if-eqz v0, :cond_230

    .line 345
    :cond_223
    const-string v4, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v13, v5}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 355
    :cond_230
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v0    # "forceClear":Z
    :cond_235
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceInjector;->waitingBeforeGetAgent()V

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 368
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 370
    iput-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_248} :catch_24b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1fe .. :try_end_248} :catch_249

    goto :goto_24c

    .line 373
    :catch_249
    move-exception v0

    goto :goto_24d

    .line 371
    :catch_24b
    move-exception v0

    .line 375
    :goto_24c
    nop

    .line 377
    :goto_24d
    :try_start_24d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_272

    .line 378
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v2, 0x0

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 381
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_272
    if-eqz v2, :cond_29d

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29d

    .line 388
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but agent is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_29c} :catch_1ed

    .line 390
    const/4 v2, 0x0

    .line 397
    :cond_29d
    if-eqz v2, :cond_5ad

    .line 398
    const/4 v6, 0x1

    .line 399
    .local v6, "agentSuccess":Z
    :try_start_2a0
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 400
    .local v7, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2a8} :catch_5f6

    move v9, v0

    .line 401
    .local v9, "isSharedStorage":Z
    if-eqz v9, :cond_2b2

    .line 402
    :try_start_2ab
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_2b1} :catch_1ed

    goto :goto_2b8

    .line 403
    :cond_2b2
    :try_start_2b2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b8} :catch_5f6

    :goto_2b8
    move-wide/from16 v35, v16

    .line 405
    .local v35, "timeout":J
    :try_start_2ba
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v38, 0x1

    move-object/from16 v33, v0

    move/from16 v34, p6

    move-object/from16 v37, v4

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 410
    const-string/jumbo v0, "obb"

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2d2
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2d2} :catch_4b1
    .catch Landroid/os/RemoteException; {:try_start_2ba .. :try_end_2d2} :catch_48f

    if-eqz v0, :cond_3aa

    .line 412
    :try_start_2d4
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v18, v4, v5

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_2fd
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2fd} :catch_399
    .catch Landroid/os/RemoteException; {:try_start_2d4 .. :try_end_2fd} :catch_388

    move/from16 v39, v2

    :try_start_2ff
    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2ff .. :try_end_301} :catch_379
    .catch Landroid/os/RemoteException; {:try_start_2ff .. :try_end_301} :catch_36a

    .line 415
    .end local v2    # "okay":Z
    .local v39, "okay":Z
    move/from16 v40, v6

    :try_start_303
    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_305
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_305} :catch_35d
    .catch Landroid/os/RemoteException; {:try_start_303 .. :try_end_305} :catch_350

    .line 415
    .end local v6    # "agentSuccess":Z
    .local v40, "agentSuccess":Z
    move-wide/from16 v41, v7

    :try_start_307
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_309} :catch_345
    .catch Landroid/os/RemoteException; {:try_start_307 .. :try_end_309} :catch_33a

    .line 415
    .end local v7    # "toCopy":J
    .local v41, "toCopy":J
    move-object/from16 v43, v14

    move-object/from16 v44, v15

    :try_start_30d
    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_30d .. :try_end_30f} :catch_333
    .catch Landroid/os/RemoteException; {:try_start_30d .. :try_end_30f} :catch_32c

    .line 415
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v44, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v45, v9

    :try_start_311
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 418
    .end local v9    # "isSharedStorage":Z
    .local v45, "isSharedStorage":Z
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 415
    move-object/from16 v16, v0

    move-object/from16 v17, v13

    move-wide/from16 v19, v4

    move/from16 v21, v2

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    move-wide/from16 v25, v14

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_32a
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_32a} :catch_410
    .catch Landroid/os/RemoteException; {:try_start_311 .. :try_end_32a} :catch_40b

    goto/16 :goto_44e

    .line 456
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_32c
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 456
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_49e

    .line 451
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_333
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 451
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c0

    .line 456
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_33a
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 456
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_49e

    .line 451
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_345
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 451
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c0

    .line 456
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_350
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 456
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_49e

    .line 451
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_35d
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 451
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c0

    .line 456
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_36a
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 456
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_49e

    .line 451
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_379
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 451
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c0

    .line 456
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_388
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 456
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_49e

    .line 451
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_399
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 451
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c0

    .line 419
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_3aa
    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 419
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    :try_start_3b6
    const-string/jumbo v0, "k"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3bf
    .catch Ljava/io/IOException; {:try_start_3b6 .. :try_end_3bf} :catch_48b
    .catch Landroid/os/RemoteException; {:try_start_3b6 .. :try_end_3bf} :catch_487

    if-eqz v0, :cond_415

    .line 423
    :try_start_3c1
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 429
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 431
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_40a
    .catch Ljava/io/IOException; {:try_start_3c1 .. :try_end_40a} :catch_410
    .catch Landroid/os/RemoteException; {:try_start_3c1 .. :try_end_40a} :catch_40b

    .line 432
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto :goto_44e

    .line 456
    :catch_40b
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_49e

    .line 451
    :catch_410
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_4c0

    .line 440
    :cond_415
    :try_start_415
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_420
    .catch Ljava/io/IOException; {:try_start_415 .. :try_end_420} :catch_48b
    .catch Landroid/os/RemoteException; {:try_start_415 .. :try_end_420} :catch_487

    if-eqz v0, :cond_451

    .line 441
    :try_start_422
    const-string v0, "BackupManagerService"

    const-string/jumbo v2, "system process agent - spinning a thread"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 444
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_44d
    .catch Ljava/io/IOException; {:try_start_422 .. :try_end_44d} :catch_410
    .catch Landroid/os/RemoteException; {:try_start_422 .. :try_end_44d} :catch_40b

    .line 445
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    nop

    .line 462
    .end local v13    # "pkg":Ljava/lang/String;
    .local v46, "pkg":Ljava/lang/String;
    :goto_44e
    move-object/from16 v46, v13

    goto :goto_47d

    .line 446
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_451
    :try_start_451
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v15, v0, v2

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_462
    .catch Ljava/io/IOException; {:try_start_451 .. :try_end_462} :catch_48b
    .catch Landroid/os/RemoteException; {:try_start_451 .. :try_end_462} :catch_487

    move-object/from16 v46, v13

    :try_start_464
    iget-wide v12, v3, Lcom/android/server/backup/FileMetadata;->mtime:J

    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 448
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26

    .line 446
    move-wide/from16 v16, v4

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v12

    move/from16 v25, p6

    invoke-interface/range {v14 .. v26}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_47d
    .catch Ljava/io/IOException; {:try_start_464 .. :try_end_47d} :catch_485
    .catch Landroid/os/RemoteException; {:try_start_464 .. :try_end_47d} :catch_483

    .line 462
    :goto_47d
    nop

    .line 465
    move/from16 v2, v39

    move/from16 v6, v40

    goto :goto_4cb

    .line 456
    :catch_483
    move-exception v0

    goto :goto_49e

    .line 451
    :catch_485
    move-exception v0

    goto :goto_4c0

    .line 456
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_487
    move-exception v0

    move-object/from16 v46, v13

    .line 456
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_49e

    .line 451
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_48b
    move-exception v0

    move-object/from16 v46, v13

    .line 451
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_4c0

    .line 456
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_48f
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 459
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_49e
    :try_start_49e
    const-string v2, "BackupManagerService"

    const-string v4, "Agent crashed during full restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a5
    .catch Ljava/io/IOException; {:try_start_49e .. :try_end_4a5} :catch_4a8

    .line 460
    const/4 v6, 0x0

    .line 461
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 461
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    goto :goto_4ca

    .line 550
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v41    # "toCopy":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    :catch_4a8
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v9, v44

    .line 550
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_4ad
    move-object/from16 v8, p4

    goto/16 :goto_f8

    .line 451
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .local v9, "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_4b1
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 453
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_4c0
    :try_start_4c0
    const-string v2, "BackupManagerService"

    const-string v4, "Couldn\'t establish restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v6, 0x0

    .line 455
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 462
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    nop

    .line 465
    .end local v0    # "okay":Z
    .restart local v2    # "okay":Z
    :goto_4ca
    move v2, v0

    :goto_4cb
    if-eqz v2, :cond_548

    .line 469
    const/4 v0, 0x1

    .line 470
    .local v0, "pipeOkay":Z
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 471
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4dc
    .catch Ljava/io/IOException; {:try_start_4c0 .. :try_end_4dc} :catch_5a2

    move v5, v0

    move-wide/from16 v8, v41

    .line 472
    .end local v0    # "pipeOkay":Z
    .end local v41    # "toCopy":J
    .local v4, "pipe":Ljava/io/FileOutputStream;
    .local v5, "pipeOkay":Z
    .local v8, "toCopy":J
    :goto_4df
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_530

    .line 473
    :try_start_4e5
    array-length v0, v11

    int-to-long v12, v0

    cmp-long v0, v8, v12

    if-lez v0, :cond_4ed

    .line 474
    array-length v0, v11

    goto :goto_4ee

    :cond_4ed
    long-to-int v0, v8

    :goto_4ee
    move v12, v0

    .line 475
    .local v12, "toRead":I
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v13, v0

    .line 476
    .local v13, "nRead":I
    if-ltz v13, :cond_500

    .line 477
    iget-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move-wide/from16 v48, v8

    int-to-long v7, v13

    .line 477
    .end local v8    # "toCopy":J
    .local v48, "toCopy":J
    add-long/2addr v14, v7

    iput-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_4ff
    .catch Ljava/io/IOException; {:try_start_4e5 .. :try_end_4ff} :catch_4a8

    goto :goto_502

    .line 479
    .end local v48    # "toCopy":J
    .restart local v8    # "toCopy":J
    :cond_500
    move-wide/from16 v48, v8

    .line 479
    .end local v8    # "toCopy":J
    .restart local v48    # "toCopy":J
    :goto_502
    if-gtz v13, :cond_505

    .line 480
    goto :goto_532

    .line 482
    :cond_505
    int-to-long v7, v13

    sub-long v7, v48, v7

    .line 486
    .end local v48    # "toCopy":J
    .restart local v7    # "toCopy":J
    if-eqz v5, :cond_52d

    .line 488
    const/4 v9, 0x0

    :try_start_50b
    invoke-virtual {v4, v11, v9, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_50e
    .catch Ljava/io/IOException; {:try_start_50b .. :try_end_50e} :catch_50f

    .line 493
    goto :goto_52d

    .line 489
    :catch_50f
    move-exception v0

    move-object v9, v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    :try_start_511
    const-string v9, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to write to restore pipe: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 490
    invoke-static {v9, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52b
    .catch Ljava/io/IOException; {:try_start_511 .. :try_end_52b} :catch_4a8

    .line 492
    const/4 v0, 0x0

    .line 495
    .end local v5    # "pipeOkay":Z
    .end local v12    # "toRead":I
    .end local v13    # "nRead":I
    .local v0, "pipeOkay":Z
    move v5, v0

    .line 471
    .end local v0    # "pipeOkay":Z
    .restart local v5    # "pipeOkay":Z
    :cond_52d
    :goto_52d
    move-wide v8, v7

    const/4 v7, 0x1

    goto :goto_4df

    .line 499
    .end local v7    # "toCopy":J
    .restart local v8    # "toCopy":J
    :cond_530
    move-wide/from16 v48, v8

    .line 499
    .end local v8    # "toCopy":J
    .restart local v48    # "toCopy":J
    :goto_532
    :try_start_532
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_534
    .catch Ljava/io/IOException; {:try_start_532 .. :try_end_534} :catch_5a2

    move-object/from16 v9, v44

    :try_start_536
    invoke-virtual {v9, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 503
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;
    :try_end_53b
    .catch Ljava/io/IOException; {:try_start_536 .. :try_end_53b} :catch_543

    move/from16 v7, p6

    :try_start_53d
    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v6, v0

    .line 503
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v5    # "pipeOkay":Z
    goto :goto_54e

    .line 550
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    .end local v48    # "toCopy":J
    :catch_543
    move-exception v0

    move/from16 v7, p6

    goto/16 :goto_4ad

    .line 508
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local v41    # "toCopy":J
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_548
    move/from16 v7, p6

    move-object/from16 v9, v44

    move-wide/from16 v48, v41

    .line 508
    .end local v41    # "toCopy":J
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "toCopy":J
    :goto_54e
    if-nez v6, :cond_59a

    .line 509
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agent failure restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v46

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v46    # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "; ending restore"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 513
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 514
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 515
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58a
    .catch Ljava/io/IOException; {:try_start_53d .. :try_end_58a} :catch_597

    .line 519
    move-object/from16 v8, p4

    if-eqz v8, :cond_59f

    .line 520
    const/4 v0, -0x2

    :try_start_58f
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 521
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 522
    return v12

    .line 550
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v48    # "toCopy":J
    :catch_597
    move-exception v0

    goto/16 :goto_4ad

    .line 530
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_59a
    move-object/from16 v5, v46

    const/4 v4, 0x0

    move-object/from16 v8, p4

    .line 530
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_59f
    move/from16 v39, v2

    goto :goto_5b7

    .line 550
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5a2
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v9, v44

    move-object/from16 v8, p4

    move-object/from16 v30, p7

    .line 550
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_613

    .line 530
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v13, "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_5ad
    move/from16 v7, p6

    move/from16 v39, v2

    move-object v8, v12

    move-object v5, v13

    move-object/from16 v43, v14

    move-object v9, v15

    const/4 v4, 0x0

    .line 530
    .end local v2    # "okay":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_5b7
    if-nez v39, :cond_606

    .line 534
    iget-wide v12, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const-wide/16 v14, -0x200

    and-long/2addr v12, v14

    .line 535
    .local v12, "bytesToConsume":J
    :goto_5c1
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_606

    .line 536
    array-length v0, v11

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-lez v0, :cond_5cf

    .line 537
    array-length v0, v11

    goto :goto_5d0

    :cond_5cf
    long-to-int v0, v12

    .line 538
    .local v0, "toRead":I
    :goto_5d0
    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v14, v6

    .line 539
    .local v14, "nRead":J
    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-ltz v2, :cond_5e4

    .line 540
    move-object/from16 v50, v5

    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 540
    .end local v5    # "pkg":Ljava/lang/String;
    .local v50, "pkg":Ljava/lang/String;
    add-long/2addr v4, v14

    iput-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_5e3
    .catch Ljava/io/IOException; {:try_start_58f .. :try_end_5e3} :catch_5f3

    goto :goto_5e6

    .line 542
    .end local v50    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_5e4
    move-object/from16 v50, v5

    .line 542
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v50    # "pkg":Ljava/lang/String;
    :goto_5e6
    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-gtz v2, :cond_5ed

    .line 543
    goto :goto_606

    .line 545
    :cond_5ed
    sub-long/2addr v12, v14

    .line 546
    .end local v0    # "toRead":I
    .end local v14    # "nRead":J
    nop

    .line 534
    move-object/from16 v5, v50

    const/4 v4, 0x0

    goto :goto_5c1

    .line 550
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v12    # "bytesToConsume":J
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v39    # "okay":Z
    .end local v50    # "pkg":Ljava/lang/String;
    :catch_5f3
    move-exception v0

    goto/16 :goto_f8

    .line 550
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5f6
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object v9, v15

    move-object/from16 v30, p7

    .line 550
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto :goto_613

    .line 556
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_600
    move/from16 v7, p6

    move-object v3, v4

    move-object v8, v12

    move-object/from16 v43, v14

    .line 556
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_606
    :goto_606
    move-object/from16 v30, p7

    .line 555
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_608
    move-object/from16 v51, v3

    goto :goto_634

    .line 550
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_60b
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 552
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_613
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "io exception on restore socket read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 555
    nop

    .line 555
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v51, 0x0

    .line 555
    .local v51, "info":Lcom/android/server/backup/FileMetadata;
    :goto_634
    move-object/from16 v0, v51

    .line 559
    .end local v51    # "info":Lcom/android/server/backup/FileMetadata;
    .local v0, "info":Lcom/android/server/backup/FileMetadata;
    if-nez v0, :cond_647

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 564
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 565
    if-eqz p2, :cond_648

    .line 566
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_648

    .line 569
    :cond_647
    const/4 v15, 0x0

    :cond_648
    :goto_648
    if-eqz v0, :cond_64d

    const/16 v47, 0x1

    goto :goto_64f

    :cond_64d
    move/from16 v47, v15

    :goto_64f
    return v47

    :pswitch_data_650
    .packed-switch 0x1
        :pswitch_1cb
        :pswitch_165
        :pswitch_14d
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_15

    .line 666
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 670
    goto :goto_15

    .line 667
    :catch_a
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method
