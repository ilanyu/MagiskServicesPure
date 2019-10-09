.class public final Lcom/android/server/BcbUtil;
.super Ljava/lang/Object;
.source "BcbUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BcbUtil"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBcb()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static connectService()Landroid/net/LocalSocket;
    .registers 7

    .line 53
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 54
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 58
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 58
    .local v2, "retry":I
    :goto_7
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2c

    .line 60
    :try_start_b
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v4, "uncrypt"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_1a

    .line 62
    const/4 v1, 0x1

    .line 63
    goto :goto_2c

    .line 64
    :catch_1a
    move-exception v3

    .line 66
    .local v3, "ignored":Ljava/io/IOException;
    const-wide/16 v4, 0x3e8

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 69
    goto :goto_29

    .line 67
    :catch_21
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "BcbUtil"

    const-string v6, "Interrupted: "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 72
    .end local v2    # "retry":I
    :cond_2c
    :goto_2c
    if-nez v1, :cond_37

    .line 73
    const-string v2, "BcbUtil"

    const-string v3, "Timed out connecting to uncrypt socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    return-object v2

    .line 76
    :cond_37
    return-object v0
.end method

.method public static setupBcb(Ljava/lang/String;)Z
    .registers 2
    .param p0, "command"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 10
    .param p0, "isSetup"    # Z
    .param p1, "command"    # Ljava/lang/String;

    .line 80
    if-eqz p0, :cond_b

    .line 81
    const-string v0, "ctl.start"

    const-string/jumbo v1, "setup-bcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 83
    :cond_b
    const-string v0, "ctl.start"

    const-string v1, "clear-bcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_12
    invoke-static {}, Lcom/android/server/BcbUtil;->connectService()Landroid/net/LocalSocket;

    move-result-object v0

    .line 88
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 89
    const-string v2, "BcbUtil"

    const-string v3, "Failed to connect to uncrypt socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1

    .line 93
    :cond_21
    const/4 v2, 0x0

    .line 94
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_23
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 97
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v4

    .line 100
    if-eqz p0, :cond_46

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    :cond_46
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 111
    .local v4, "status":I
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 113
    const/16 v5, 0x64

    if-ne v4, v5, :cond_81

    .line 114
    const-string v5, "BcbUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uncrypt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_64

    const-string/jumbo v7, "setup"

    goto :goto_66

    :cond_64
    const-string v7, "clear"

    :goto_66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bcb successfully finished."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_75} :catch_a5
    .catchall {:try_start_23 .. :try_end_75} :catchall_a3

    .line 125
    .end local v4    # "status":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 128
    nop

    .line 130
    const/4 v1, 0x1

    return v1

    .line 118
    .restart local v4    # "status":I
    :cond_81
    :try_start_81
    const-string v5, "BcbUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uncrypt failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_98} :catch_a5
    .catchall {:try_start_81 .. :try_end_98} :catchall_a3

    .line 119
    nop

    .line 125
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 119
    return v1

    .line 125
    .end local v4    # "status":I
    :catchall_a3
    move-exception v1

    goto :goto_b8

    .line 121
    :catch_a5
    move-exception v4

    .line 122
    .local v4, "e":Ljava/io/IOException;
    :try_start_a6
    const-string v5, "BcbUtil"

    const-string v6, "IOException when communicating with uncrypt: "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_a3

    .line 123
    nop

    .line 125
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    return v1

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :goto_b8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method
