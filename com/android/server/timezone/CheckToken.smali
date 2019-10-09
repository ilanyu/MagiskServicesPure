.class final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field final mOptimisticLockId:I

.field final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 51
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5
    .param p1, "optimisticLockId"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 39
    if-eqz p2, :cond_a

    .line 42
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 43
    return-void

    .line 40
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .registers 11
    .param p0, "tokenBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 61
    .local v3, "versionId":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 62
    .local v4, "updateAppVersion":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 63
    .local v6, "dataAppVersion":J
    new-instance v8, Lcom/android/server/timezone/CheckToken;

    new-instance v9, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v8, v3, v9}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_21} :catch_27
    .catchall {:try_start_b .. :try_end_21} :catchall_25

    .line 64
    invoke-static {v2, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 63
    return-object v8

    .line 64
    .end local v3    # "versionId":I
    .end local v4    # "updateAppVersion":J
    .end local v6    # "dataAppVersion":J
    :catchall_25
    move-exception v3

    goto :goto_29

    .line 59
    :catch_27
    move-exception v2

    :try_start_28
    throw v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 64
    :goto_29
    invoke-static {v2, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    if-ne p0, p1, :cond_4

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_25

    .line 76
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/server/timezone/CheckToken;

    .line 78
    .local v1, "checkToken":Lcom/android/server/timezone/CheckToken;
    iget v2, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v3, v1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v2, v3, :cond_1c

    .line 79
    return v0

    .line 81
    :cond_1c
    iget-object v0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 73
    .end local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_25
    :goto_25
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 86
    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 87
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 88
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method toByteArray()[B
    .registers 6

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 47
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_31

    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 48
    :try_start_d
    iget v3, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-object v3, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v3, v3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    iget-object v3, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v3, v3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_20} :catch_2b
    .catchall {:try_start_d .. :try_end_20} :catchall_29

    .line 51
    :try_start_20
    invoke-static {v2, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_31

    .line 53
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    nop

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 51
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catchall_29
    move-exception v3

    goto :goto_2d

    .line 47
    :catch_2b
    move-exception v2

    :try_start_2c
    throw v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 51
    :goto_2d
    :try_start_2d
    invoke-static {v2, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_31
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
