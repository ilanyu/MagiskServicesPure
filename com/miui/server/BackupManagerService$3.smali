.class Lcom/miui/server/BackupManagerService$3;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .line 519
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 522
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$600(Lcom/miui/server/BackupManagerService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 523
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 524
    .local v0, "b":[B
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$600(Lcom/miui/server/BackupManagerService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 526
    .local v1, "fis":Ljava/io/FileInputStream;
    :goto_1b
    :try_start_1b
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_31
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2f

    if-lez v2, :cond_22

    goto :goto_1b

    .line 531
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 534
    :goto_25
    goto :goto_4c

    .line 532
    :catch_26
    move-exception v2

    .line 533
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManagerService"

    const-string v4, "IOEception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4c

    .line 530
    :catchall_2f
    move-exception v2

    goto :goto_3e

    .line 527
    :catch_31
    move-exception v2

    .line 528
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_32
    const-string v3, "Backup:BackupManagerService"

    const-string/jumbo v4, "realeaseBackupReadStream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2f

    .line 531
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_26

    goto :goto_25

    .line 530
    :goto_3e
    nop

    .line 531
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 534
    goto :goto_4b

    .line 532
    :catch_43
    move-exception v3

    .line 533
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Backup:BackupManagerService"

    const-string v5, "IOEception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4b
    throw v2

    .line 537
    .end local v0    # "b":[B
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_4c
    :goto_4c
    return-void
.end method
