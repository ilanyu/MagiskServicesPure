.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .line 596
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 678
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 679
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 680
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getFrpCredentialHandle()[B
    .registers 7

    .line 646
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 652
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 653
    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_62

    .line 656
    .local v0, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 655
    nop

    .line 659
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_55
    .catchall {:try_start_1f .. :try_end_26} :catchall_53

    .line 660
    :try_start_26
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    .line 661
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 662
    .local v2, "length":I
    if-lez v2, :cond_4a

    const/16 v3, 0x3e4

    if-le v2, v3, :cond_40

    goto :goto_4a

    .line 665
    :cond_40
    new-array v3, v2, [B

    .line 666
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 667
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_50

    .line 672
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    return-object v3

    .line 663
    .end local v3    # "bytes":[B
    :cond_4a
    :goto_4a
    const/4 v3, 0x0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_50

    .line 672
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 663
    return-object v3

    .line 668
    .end local v2    # "length":I
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_55
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 672
    :catchall_53
    move-exception v1

    goto :goto_5e

    .line 669
    :catch_55
    move-exception v1

    .line 670
    .local v1, "e":Ljava/io/IOException;
    :try_start_56
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "frp handle not readable"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_53

    .line 672
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 654
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    :catch_62
    move-exception v0

    .line 655
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frp partition not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 10
    .param p1, "handle"    # [B

    .line 600
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "handle must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 602
    if-eqz p1, :cond_1a

    array-length v2, p1

    const/16 v3, 0x3e4

    if-gt v2, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    nop

    :cond_1a
    :goto_1a
    const-string v2, "handle must not be longer than 996"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 608
    :try_start_1f
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2f} :catch_97

    .line 612
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 611
    nop

    .line 614
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 615
    .local v2, "data":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    array-length v1, p1

    :goto_3b
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 616
    if-eqz p1, :cond_43

    .line 617
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 619
    :cond_43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 621
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 622
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 623
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 624
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_94

    return-void

    .line 628
    :cond_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 630
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 631
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 632
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_73} :catch_80
    .catchall {:try_start_5a .. :try_end_73} :catchall_7e

    .line 637
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    :try_start_73
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 638
    nop

    .line 640
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 641
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_94

    .line 642
    return-void

    .line 637
    :catchall_7e
    move-exception v3

    goto :goto_90

    .line 633
    :catch_80
    move-exception v3

    .line 634
    .local v3, "e":Ljava/io/IOException;
    :try_start_81
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_7e

    .line 637
    :try_start_8b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v1

    .line 635
    return-void

    .line 637
    .end local v3    # "e":Ljava/io/IOException;
    :goto_90
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 641
    :catchall_94
    move-exception v3

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_94

    throw v3

    .line 609
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    :catch_97
    move-exception v0

    .line 610
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return-void
.end method
