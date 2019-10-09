.class Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 100
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    .line 101
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 102
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 103
    iput p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 104
    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    .line 105
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 111
    move-object/from16 v1, p0

    :try_start_2
    new-instance v0, Landroid/app/backup/FullBackupDataOutput;

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    const-wide/16 v3, -0x1

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 112
    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I
    invoke-static {v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 114
    .local v0, "output":Landroid/app/backup/FullBackupDataOutput;
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    if-eqz v2, :cond_82

    .line 115
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 119
    .local v2, "writeWidgetData":Z
    :goto_1c
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 120
    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/backup/utils/FullBackupUtils;->writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V

    .line 123
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 123
    move-object v11, v0

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 127
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 130
    if-eqz v2, :cond_82

    .line 131
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    # invokes: Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    .line 132
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 132
    move-object v11, v0

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 136
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 140
    .end local v2    # "writeWidgetData":Z
    :cond_82
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    if-eqz v2, :cond_8d

    .line 141
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    .line 144
    :cond_8d
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.sharedstoragebackup"

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 146
    .local v2, "isSharedStorage":Z
    if-eqz v2, :cond_a4

    .line 147
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;
    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v3

    goto :goto_ae

    .line 148
    :cond_a4
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;
    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    :goto_ae
    move-wide v7, v3

    .line 151
    .local v7, "timeout":J
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling doFullBackup() on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v9, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    const/4 v10, 0x0

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 162
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    .line 161
    invoke-static/range {v5 .. v11}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V

    .line 163
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v13, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J
    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$500(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v14

    iget v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 164
    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v17

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    # getter for: Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I
    invoke-static {v4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v18

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    .line 163
    move/from16 v16, v3

    invoke-static/range {v12 .. v19}, Lcom/android/server/backup/BackupManagerServiceInjector;->doFullBackup(Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;II)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10a} :catch_134
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10a} :catch_113
    .catchall {:try_start_2 .. :try_end_10a} :catchall_110

    .line 172
    .end local v0    # "output":Landroid/app/backup/FullBackupDataOutput;
    .end local v2    # "isSharedStorage":Z
    .end local v7    # "timeout":J
    :try_start_10a
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10f} :catch_155

    goto :goto_154

    .line 171
    :catchall_110
    move-exception v0

    move-object v2, v0

    goto :goto_158

    .line 168
    :catch_113
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_114
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote agent vanished during full backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_114 .. :try_end_12e} :catchall_110

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_12e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_133} :catch_155

    goto :goto_154

    .line 166
    :catch_134
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    :try_start_135
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running full backup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_135 .. :try_end_14f} :catchall_110

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_14f
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_154} :catch_155

    .line 174
    :goto_154
    goto :goto_157

    .line 173
    :catch_155
    move-exception v0

    .line 175
    nop

    .line 176
    :goto_157
    return-void

    .line 171
    :goto_158
    nop

    .line 172
    :try_start_159
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15e} :catch_15f

    .line 174
    goto :goto_160

    .line 173
    :catch_15f
    move-exception v0

    .line 174
    :goto_160
    throw v2
.end method
