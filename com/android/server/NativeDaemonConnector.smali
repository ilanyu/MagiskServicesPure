.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .registers 16
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    .line 87
    nop

    .line 88
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .registers 11
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 83
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 94
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 95
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 96
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 97
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_28

    .line 99
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    :cond_28
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 102
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    if-eqz p4, :cond_35

    move-object v0, p4

    goto :goto_37

    :cond_35
    const-string v0, "NativeDaemonConnector"

    :goto_37
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 527
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 528
    .local v0, "hasSpaces":Z
    :goto_c
    const/16 v2, 0x22

    if-eqz v0, :cond_13

    .line 529
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 533
    .local v3, "length":I
    nop

    .local v1, "i":I
    :goto_18
    if-ge v1, v3, :cond_36

    .line 534
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 536
    .local v4, "c":C
    if-ne v4, v2, :cond_26

    .line 537
    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 538
    :cond_26
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_30

    .line 539
    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 541
    :cond_30
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    .end local v4    # "c":C
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 545
    .end local v1    # "i":I
    :cond_36
    if-eqz v0, :cond_3b

    .line 546
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_3b
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    .line 186
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_16
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method private static isShuttingDown()Z
    .registers 2

    .line 149
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "shutdownAct":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private listenToSocket()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    .line 196
    .local v3, "socket":Landroid/net/LocalSocket;
    :try_start_4
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1ba
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b7

    move-object v3, v0

    .line 197
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    move-object v4, v0

    .line 199
    .local v4, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 201
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 202
    .local v5, "inputStream":Ljava/io/InputStream;
    iget-object v6, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1b3
    .catchall {:try_start_a .. :try_end_1a} :catchall_1ae

    .line 203
    :try_start_1a
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 204
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_19e

    .line 206
    :try_start_21
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-interface {v0}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "fdList":[Ljava/io/FileDescriptor;
    const/16 v6, 0x1000

    new-array v7, v6, [B

    .line 210
    .local v7, "buffer":[B
    const/4 v8, 0x0

    move-object v9, v0

    move v0, v8

    .line 213
    .local v0, "start":I
    .local v9, "fdList":[Ljava/io/FileDescriptor;
    :goto_2e
    rsub-int v10, v0, 0x1000

    invoke-virtual {v5, v7, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_34} :catch_1b3
    .catchall {:try_start_21 .. :try_end_34} :catchall_1ae

    .line 214
    .local v10, "count":I
    if-gez v10, :cond_af

    .line 215
    :try_start_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " reading with start = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_52} :catch_1ba
    .catchall {:try_start_36 .. :try_end_52} :catchall_1b7

    .line 216
    nop

    .line 283
    .end local v0    # "start":I
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "fdList":[Ljava/io/FileDescriptor;
    .end local v10    # "count":I
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_56
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_ac

    if-eqz v0, :cond_8d

    .line 286
    :try_start_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_75} :catch_76
    .catchall {:try_start_5a .. :try_end_75} :catchall_ac

    .line 290
    goto :goto_8b

    .line 288
    :catch_76
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    :try_start_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8b
    iput-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_ac

    .line 296
    nop

    .line 297
    :try_start_8f
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_aa

    .line 299
    :catch_93
    move-exception v0

    move-object v2, v0

    .line 300
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 302
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_ab

    .line 301
    :goto_aa
    nop

    .line 303
    :goto_ab
    return-void

    .line 293
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    .line 218
    .local v0, "start":I
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "fdList":[Ljava/io/FileDescriptor;
    .restart local v10    # "count":I
    :cond_af
    :try_start_af
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v11

    move-object v9, v11

    .line 221
    add-int/2addr v10, v0

    .line 222
    const/4 v0, 0x0

    .line 224
    move v11, v0

    move v0, v8

    .line 224
    .local v0, "i":I
    .local v11, "start":I
    :goto_b8
    move v12, v0

    .line 224
    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_17d

    .line 225
    aget-byte v0, v7, v12

    if-nez v0, :cond_171

    .line 228
    new-instance v0, Ljava/lang/String;

    sub-int v13, v12, v11

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v11, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_c8} :catch_1b3
    .catchall {:try_start_af .. :try_end_c8} :catchall_1ae

    move-object v13, v0

    .line 231
    .local v13, "rawEvent":Ljava/lang/String;
    move v14, v8

    .line 233
    .local v14, "releaseWl":Z
    nop

    .line 234
    :try_start_cb
    invoke-static {v13, v9}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 236
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCV <- {"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 240
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-interface {v2, v15}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v2
    :try_end_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_f9} :catch_148
    .catchall {:try_start_cb .. :try_end_f9} :catchall_144

    if-eqz v2, :cond_10f

    :try_start_fb
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_10f

    .line 242
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_104} :catch_10b
    .catchall {:try_start_fb .. :try_end_104} :catchall_107

    .line 243
    const/4 v2, 0x1

    .line 245
    .end local v14    # "releaseWl":Z
    .local v2, "releaseWl":Z
    move v14, v2

    goto :goto_10f

    .line 256
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "releaseWl":Z
    .restart local v14    # "releaseWl":Z
    :catchall_107
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_169

    .line 253
    :catch_10b
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_14b

    .line 245
    .restart local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_10f
    :goto_10f
    :try_start_10f
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v8
    :try_end_11d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10f .. :try_end_11d} :catch_148
    .catchall {:try_start_10f .. :try_end_11d} :catchall_144

    .line 245
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_120
    invoke-virtual {v2, v15, v6, v3, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 247
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .local v2, "msg":Landroid/os/Message;
    .local v16, "socket":Landroid/net/LocalSocket;
    iget-object v3, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 248
    const/4 v2, 0x0

    .line 250
    .end local v14    # "releaseWl":Z
    .local v2, "releaseWl":Z
    move v14, v2

    .line 250
    .end local v2    # "releaseWl":Z
    .restart local v14    # "releaseWl":Z
    :cond_12e
    goto :goto_13a

    .line 251
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_12f
    move-object/from16 v16, v3

    .line 251
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_13a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_120 .. :try_end_13a} :catch_142
    .catchall {:try_start_120 .. :try_end_13a} :catchall_168

    .line 256
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_13a
    if-eqz v14, :cond_164

    .line 257
    :try_start_13c
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_13e
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_141} :catch_1a8
    .catchall {:try_start_13c .. :try_end_141} :catchall_1a3

    goto :goto_164

    .line 253
    :catch_142
    move-exception v0

    goto :goto_14b

    .line 256
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_144
    move-exception v0

    move-object/from16 v16, v3

    .line 256
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_169

    .line 253
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catch_148
    move-exception v0

    move-object/from16 v16, v3

    .line 254
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_14b
    :try_start_14b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_14b .. :try_end_15f} :catchall_168

    .line 256
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v14, :cond_164

    .line 257
    :try_start_161
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_13e

    .line 261
    :cond_164
    :goto_164
    add-int/lit8 v0, v12, 0x1

    .line 224
    .end local v11    # "start":I
    .end local v13    # "rawEvent":Ljava/lang/String;
    .end local v14    # "releaseWl":Z
    .local v0, "start":I
    move v11, v0

    goto :goto_173

    .line 256
    .end local v0    # "start":I
    .restart local v11    # "start":I
    .restart local v13    # "rawEvent":Ljava/lang/String;
    .restart local v14    # "releaseWl":Z
    :catchall_168
    move-exception v0

    :goto_169
    if-eqz v14, :cond_170

    .line 257
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_170
    throw v0

    .line 224
    .end local v13    # "rawEvent":Ljava/lang/String;
    .end local v14    # "releaseWl":Z
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_171
    move-object/from16 v16, v3

    .line 224
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_173
    add-int/lit8 v0, v12, 0x1

    .line 224
    .end local v12    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v16

    const/4 v2, 0x0

    const/16 v6, 0x1000

    const/4 v8, 0x0

    goto/16 :goto_b8

    .line 265
    .end local v0    # "i":I
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_17d
    move-object/from16 v16, v3

    .line 265
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    if-nez v11, :cond_186

    .line 266
    const-string v0, "RCV incomplete"

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 271
    :cond_186
    if-eq v11, v10, :cond_192

    .line 272
    const/16 v2, 0x1000

    rsub-int v6, v11, 0x1000

    .line 273
    .local v6, "remaining":I
    const/4 v3, 0x0

    invoke-static {v7, v11, v7, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_190} :catch_1a8
    .catchall {:try_start_161 .. :try_end_190} :catchall_1a3

    .line 274
    move v0, v6

    .line 275
    .end local v6    # "remaining":I
    .end local v11    # "start":I
    .local v0, "start":I
    goto :goto_196

    .line 276
    .end local v0    # "start":I
    .restart local v11    # "start":I
    :cond_192
    const/16 v2, 0x1000

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 278
    .end local v10    # "count":I
    .end local v11    # "start":I
    .restart local v0    # "start":I
    :goto_196
    nop

    .line 210
    move v6, v2

    move v8, v3

    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 204
    .end local v0    # "start":I
    .end local v7    # "buffer":[B
    .end local v9    # "fdList":[Ljava/io/FileDescriptor;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_19e
    move-exception v0

    move-object/from16 v16, v3

    .line 204
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_1a1
    :try_start_1a1
    monitor-exit v6
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1ac

    :try_start_1a2
    throw v0
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a3} :catch_1a8
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a3

    .line 283
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1a3
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v16

    goto :goto_1d0

    .line 279
    :catch_1a8
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1bb

    .line 204
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1ac
    move-exception v0

    goto :goto_1a1

    .line 283
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_1ae
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v0

    .line 283
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_1d0

    .line 279
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catch_1b3
    move-exception v0

    move-object/from16 v16, v3

    .line 279
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_1bb

    .line 283
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_1b7
    move-exception v0

    move-object v2, v0

    goto :goto_1d0

    .line 279
    :catch_1ba
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/io/IOException;
    :goto_1bb
    :try_start_1bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communications error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 281
    throw v0
    :try_end_1d0
    .catchall {:try_start_1bb .. :try_end_1d0} :catchall_1b7

    .line 283
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1d0
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_1d3
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1d5
    .catchall {:try_start_1d3 .. :try_end_1d5} :catchall_22a

    if-eqz v0, :cond_20b

    .line 286
    :try_start_1d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1f2} :catch_1f3
    .catchall {:try_start_1d7 .. :try_end_1f2} :catchall_22a

    .line 290
    goto :goto_208

    .line 288
    :catch_1f3
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    :try_start_1f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :goto_208
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_20b
    monitor-exit v4
    :try_end_20c
    .catchall {:try_start_1f4 .. :try_end_20c} :catchall_22a

    .line 296
    if-eqz v3, :cond_229

    .line 297
    :try_start_20e
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_211} :catch_212

    goto :goto_229

    .line 299
    :catch_212
    move-exception v0

    move-object v4, v0

    .line 300
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 301
    :cond_229
    :goto_229
    throw v2

    .line 293
    :catchall_22a
    move-exception v0

    :try_start_22b
    monitor-exit v4
    :try_end_22c
    .catchall {:try_start_22b .. :try_end_22c} :catchall_22a

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .line 600
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6d

    .line 331
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_65

    .line 335
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v2, p4

    move v3, v0

    :goto_23
    if-ge v3, v2, :cond_61

    aget-object v4, p4, v3

    .line 338
    .local v4, "arg":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "argString":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_4a

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p0, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    instance-of v6, v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v6, :cond_44

    .line 348
    const-string v6, "[scrubbed]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 350
    :cond_44
    invoke-static {p1, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 340
    .restart local v4    # "arg":Ljava/lang/Object;
    .restart local v5    # "argString":Ljava/lang/String;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :cond_61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return-void

    .line 332
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uptimeMillisInt()I
    .registers 3

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 596
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 9
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 412
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 416
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 413
    :cond_c
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 391
    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 406
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 28
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 463
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_43

    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 464
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 465
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 464
    invoke-static {v0, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 470
    .local v2, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 472
    .local v4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 473
    .local v5, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 474
    .local v6, "logBuilder":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 476
    .local v7, "sequenceNumber":I
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, "rawCmd":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 481
    .local v11, "logCmd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SND -> {"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "}"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 483
    iget-object v12, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v12

    .line 484
    :try_start_89
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_14b

    if-eqz v0, :cond_13c

    .line 488
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_98} :catch_12c
    .catchall {:try_start_8d .. :try_end_98} :catchall_14b

    .line 491
    nop

    .line 493
    :try_start_99
    monitor-exit v12
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_14b

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    :cond_9b
    iget-object v12, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-wide/from16 v13, p1

    invoke-virtual {v12, v7, v13, v14, v11}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_10d

    .line 503
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v12

    if-nez v12, :cond_9b

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 507
    .local v15, "endTime":J
    sub-long v17, v15, v2

    const-wide/16 v19, 0x1f4

    cmp-long v12, v17, v19

    if-lez v12, :cond_e4

    .line 508
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "NDC Command {"

    .line 508
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .local v21, "rawBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} took too long ("

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v6

    sub-long v5, v15, v2

    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .local v22, "logBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_e8

    .line 511
    .end local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_e4
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 511
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_e8
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v5

    if-nez v5, :cond_107

    .line 514
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v5

    if-nez v5, :cond_101

    .line 518
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/NativeDaemonEvent;

    return-object v5

    .line 515
    :cond_101
    new-instance v5, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 512
    :cond_107
    new-instance v5, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 499
    .end local v15    # "endTime":J
    .end local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_10d
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 499
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "logBuilder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timed-out waiting for response to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 500
    new-instance v5, Lcom/android/server/NativeDaemonTimeoutException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 489
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :catch_12c
    move-exception v0

    move-wide/from16 v13, p1

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 490
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/io/IOException;
    .restart local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "logBuilder":Ljava/lang/StringBuilder;
    :try_start_133
    new-instance v5, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v6, "problem sending command"

    invoke-direct {v5, v6, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    .end local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_13c
    move-wide/from16 v13, p1

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 485
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "logBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v5, "missing output stream"

    invoke-direct {v0, v5}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    .end local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :catchall_14b
    move-exception v0

    move-wide/from16 v13, p1

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 493
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_152
    monitor-exit v12
    :try_end_153
    .catchall {:try_start_133 .. :try_end_153} :catchall_154

    throw v0

    :catchall_154
    move-exception v0

    goto :goto_152
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 430
    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 446
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "event":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v1

    .line 158
    .local v1, "start":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 160
    .local v2, "sent":I
    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_f
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v0, v10}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 161
    const-string v8, "Unhandled event \'%s\'"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_80
    .catchall {:try_start_f .. :try_end_2a} :catchall_7e

    .line 166
    :cond_2a
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-interface {v8, v9}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v8

    if-eqz v8, :cond_3d

    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_3d

    .line 167
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v8

    .line 170
    .local v8, "end":I
    if-le v1, v2, :cond_5f

    sub-int v9, v1, v2

    int-to-long v9, v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_5f

    .line 171
    const-string v9, "NDC event {%s} processed too late: %dms"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v6

    sub-int v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_5f
    if-le v8, v1, :cond_7d

    sub-int v9, v8, v1

    int-to-long v9, v9

    cmp-long v4, v9, v4

    if-lez v4, :cond_7d

    .line 174
    const-string v4, "NDC event {%s} took too long: %dms"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v5, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    :goto_76
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    .end local v8    # "end":I
    :cond_7d
    goto :goto_ea

    .line 166
    :catchall_7e
    move-exception v8

    goto :goto_eb

    .line 163
    :catch_80
    move-exception v8

    .line 164
    .local v8, "e":Ljava/lang/Exception;
    :try_start_81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error handling \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_7e

    .line 166
    .end local v8    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-interface {v8, v9}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v8

    if-eqz v8, :cond_b0

    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_b0

    .line 167
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_b0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v8

    .line 170
    .local v8, "end":I
    if-le v1, v2, :cond_d2

    sub-int v9, v1, v2

    int-to-long v9, v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_d2

    .line 171
    const-string v9, "NDC event {%s} processed too late: %dms"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v6

    sub-int v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_d2
    if-le v8, v1, :cond_7d

    sub-int v9, v8, v1

    int-to-long v9, v9

    cmp-long v4, v9, v4

    if-lez v4, :cond_7d

    .line 174
    const-string v4, "NDC event {%s} took too long: %dms"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v5, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    goto :goto_76

    .line 177
    .end local v8    # "end":I
    :goto_ea
    return v7

    .line 166
    :goto_eb
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-interface {v9, v10}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v9

    if-eqz v9, :cond_fe

    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_fe

    .line 167
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_fe
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v9

    .line 170
    .local v9, "end":I
    if-le v1, v2, :cond_120

    sub-int v10, v1, v2

    int-to-long v10, v10

    cmp-long v10, v10, v4

    if-lez v10, :cond_120

    .line 171
    const-string v10, "NDC event {%s} processed too late: %dms"

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v0, v11, v6

    sub-int v12, v1, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_120
    if-le v9, v1, :cond_13e

    sub-int v10, v9, v1

    int-to-long v10, v10

    cmp-long v4, v10, v4

    if-lez v4, :cond_13e

    .line 174
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v4, v9, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "NDC event {%s} took too long: %dms"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    .end local v9    # "end":I
    :cond_13e
    throw v8
.end method

.method public monitor()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public run()V
    .registers 4

    .line 134
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 137
    :goto_9
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 139
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 144
    :goto_13
    goto :goto_9

    .line 140
    :catch_14
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_30
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_13
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 113
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 3
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 129
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public waitForCallbacks()V
    .registers 5

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_29

    .line 367
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 368
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NativeDaemonConnector$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    :try_start_1c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 378
    goto :goto_28

    .line 376
    :catch_20
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for unsolicited response handling"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_28
    return-void

    .line 364
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not call this method on callback thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
