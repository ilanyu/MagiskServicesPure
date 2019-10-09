.class Lcom/android/server/backup/BackupManagerService$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .line 1031
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1034
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1036
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1037
    .local v1, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1038
    .local v2, "bufOut":Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1047
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1048
    .local v3, "N":I
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1050
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_40

    .line 1051
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1052
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1053
    iget-wide v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1050
    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1055
    .end local v4    # "i":I
    :cond_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1057
    new-instance v4, Landroid/util/AtomicFile;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1058
    .local v4, "af":Landroid/util/AtomicFile;
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1059
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1060
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5c} :catch_5f
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5d

    .line 1063
    .end local v1    # "bufStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufOut":Ljava/io/DataOutputStream;
    .end local v3    # "N":I
    .end local v4    # "af":Landroid/util/AtomicFile;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_67

    .line 1064
    :catchall_5d
    move-exception v1

    goto :goto_69

    .line 1061
    :catch_5f
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/lang/Exception;
    :try_start_60
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to write backup schedule!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_67
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_5d

    throw v1
.end method
