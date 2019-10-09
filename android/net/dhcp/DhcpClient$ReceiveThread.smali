.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 361
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 363
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    return-void
.end method


# virtual methods
.method public halt()V
    .registers 2

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    .line 368
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->closeSockets()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$000(Landroid/net/dhcp/DhcpClient;)V

    .line 369
    return-void
.end method

.method public run()V
    .registers 10

    .line 373
    const-string v0, "DhcpClient"

    const-string v1, "Receive thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_7
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_a1

    .line 375
    const/4 v0, 0x0

    move v1, v0

    .line 377
    .local v1, "length":I
    :try_start_d
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    move v1, v2

    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    invoke-static {v3, v1, v0}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v3

    move-object v2, v3

    .line 380
    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v4, 0x30066

    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_43} :catch_8b
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_43} :catch_8b
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_d .. :try_end_43} :catch_44

    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    goto :goto_9e

    .line 387
    :catch_44
    move-exception v2

    .line 388
    .local v2, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v3, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    if-ne v3, v4, :cond_83

    .line 393
    const v3, 0x534e4554

    .line 394
    .local v3, "snetTagId":I
    const-string v4, "31850211"

    .line 395
    .local v4, "bugId":Ljava/lang/String;
    const/4 v5, -0x1

    .line 396
    .local v5, "uid":I
    const-class v6, Landroid/net/dhcp/DhcpPacket$ParseException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "data":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x2

    aput-object v6, v7, v0

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 399
    .end local v3    # "snetTagId":I
    .end local v4    # "bugId":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "data":Ljava/lang/String;
    :cond_83
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v3, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    # invokes: Landroid/net/dhcp/DhcpClient;->logError(I)V
    invoke-static {v0, v3}, Landroid/net/dhcp/DhcpClient;->access$200(Landroid/net/dhcp/DhcpClient;I)V

    .end local v1    # "length":I
    .end local v2    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    goto :goto_9f

    .line 382
    .restart local v1    # "length":I
    :catch_8b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_9e

    .line 384
    const-string v2, "DhcpClient"

    const-string v3, "Read error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    # invokes: Landroid/net/dhcp/DhcpClient;->logError(I)V
    invoke-static {v2, v3}, Landroid/net/dhcp/DhcpClient;->access$200(Landroid/net/dhcp/DhcpClient;I)V

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9e
    :goto_9e
    nop

    .line 401
    .end local v1    # "length":I
    :goto_9f
    goto/16 :goto_7

    .line 402
    :cond_a1
    const-string v0, "DhcpClient"

    const-string v1, "Receive thread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method
