.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertificateTransparencyLogInstallReceiver.java"


# static fields
.field private static final LOGDIR_PREFIX:Ljava/lang/String; = "logs-"

.field private static final TAG:Ljava/lang/String; = "CTLogInstallReceiver"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 45
    const-string v0, "/data/misc/keychain/trusted_ct_logs/"

    const-string v1, "ct_logs"

    const-string/jumbo v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private deleteOldLogDirectories()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 168
    return-void

    .line 170
    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "currentTarget":Ljava/io/File;
    new-instance v1, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;-><init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V

    .line 177
    .local v1, "filter":Ljava/io/FileFilter;
    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 178
    .local v5, "f":Ljava/io/File;
    invoke-static {v5}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 177
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 180
    :cond_2d
    return-void
.end method

.method private getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "base64PublicKey"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 153
    .local v1, "keyBytes":[B
    :try_start_5
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 154
    .local v2, "id":[B
    invoke-static {v2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_14

    return-object v0

    .line 155
    .end local v2    # "id":[B
    :catch_14
    move-exception v0

    .line 157
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "logObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :try_start_0
    const-string/jumbo v0, "key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->getLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "logFilename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_7d

    .line 131
    .local v2, "out":Ljava/io/OutputStreamWriter;
    const/4 v3, 0x0

    .line 133
    :try_start_1d
    const-string/jumbo v4, "key"

    const-string/jumbo v5, "key"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v4, "url"

    const-string/jumbo v5, "url"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "description"

    const-string v5, "description"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_42} :catch_6c
    .catchall {:try_start_1d .. :try_end_42} :catchall_6a

    .line 136
    :try_start_42
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 137
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 142
    .end local v0    # "logFilename":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 144
    return-void

    .line 138
    .restart local v0    # "logFilename":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :cond_4f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set permissions on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_6a} :catch_7d

    .line 136
    .restart local v2    # "out":Ljava/io/OutputStreamWriter;
    :catchall_6a
    move-exception v4

    goto :goto_6e

    .line 131
    :catch_6c
    move-exception v3

    :try_start_6d
    throw v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6a

    .line 136
    :goto_6e
    if-eqz v3, :cond_79

    :try_start_70
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_74
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_73} :catch_7d

    goto :goto_7c

    :catch_74
    move-exception v5

    :try_start_75
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7c

    :cond_79
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :goto_7c
    throw v4
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7d} :catch_7d

    .line 140
    .end local v0    # "logFilename":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    :catch_7d
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse log"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStreamWriter;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected install([BI)V
    .registers 10
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 62
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "current"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v0, "currentSymlink":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logs-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, "newVersion":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 75
    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 76
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 77
    return-void

    .line 79
    :cond_65
    invoke-static {v3}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 84
    :cond_68
    :try_start_68
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 88
    invoke-virtual {v3, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_75} :catch_135

    if-eqz v2, :cond_fa

    .line 95
    :try_start_77
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "logs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 97
    .local v4, "logs":Lorg/json/JSONArray;
    nop

    .line 97
    .local v1, "i":I
    :goto_8b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_9b

    .line 98
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 99
    .local v5, "log":Lorg/json/JSONObject;
    invoke-direct {p0, v3, v5}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_98} :catch_f1
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_98} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_98} :catch_135

    .line 97
    .end local v5    # "log":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 103
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "logs":Lorg/json/JSONArray;
    :cond_9b
    nop

    .line 107
    :try_start_9c
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string/jumbo v4, "new_symlink"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a6} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_a6} :catch_135

    .line 109
    .local v1, "tempSymlink":Ljava/io/File;
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Landroid/system/ErrnoException; {:try_start_a6 .. :try_end_b1} :catch_e8
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b1} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_b1} :catch_135

    .line 112
    nop

    .line 115
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_b2 .. :try_end_b9} :catch_135

    .line 119
    .end local v1    # "tempSymlink":Ljava/io/File;
    nop

    .line 120
    const-string v1, "CTLogInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CT log directory updated to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 124
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 125
    return-void

    .line 110
    .restart local v1    # "tempSymlink":Ljava/io/File;
    :catch_e8
    move-exception v2

    .line 111
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_e9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to create symlink"

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 101
    .end local v1    # "tempSymlink":Ljava/io/File;
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_f1
    move-exception v1

    .line 102
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Failed to parse logs"

    invoke-direct {v2, v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_fa
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " readable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_11a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to make directory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_135} :catch_135
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_135} :catch_135

    .line 116
    :catch_135
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 118
    throw v1

    .line 63
    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "newVersion":Ljava/io/File;
    :cond_13a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set permissions on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_157
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to make directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
