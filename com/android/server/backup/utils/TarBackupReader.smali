.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 95
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 96
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 97
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 98
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    array-length v0, p0

    .line 664
    .local v0, "end":I
    if-ge p1, v0, :cond_1d

    .line 669
    move v1, p1

    .local v1, "pos":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 670
    aget-byte v2, p0, v1

    .line 673
    .local v2, "c":B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 674
    goto :goto_10

    .line 669
    .end local v2    # "c":B
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 677
    :cond_10
    :goto_10
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v3, p2, v2

    .line 678
    add-int/lit8 v1, v1, 0x1

    .line 679
    return v1

    .line 665
    .end local v1    # "pos":I
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractRadix([BIII)J
    .registers 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    const-wide/16 v0, 0x0

    .line 759
    .local v0, "value":J
    add-int v2, p1, p2

    .line 760
    .local v2, "end":I
    move-wide v3, v0

    move v0, p1

    .local v0, "i":I
    .local v3, "value":J
    :goto_6
    if-ge v0, v2, :cond_44

    .line 761
    aget-byte v1, p0, v0

    .line 763
    .local v1, "b":B
    if-eqz v1, :cond_44

    const/16 v5, 0x20

    if-ne v1, v5, :cond_11

    .line 764
    goto :goto_44

    .line 766
    :cond_11
    const/16 v5, 0x30

    if-lt v1, v5, :cond_24

    add-int/2addr v5, p3

    add-int/lit8 v5, v5, -0x1

    if-gt v1, v5, :cond_24

    .line 770
    int-to-long v5, p3

    mul-long/2addr v5, v3

    add-int/lit8 v7, v1, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 760
    .end local v1    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 767
    .restart local v1    # "b":B
    :cond_24
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 772
    .end local v0    # "i":I
    .end local v1    # "b":B
    :cond_44
    :goto_44
    return-wide v3
.end method

.method private static extractString([BII)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    add-int v0, p1, p2

    .line 777
    .local v0, "end":I
    move v1, p1

    .line 779
    .local v1, "eos":I
    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p0, v1

    if-eqz v2, :cond_c

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 782
    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .registers 11
    .param p0, "block"    # [B

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "offset":I
    array-length v1, p0

    .line 788
    .local v1, "todo":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 789
    .local v2, "buf":Ljava/lang/StringBuilder;
    :goto_9
    if-lez v1, :cond_4e

    .line 790
    const-string v3, "%04x   "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const/16 v3, 0x10

    if-le v1, v3, :cond_23

    goto :goto_24

    :cond_23
    move v3, v1

    .line 792
    .local v3, "numThisLine":I
    :goto_24
    move v5, v7

    .local v5, "i":I
    :goto_25
    if-ge v5, v3, :cond_3f

    .line 793
    const-string v6, "%02x "

    new-array v8, v4, [Ljava/lang/Object;

    add-int v9, v0, v5

    aget-byte v9, p0, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 795
    .end local v5    # "i":I
    :cond_3f
    const-string v4, "hexdump"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 797
    sub-int/2addr v1, v3

    .line 798
    add-int/2addr v0, v3

    .line 799
    .end local v3    # "numThisLine":I
    goto :goto_9

    .line 800
    :cond_4e
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    if-lez p3, :cond_13

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "soFar":I
    :goto_3
    if-ge v0, p3, :cond_12

    .line 253
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 254
    .local v1, "nRead":I
    if-gtz v1, :cond_10

    .line 258
    goto :goto_12

    .line 260
    :cond_10
    add-int/2addr v0, v1

    .line 264
    .end local v1    # "nRead":I
    goto :goto_3

    .line 265
    :cond_12
    :goto_12
    return v0

    .line 246
    .end local v0    # "soFar":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .registers 16
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_be

    .line 704
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v2, 0x1ff

    add-long/2addr v0, v2

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 705
    .local v0, "numBlocks":I
    mul-int/lit16 v1, v0, 0x200

    new-array v1, v1, [B

    .line 706
    .local v1, "data":[B
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_b6

    .line 709
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v3, v1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 711
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    .line 712
    .local v2, "contentSize":I
    nop

    .line 712
    .local v4, "offset":I
    :cond_2c
    move v3, v4

    .line 715
    .end local v4    # "offset":I
    .local v3, "offset":I
    add-int/lit8 v4, v3, 0x1

    .line 716
    .local v4, "eol":I
    :goto_2f
    if-ge v4, v2, :cond_3a

    aget-byte v5, v1, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3a

    .line 717
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 719
    :cond_3a
    if-ge v4, v2, :cond_ae

    .line 724
    sub-int v5, v4, v3

    const/16 v6, 0xa

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    long-to-int v5, v5

    .line 725
    .local v5, "linelen":I
    add-int/lit8 v6, v4, 0x1

    .line 726
    .local v6, "key":I
    add-int v7, v3, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 728
    .end local v4    # "eol":I
    .local v7, "eol":I
    add-int/lit8 v4, v6, 0x1

    .line 728
    .local v4, "value":I
    :goto_4d
    aget-byte v9, v1, v4

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_58

    if-gt v4, v7, :cond_58

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 731
    :cond_58
    if-gt v4, v7, :cond_a6

    .line 736
    new-instance v9, Ljava/lang/String;

    sub-int v10, v4, v6

    const-string v11, "UTF-8"

    invoke-direct {v9, v1, v6, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 738
    .local v9, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v4, 0x1

    sub-int v12, v7, v4

    sub-int/2addr v12, v8

    const-string v13, "UTF-8"

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 740
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v11, "path"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 741
    iput-object v10, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_a1

    .line 742
    :cond_7b
    const-string/jumbo v11, "size"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 743
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_a1

    .line 746
    :cond_8b
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_a1
    add-int v4, v3, v5

    .line 751
    .end local v3    # "offset":I
    .end local v5    # "linelen":I
    .end local v6    # "key":I
    .end local v7    # "eol":I
    .end local v9    # "keyStr":Ljava/lang/String;
    .end local v10    # "valStr":Ljava/lang/String;
    .local v4, "offset":I
    if-lt v4, v2, :cond_2c

    .line 753
    return v8

    .line 732
    .restart local v3    # "offset":I
    .local v4, "value":I
    .restart local v5    # "linelen":I
    .restart local v6    # "key":I
    .restart local v7    # "eol":I
    :cond_a6
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid pax declaration"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 721
    .end local v5    # "linelen":I
    .end local v6    # "key":I
    .end local v7    # "eol":I
    .local v4, "eol":I
    :cond_ae
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid pax data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 707
    .end local v2    # "contentSize":I
    .end local v3    # "offset":I
    .end local v4    # "eol":I
    :cond_b6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to read full pax header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    .end local v0    # "numBlocks":I
    .end local v1    # "data":[B
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspiciously large pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanity failure: pax header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .registers 6
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 684
    .local v0, "got":I
    if-nez v0, :cond_c

    .line 685
    return v2

    .line 687
    :cond_c
    if-lt v0, v1, :cond_17

    .line 690
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 691
    const/4 v1, 0x1

    return v1

    .line 688
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 16
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 392
    if-nez p4, :cond_5

    .line 393
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    .line 396
    :cond_5
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 400
    .local v0, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v4, 0x8000000

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 403
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 406
    .local v4, "flags":I
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v3, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;Ljava/io/InputStream;)Z

    move-result v5

    if-nez v5, :cond_4d

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_24

    goto :goto_4d

    .line 496
    :cond_24
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but allowBackup=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x27

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "flags":I
    goto/16 :goto_157

    .line 411
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "flags":I
    :cond_4d
    :goto_4d
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_86

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_5c

    goto :goto_86

    .line 485
    :cond_5c
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is system level with no agent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x26

    const/4 v7, 0x2

    invoke-static {v5, v6, v3, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_157

    .line 421
    :cond_86
    :goto_86
    invoke-static {p4, v3, p5}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 422
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_ab

    .line 424
    const-string v5, "BackupManagerService"

    const-string v6, "Package has restoreAnyVersion; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x22

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 431
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto/16 :goto_157

    .line 434
    :cond_ab
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v3, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;Ljava/io/InputStream;)Z

    move-result v5

    if-nez v5, :cond_120

    .line 435
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_be

    goto :goto_120

    .line 449
    :cond_be
    if-eqz p2, :cond_ed

    .line 450
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " is newer than installed version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " - requiring apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto :goto_157

    .line 457
    :cond_ed
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data requires newer version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x24

    const-string v7, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v8, p3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 465
    invoke-static {v2, v7, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    .line 460
    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 470
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto :goto_157

    .line 437
    :cond_120
    :goto_120
    const-string v5, "BackupManagerService"

    const-string v6, "Sig + version match; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    .line 439
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x23

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_157

    .line 474
    :cond_135
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x25

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_157
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_157} :catch_158

    .line 531
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "flags":I
    :goto_157
    goto :goto_195

    .line 506
    :catch_158
    move-exception v3

    .line 510
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz p2, :cond_17b

    .line 512
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not installed; requiring apk in dataset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_17d

    .line 517
    :cond_17b
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 519
    :goto_17d
    const-string v4, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 522
    .local v4, "monitoringExtras":Landroid/os/Bundle;
    const-string v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v4, v5, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 525
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x28

    invoke-static {v5, v6, v2, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 533
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "monitoringExtras":Landroid/os/Bundle;
    :goto_195
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v0, v3, :cond_1cc

    iget-boolean v3, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v3, :cond_1cc

    .line 534
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without the matching .apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x29

    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 541
    invoke-static {v2, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 536
    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 545
    :cond_1cc
    return-object v0
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 2

    .line 803
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 807
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .registers 15
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18f

    .line 283
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 288
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_187

    .line 289
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 294
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 295
    .local v2, "str":[Ljava/lang/String;
    move v4, v3

    .line 298
    .local v4, "offset":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_2c
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 299
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 300
    .local v7, "version":I
    if-ne v7, v1, :cond_114

    .line 301
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 302
    aget-object v1, v2, v3

    .line 304
    .local v1, "manifestPackage":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 305
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 306
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 307
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 310
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 311
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 312
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_70

    aget-object v8, v2, v3

    goto :goto_71

    :cond_70
    move-object v8, v6

    :goto_71
    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 313
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 314
    aget-object v8, v2, v3

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 315
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 316
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 317
    .local v8, "numSigs":I
    if-lez v8, :cond_af

    .line 318
    new-array v9, v8, [Landroid/content/pm/Signature;
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_91} :catch_15a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_91} :catch_14f

    .line 319
    .local v9, "sigs":[Landroid/content/pm/Signature;
    move v10, v4

    move v4, v3

    .local v4, "i":I
    .local v10, "offset":I
    :goto_93
    if-ge v4, v8, :cond_ae

    .line 320
    :try_start_95
    invoke-static {v0, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 321
    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v2, v3

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v4
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a3} :catch_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_a3} :catch_a6

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 373
    .end local v1    # "manifestPackage":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "version":I
    .end local v8    # "numSigs":I
    .end local v9    # "sigs":[Landroid/content/pm/Signature;
    :catch_a6
    move-exception v1

    move v4, v10

    goto/16 :goto_150

    .line 364
    :catch_aa
    move-exception v1

    move v4, v10

    goto/16 :goto_15b

    .line 323
    .restart local v1    # "manifestPackage":Ljava/lang/String;
    .restart local v7    # "version":I
    .restart local v8    # "numSigs":I
    .restart local v9    # "sigs":[Landroid/content/pm/Signature;
    :cond_ae
    return-object v9

    .line 325
    .end local v9    # "sigs":[Landroid/content/pm/Signature;
    .end local v10    # "offset":I
    .local v4, "offset":I
    :cond_af
    :try_start_af
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing signature on backed-up package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2a

    const-string v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 331
    invoke-static {v6, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 326
    invoke-static {v3, v9, v6, v5, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 334
    .end local v8    # "numSigs":I
    goto :goto_113

    .line 335
    :cond_da
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but restore manifest claims "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 339
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v8, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    .line 342
    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2b

    invoke-static {v8, v9, v6, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 349
    .end local v1    # "manifestPackage":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_113
    goto :goto_185

    .line 350
    :cond_114
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown restore manifest version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 354
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v7

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 356
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x2c

    invoke-static {v3, v8, v6, v5, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_14e} :catch_15a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_14e} :catch_14f

    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    .end local v7    # "version":I
    goto :goto_185

    .line 373
    :catch_14f
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_150
    const-string v3, "BackupManagerService"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_186

    .line 364
    :catch_15a
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_15b
    const-string v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Corrupt restore manifest for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x2e

    const-string v8, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 371
    invoke-static {v6, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 366
    invoke-static {v3, v7, v6, v5, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 375
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_185
    nop

    .line 377
    :goto_186
    return-object v6

    .line 291
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    :cond_187
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in manifest"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "buffer":[B
    :cond_18f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore manifest too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 15
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_132

    .line 575
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 576
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_12a

    .line 577
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 582
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 583
    .local v2, "str":[Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 584
    .local v4, "offset":I
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 585
    .local v5, "version":I
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v1, :cond_fa

    .line 586
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 587
    aget-object v1, v2, v3

    .line 588
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 591
    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-direct {v3, v0, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 593
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 594
    .local v6, "in":Ljava/io/DataInputStream;
    :goto_51
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_c0

    .line 595
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 596
    .local v7, "token":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 597
    .local v8, "size":I
    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_9b

    .line 601
    const v9, 0x1ffed01

    if-eq v7, v9, :cond_90

    .line 612
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring metadata blob "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .end local v7    # "token":I
    .end local v8    # "size":I
    goto :goto_9a

    .line 606
    .restart local v7    # "token":I
    .restart local v8    # "size":I
    :cond_90
    new-array v9, v8, [B

    iput-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 607
    iget-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v6, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 608
    nop

    .line 619
    .end local v7    # "token":I
    .end local v8    # "size":I
    :goto_9a
    goto :goto_51

    .line 598
    .restart local v7    # "token":I
    .restart local v8    # "size":I
    :cond_9b
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Datum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " too big; corrupt? size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 620
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "token":I
    .end local v8    # "size":I
    :cond_c0
    goto :goto_f9

    .line 621
    :cond_c1
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Metadata mismatch: package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but widget data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 627
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v8, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 629
    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2f

    invoke-static {v8, v9, v7, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 636
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_f9
    goto :goto_129

    .line 637
    :cond_fa
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported metadata version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 640
    invoke-static {v7, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 642
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v5

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v1

    .line 644
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x30

    invoke-static {v3, v8, v7, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 651
    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    :goto_129
    return-void

    .line 579
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "version":I
    :cond_12a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in widget data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    .end local v0    # "buffer":[B
    :cond_132
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 105
    .local v0, "block":[B
    const/4 v1, 0x0

    .line 107
    .local v1, "info":Lcom/android/server/backup/FileMetadata;
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    .line 108
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_1e1

    .line 111
    :try_start_b
    new-instance v3, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v3}, Lcom/android/server/backup/FileMetadata;-><init>()V

    move-object v1, v3

    .line 112
    const/16 v3, 0x7c

    const/16 v4, 0xc

    const/16 v5, 0x8

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 116
    const/16 v3, 0x88

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 120
    const/16 v3, 0x64

    invoke-static {v0, v3, v5, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 125
    const/16 v4, 0x159

    const/16 v5, 0x9b

    invoke-static {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 128
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2f

    if-lez v5, :cond_72

    .line 132
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5f

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 135
    :cond_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 139
    :cond_72
    const/16 v5, 0x9c

    aget-byte v7, v0, v5

    .line 140
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_94

    .line 142
    invoke-direct {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v8

    move v2, v8

    .line 143
    if-eqz v2, :cond_86

    .line 146
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v8

    move v2, v8

    .line 148
    :cond_86
    if-eqz v2, :cond_8c

    .line 152
    aget-byte v5, v0, v5

    move v7, v5

    goto :goto_94

    .line 149
    :cond_8c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Bad or missing pax header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_94
    :goto_94
    if-eqz v7, :cond_1c3

    const/16 v5, 0x30

    if-eq v7, v5, :cond_e0

    const/16 v5, 0x35

    if-ne v7, v5, :cond_b3

    .line 160
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 161
    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_e4

    .line 162
    const-string v5, "BackupManagerService"

    const-string v8, "Directory entry with nonzero size in header"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-wide v10, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_e4

    .line 175
    :cond_b3
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tar entity type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown entity type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_e0
    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 158
    nop

    .line 183
    :cond_e4
    :goto_e4
    const-string/jumbo v5, "shared/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 183
    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_128

    .line 186
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "shared/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 187
    const-string v4, "com.android.sharedstoragebackup"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 188
    const-string/jumbo v4, "shared"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 190
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File in shared storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 192
    :cond_128
    const-string v5, "apps/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    .line 193
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 192
    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 197
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "apps/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 200
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 201
    .local v5, "slash":I
    if-ltz v5, :cond_1a9

    .line 204
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 205
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 209
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c2

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c2

    .line 211
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    .line 212
    if-ltz v5, :cond_190

    .line 216
    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 217
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 217
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "slash":I
    .end local v7    # "typeChar":I
    goto :goto_1c2

    .line 213
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v5    # "slash":I
    .restart local v7    # "typeChar":I
    :cond_190
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in non-manifest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_1a9
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c2} :catch_1c5

    .line 228
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "slash":I
    .end local v7    # "typeChar":I
    :cond_1c2
    :goto_1c2
    goto :goto_1e1

    .line 172
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_1c3
    const/4 v4, 0x0

    return-object v4

    .line 220
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_1c5
    move-exception v3

    .line 222
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error in header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    throw v3

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1e1
    :goto_1e1
    return-object v1
.end method

.method public skipTarPadding(J)V
    .registers 10
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    const-wide/16 v0, 0x200

    add-long v2, p1, v0

    rem-long/2addr v2, v0

    .line 552
    .local v2, "partial":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_28

    .line 553
    long-to-int v0, v2

    rsub-int v0, v0, 0x200

    .line 557
    .local v0, "needed":I
    new-array v1, v0, [B

    .line 558
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v0, :cond_20

    .line 559
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_28

    .line 561
    :cond_20
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 564
    .end local v0    # "needed":I
    .end local v1    # "buffer":[B
    :cond_28
    :goto_28
    return-void
.end method
