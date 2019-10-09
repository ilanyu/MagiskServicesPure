.class final Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
.super Landroid/net/util/PacketReader;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/ConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Landroid/net/util/InterfaceParams;

.field final synthetic this$0:Landroid/net/ip/ConnectivityPacketTracker;


# direct methods
.method constructor <init>(Landroid/net/ip/ConnectivityPacketTracker;Landroid/os/Handler;Landroid/net/util/InterfaceParams;)V
    .registers 4
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "ifParams"    # Landroid/net/util/InterfaceParams;

    .line 95
    iput-object p1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    .line 96
    iget p1, p3, Landroid/net/util/InterfaceParams;->defaultMtu:I

    invoke-direct {p0, p2, p1}, Landroid/net/util/PacketReader;-><init>(Landroid/os/Handler;I)V

    .line 97
    iput-object p3, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mInterface:Landroid/net/util/InterfaceParams;

    .line 98
    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "entry"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;
    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->access$100(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .registers 6

    .line 102
    const/4 v0, 0x0

    move-object v1, v0

    .line 104
    .local v1, "s":Ljava/io/FileDescriptor;
    :try_start_2
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 105
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->attachControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 106
    new-instance v2, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_ALL:I

    int-to-short v3, v3

    iget-object v4, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mInterface:Landroid/net/util/InterfaceParams;

    iget v4, v4, Landroid/net/util/InterfaceParams;->index:I

    invoke-direct {v2, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_20} :catch_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_22

    .line 111
    nop

    .line 112
    return-object v1

    .line 107
    :catch_22
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to create packet tracking socket: "

    invoke-virtual {p0, v3, v2}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->closeFd(Ljava/io/FileDescriptor;)V

    .line 110
    return-object v0
.end method

.method protected handlePacket([BI)V
    .registers 7
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 117
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-static {v0, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "summary":Ljava/lang/String;
    if-nez v0, :cond_b

    return-void

    .line 122
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 123
    invoke-static {p1, v3, p2}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 145
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->access$300(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 128
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->access$000(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 129
    const-string v0, "--- START ---"

    goto :goto_21

    .line 130
    :cond_f
    const-string v0, "--- START (%s) ---"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/ip/ConnectivityPacketTracker;->access$000(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "msg":Ljava/lang/String;
    :goto_21
    iget-object v1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker;->access$100(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected onStop()V
    .registers 5

    .line 136
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->access$000(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 137
    const-string v0, "--- STOP ---"

    goto :goto_21

    .line 138
    :cond_f
    const-string v0, "--- STOP (%s) ---"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/ip/ConnectivityPacketTracker;->access$000(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "msg":Ljava/lang/String;
    :goto_21
    iget-object v1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mRunning:Z
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker;->access$200(Landroid/net/ip/ConnectivityPacketTracker;)Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (packet listener stopped unexpectedly)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_3a
    iget-object v1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    # getter for: Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker;->access$100(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 141
    return-void
.end method
