.class abstract Lcom/miui/server/UsbManagerConnect;
.super Ljava/lang/Object;
.source "UsbManagerConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "UsbManagerConnect"


# instance fields
.field protected final MSG_LOCAL:I

.field protected final MSG_SHARE_NET:I

.field protected final MSG_TO_PC:I

.field mOutputStream:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_TO_PC:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_LOCAL:I

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_SHARE_NET:I

    return-void
.end method


# virtual methods
.method declared-synchronized closeSocket()V
    .registers 5

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-eqz v0, :cond_22

    .line 23
    :try_start_5
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_45

    .line 26
    goto :goto_22

    .line 24
    :catch_b
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/io/IOException;
    :try_start_c
    const-string v1, "UsbManagerConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_45

    if-eqz v0, :cond_43

    .line 31
    :try_start_26
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_45

    .line 34
    goto :goto_43

    .line 32
    :catch_2c
    move-exception v0

    .line 33
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_2d
    const-string v1, "UsbManagerConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_45

    .line 36
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    .line 20
    :catchall_45
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/server/UsbManagerConnect;
    throw v0
.end method

.method getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAIL, function name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLargeMsg([B)[B
    .registers 7
    .param p1, "msg"    # [B

    .line 94
    const-string v0, "%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    .local v0, "msgLenByte":[B
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 97
    .local v1, "largeMsg":[B
    const/4 v2, 0x0

    .line 98
    .local v2, "startPos":I
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 99
    array-length v4, v0

    add-int/2addr v2, v4

    .line 100
    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 102
    return-object v1
.end method

.method abstract listenToSocket()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method declared-synchronized sendResponse(II[B)V
    .registers 10
    .param p1, "msgType"    # I
    .param p2, "msgId"    # I
    .param p3, "byteMsg"    # [B

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_64

    if-eqz v0, :cond_62

    if-eqz p3, :cond_62

    .line 61
    :try_start_7
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string v1, "%04x"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 63
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string v1, "%08x"

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 64
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 65
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_59} :catch_5a
    .catchall {:try_start_7 .. :try_end_59} :catchall_64

    .line 68
    goto :goto_62

    .line 66
    :catch_5a
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5b
    const-string v1, "UsbManagerConnect"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    .line 70
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_62
    :goto_62
    monitor-exit p0

    return-void

    .line 58
    .end local p1    # "msgType":I
    .end local p2    # "msgId":I
    .end local p3    # "byteMsg":[B
    :catchall_64
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/server/UsbManagerConnect;
    throw p1
.end method

.method declared-synchronized sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_17

    .line 41
    :try_start_5
    iget-object v0, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_f
    .catchall {:try_start_5 .. :try_end_e} :catchall_19

    .line 44
    goto :goto_17

    .line 42
    :catch_f
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/io/IOException;
    :try_start_10
    const-string v1, "UsbManagerConnect"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_19

    .line 46
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/server/UsbManagerConnect;
    throw p1
.end method
