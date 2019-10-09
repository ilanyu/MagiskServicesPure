.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDiscoverPacket.java"


# direct methods
.method constructor <init>(IS[BZ)V
    .registers 14
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z

    .line 30
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 31
    return-void
.end method

.method constructor <init>(IS[BZZ)V
    .registers 16
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "rapidCommit"    # Z

    .line 34
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 48
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "result":Ljava/nio/ByteBuffer;
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-boolean v9, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpDiscoverPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 59
    const/16 v0, 0x35

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpDiscoverPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 62
    iget-object v0, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 63
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRapidCommit:Z

    if-eqz v0, :cond_22

    .line 64
    const/16 v0, 0x50

    invoke-static {p1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B)V

    .line 66
    :cond_22
    invoke-static {p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 39
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DISCOVER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v2, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    if-eqz v2, :cond_18

    const-string v2, "broadcast "

    goto :goto_1b

    :cond_18
    const-string/jumbo v2, "unicast "

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    return-object v1
.end method
