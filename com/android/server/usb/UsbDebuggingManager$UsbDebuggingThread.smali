.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
.super Ljava/lang/Thread;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 83
    const-string v0, "UsbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private closeSocketLocked()V
    .registers 6

    .line 160
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_c

    .line 161
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 162
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    .line 166
    :cond_c
    goto :goto_24

    .line 164
    :catch_d
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :goto_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2f

    .line 170
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 171
    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 175
    :cond_2f
    goto :goto_47

    .line 173
    :catch_30
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "UsbDebuggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_47
    return-void
.end method

.method private listenToSocket()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    .line 133
    .local v0, "buffer":[B
    :goto_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 134
    .local v1, "count":I
    if-gez v1, :cond_d

    .line 135
    goto :goto_73

    .line 138
    :cond_d
    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/16 v4, 0x50

    const/4 v5, 0x2

    if-ne v3, v4, :cond_53

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_53

    .line 139
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 140
    .local v2, "key":Ljava/lang/String;
    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 142
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    nop

    .line 149
    .end local v1    # "count":I
    goto :goto_4

    .line 145
    .restart local v1    # "count":I
    :cond_53
    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong message: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 146
    invoke-static {v0, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_2 .. :try_end_72} :catchall_7d

    .line 147
    nop

    .line 151
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :goto_73
    monitor-enter p0

    .line 152
    :try_start_74
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    .line 153
    monitor-exit p0

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7a

    throw v0

    .line 151
    :catchall_7d
    move-exception v0

    monitor-enter p0

    .line 152
    :try_start_7f
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    .line 153
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_84

    throw v0

    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method private openSocketLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "adbd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 115
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 118
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 119
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 121
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 122
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 126
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    nop

    .line 127
    return-void

    .line 123
    :catch_2a
    move-exception v0

    .line 124
    .local v0, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    .line 125
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 90
    :goto_0
    monitor-enter p0

    .line 91
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    if-eqz v0, :cond_7

    .line 93
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    return-void

    .line 96
    :cond_7
    const-wide/16 v0, 0x3e8

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->openSocketLocked()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_1b

    .line 100
    goto :goto_11

    .line 97
    :catch_d
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1b

    .line 103
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->listenToSocket()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 107
    :goto_15
    goto :goto_0

    .line 104
    :catch_16
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 101
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 187
    monitor-enter p0

    .line 188
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 190
    :try_start_9
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1d

    .line 194
    goto :goto_1b

    .line 192
    :catch_13
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/io/IOException;
    :try_start_14
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method stopListening()V
    .registers 2

    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    .line 182
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
