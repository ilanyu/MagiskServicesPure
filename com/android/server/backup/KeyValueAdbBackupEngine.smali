.class public Lcom/android/server/backup/KeyValueAdbBackupEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY_VALUE_BACKUP_DATA_FILENAME_SUFFIX:Ljava/lang/String; = ".data"

.field private static final BACKUP_KEY_VALUE_BLANK_STATE_FILENAME:Ljava/lang/String; = "blank_state"

.field private static final BACKUP_KEY_VALUE_DIRECTORY_NAME:Ljava/lang/String; = "key_value_dir"

.field private static final BACKUP_KEY_VALUE_NEW_STATE_FILENAME_SUFFIX:Ljava/lang/String; = ".new"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbBackupEngine"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private final mBackupDataName:Ljava/io/File;

.field private mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field private final mBlankStateName:Ljava/io/File;

.field private final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDir:Ljava/io/File;

.field private final mManifestFile:Ljava/io/File;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private final mNewStateName:Ljava/io/File;

.field private final mOutput:Ljava/io/OutputStream;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private final mStateDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "backupManagerService"    # Lcom/android/server/backup/BackupManagerServiceInterface;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "baseStateDir"    # Ljava/io/File;
    .param p6, "dataDir"    # Ljava/io/File;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 69
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 70
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 71
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    iput-object p6, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "key_value_dir"

    invoke-direct {v0, p5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    .line 75
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 79
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    const-string v3, "blank_state"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 80
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 82
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 85
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    const-string v3, "_manifest"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    .line 86
    nop

    .line 87
    invoke-interface {p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v1

    const-string v2, "Timeout parameters cannot be null"

    .line 86
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/BackupManagerServiceInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    return-object v0
.end method

.method private bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;
    .registers 6
    .param p1, "targetApp"    # Landroid/content/pm/ApplicationInfo;

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/server/backup/BackupManagerServiceInterface;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 146
    :catch_8
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "KeyValueAdbBackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in binding to agent for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    return-object v1
.end method

.method private cleanup()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceInterface;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 287
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 288
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 289
    return-void
.end method

.method private invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 155
    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->generateRandomIntegerToken()I

    move-result v15

    .line 156
    .local v15, "token":I
    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v5

    .line 158
    .local v5, "kvBackupAgentTimeoutMillis":J
    const/16 v16, 0x0

    :try_start_12
    iget-object v3, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, v15

    invoke-interface/range {v3 .. v8}, Lcom/android/server/backup/BackupManagerServiceInterface;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 162
    iget-object v8, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v9, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v10, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-wide v11, 0x7fffffffffffffffL

    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 164
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v14
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2b} :catch_57

    const/4 v0, 0x0

    .line 162
    move-object/from16 v7, p2

    move v13, v15

    move v3, v15

    move v15, v0

    .end local v15    # "token":I
    .local v3, "token":I
    :try_start_31
    invoke-interface/range {v7 .. v15}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 165
    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInterface;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 166
    const-string v0, "KeyValueAdbBackupEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key-value backup failed on package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_52} :catch_55

    .line 167
    return v16

    .line 172
    :cond_53
    const/4 v0, 0x1

    return v0

    .line 173
    :catch_55
    move-exception v0

    goto :goto_59

    .end local v3    # "token":I
    .restart local v15    # "token":I
    :catch_57
    move-exception v0

    move v3, v15

    .line 174
    .end local v15    # "token":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "token":I
    :goto_59
    const-string v4, "KeyValueAdbBackupEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error invoking agent for backup on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v16
.end method

.method private prepareBackupFiles(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 131
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 134
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 135
    const-string v0, "KeyValueAdbBackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELinux restorecon failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_34
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 140
    return-void
.end method

.method private writeBackupData()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->generateRandomIntegerToken()I

    move-result v0

    .line 241
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v7

    .line 243
    .local v7, "kvBackupAgentTimeoutMillis":J
    const/4 v9, 0x0

    move-object v1, v9

    .line 245
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_10
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_7c
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    move-object v12, v2

    .line 247
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_15
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v0

    move-wide v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerServiceInterface;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 255
    new-instance v1, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    aget-object v3, v12, v11

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;-><init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V

    .line 257
    .local v1, "runner":Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    aget-object v2, v12, v11

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 258
    aput-object v9, v12, v11

    .line 259
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "key-value-app-data-runner"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 263
    aget-object v3, v12, v10

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v3, v4}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 265
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v3, v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->waitUntilOperationComplete(I)Z

    move-result v3

    if-nez v3, :cond_62

    .line 266
    const-string v3, "KeyValueAdbBackupEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_62} :catch_76
    .catchall {:try_start_15 .. :try_end_62} :catchall_74

    .line 276
    .end local v1    # "runner":Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_62
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 277
    if-eqz v12, :cond_b0

    .line 278
    aget-object v1, v12, v10

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 279
    aget-object v1, v12, v11

    :goto_70
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_b0

    .line 276
    :catchall_74
    move-exception v1

    goto :goto_b1

    .line 272
    :catch_76
    move-exception v1

    goto :goto_7f

    .line 276
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_78
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    goto :goto_b1

    .line 272
    :catch_7c
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    .line 273
    .local v1, "e":Ljava/io/IOException;
    .restart local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_7f
    :try_start_7f
    const-string v2, "KeyValueAdbBackupEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_7f .. :try_end_a1} :catchall_74

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 277
    if-eqz v12, :cond_b0

    .line 278
    aget-object v1, v12, v10

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 279
    aget-object v1, v12, v11

    goto :goto_70

    .line 282
    :cond_b0
    :goto_b0
    return-void

    .line 276
    :goto_b1
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 277
    if-eqz v12, :cond_c2

    .line 278
    aget-object v2, v12, v10

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 279
    aget-object v2, v12, v11

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_c2
    throw v1
.end method


# virtual methods
.method public backupOnePackage()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 95
    .local v0, "targetApp":Landroid/content/pm/ApplicationInfo;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->prepareBackupFiles(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 99
    .local v1, "agent":Landroid/app/IBackupAgent;
    if-nez v1, :cond_2f

    .line 101
    const-string v2, "KeyValueAdbBackupEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to BackupAgent for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_2b} :catch_60
    .catchall {:try_start_4 .. :try_end_2b} :catchall_5e

    .line 120
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 103
    return-void

    .line 107
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 109
    const-string v2, "KeyValueAdbBackupEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_53} :catch_60
    .catchall {:try_start_2f .. :try_end_53} :catchall_5e

    .line 120
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 110
    return-void

    .line 114
    :cond_57
    :try_start_57
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->writeBackupData()V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5a} :catch_60
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5e

    .line 120
    .end local v1    # "agent":Landroid/app/IBackupAgent;
    :goto_5a
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 121
    goto :goto_84

    .line 120
    :catchall_5e
    move-exception v1

    goto :goto_85

    .line 115
    :catch_60
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_61
    const-string v2, "KeyValueAdbBackupEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed creating files for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " will ignore package. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_5e

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_5a

    .line 122
    :goto_84
    return-void

    .line 120
    :goto_85
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    throw v1
.end method
