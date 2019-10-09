.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 10
    .param p0, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 54
    .local v0, "raw":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v1, "in":Ljava/io/DataInputStream;
    const v2, 0x8000

    new-array v2, v2, [B

    .line 58
    .local v2, "buffer":[B
    :cond_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v3

    .local v4, "chunkTotal":I
    if-lez v3, :cond_3b

    .line 59
    :goto_1a
    if-lez v4, :cond_13

    .line 60
    array-length v3, v2

    if-le v4, v3, :cond_21

    array-length v3, v2

    goto :goto_22

    :cond_21
    move v3, v4

    .line 61
    .local v3, "toRead":I
    :goto_22
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 62
    .local v6, "nRead":I
    if-ltz v6, :cond_2e

    .line 66
    invoke-virtual {p1, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    sub-int/2addr v4, v6

    .line 68
    .end local v3    # "toRead":I
    .end local v6    # "nRead":I
    goto :goto_1a

    .line 63
    .restart local v3    # "toRead":I
    .restart local v6    # "nRead":I
    :cond_2e
    const-string v5, "BackupManagerService"

    const-string v7, "Unexpectedly reached end of file while reading data"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 70
    .end local v3    # "toRead":I
    .end local v6    # "nRead":I
    :cond_3b
    return-void
.end method

.method public static writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V
    .registers 14
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 99
    .local v1, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "installerName":Ljava/lang/String;
    if-eqz v2, :cond_37

    move-object v3, v2

    goto :goto_39

    :cond_37
    const-string v3, ""

    :goto_39
    invoke-virtual {v1, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 107
    if-eqz p3, :cond_41

    const-string v3, "1"

    goto :goto_43

    :cond_41
    const-string v3, "0"

    :goto_43
    invoke-virtual {v1, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 111
    .local v3, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v3, :cond_50

    .line 112
    const-string v4, "0"

    invoke-virtual {v1, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_6c

    .line 116
    :cond_50
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 117
    .local v4, "signatures":[Landroid/content/pm/Signature;
    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 118
    array-length v5, v4

    const/4 v6, 0x0

    :goto_5e
    if-ge v6, v5, :cond_6c

    aget-object v7, v4, v6

    .line 119
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 118
    .end local v7    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .line 123
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :cond_6c
    :goto_6c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v4, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 132
    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 133
    return-void
.end method
