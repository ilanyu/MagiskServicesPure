.class Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/KeyValueAdbBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyValueAdbBackupDataCopier"
.end annotation


# instance fields
.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mPipe:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I

.field final synthetic this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    .line 188
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 189
    iput p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 195
    :try_start_0
    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 200
    .local v5, "output":Landroid/app/backup/FullBackupDataOutput;
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 201
    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$000(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v2

    .line 200
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V

    .line 202
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "k"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 203
    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 204
    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 211
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "k"

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 212
    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 213
    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$300(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 211
    move-object v11, v5

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_91
    .catchall {:try_start_0 .. :try_end_61} :catchall_8f

    .line 218
    :try_start_61
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 219
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 220
    .local v1, "buf":[B
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_72} :catch_73
    .catchall {:try_start_61 .. :try_end_72} :catchall_8f

    .line 223
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "buf":[B
    goto :goto_7b

    .line 221
    :catch_73
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    :try_start_74
    const-string v1, "KeyValueAdbBackupEngine"

    const-string v2, "Unable to finalize backup stream!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7b} :catch_91
    .catchall {:try_start_74 .. :try_end_7b} :catchall_8f

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7b
    :try_start_7b
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    # getter for: Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;
    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$400(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8c} :catch_91
    .catchall {:try_start_7b .. :try_end_8c} :catchall_8f

    .line 229
    goto :goto_b4

    .line 227
    :catch_8d
    move-exception v0

    .line 227
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    goto :goto_b4

    .line 234
    :catchall_8f
    move-exception v0

    goto :goto_bb

    .line 231
    :catch_91
    move-exception v0

    .line 232
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_92
    const-string v1, "KeyValueAdbBackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running full backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_92 .. :try_end_b4} :catchall_8f

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b4
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    nop

    .line 236
    return-void

    .line 234
    :goto_bb
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method
