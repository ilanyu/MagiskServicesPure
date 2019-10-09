.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "ProcessLoggingHandler.java"


# static fields
.field static final INVALIDATE_BASE_APK_HASH_MSG:I = 0x2

.field static final LOG_APP_PROCESS_START_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessLoggingHandler"


# instance fields
.field private final mProcessLoggingBaseApkHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private computeHashOfApkFile(Ljava/lang/String;)[B
    .registers 7
    .param p1, "packageArchiveLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 102
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v1, "input":Ljava/io/FileInputStream;
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 106
    .local v2, "buffer":[B
    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "size":I
    if-lez v3, :cond_20

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 109
    :cond_20
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    return-object v3
.end method

.method private computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "apkFile"    # Ljava/lang/String;

    .line 80
    if-nez p1, :cond_5

    .line 81
    const-string v0, "No APK"

    return-object v0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "apkHash":Ljava/lang/String;
    if-nez v0, :cond_47

    .line 86
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->computeHashOfApkFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1a
    array-length v5, v1

    if-ge v4, v5, :cond_34

    .line 89
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 91
    .end local v4    # "i":I
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 92
    iget-object v3, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3e} :catch_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_3e} :catch_3f

    .line 95
    .end local v1    # "hash":[B
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_47

    .line 93
    :catch_3f
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ProcessLoggingHandler"

    const-string v3, "computeStringHashOfApk() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    if-eqz v0, :cond_4b

    move-object v1, v0

    goto :goto_4d

    :cond_4b
    const-string v1, "Failed to count APK hash"

    :goto_4d
    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    goto :goto_6f

    .line 64
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    const-string v2, "apkFile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    goto :goto_6f

    .line 51
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "processName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "processName":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "uid":I
    const-string/jumbo v3, "seinfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "seinfo":Ljava/lang/String;
    const-string v4, "apkFile"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "apkFile":Ljava/lang/String;
    const-string/jumbo v5, "pid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 57
    .local v5, "pid":I
    const-string/jumbo v6, "startTimestamp"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 58
    .local v6, "startTimestamp":J
    invoke-direct {p0, v4}, Lcom/android/server/pm/ProcessLoggingHandler;->computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "apkHash":Ljava/lang/String;
    const v9, 0x33455

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v3, v10, v11

    const/4 v11, 0x5

    aput-object v8, v10, v11

    .line 59
    invoke-static {v9, v10}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    nop

    .line 69
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "seinfo":Ljava/lang/String;
    .end local v4    # "apkFile":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v6    # "startTimestamp":J
    .end local v8    # "apkHash":Ljava/lang/String;
    :goto_6f
    return-void

    nop

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method

.method invalidateProcessLoggingBaseApkHash(Ljava/lang/String;)V
    .registers 4
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "apkFile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ProcessLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ProcessLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method
