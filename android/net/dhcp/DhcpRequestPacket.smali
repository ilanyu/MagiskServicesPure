.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpRequestPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZ)V
    .registers 15
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "clientMac"    # [B
    .param p5, "broadcast"    # Z

    .line 33
    sget-object v4, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 47
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "result":Ljava/nio/ByteBuffer;
    sget-object v3, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-boolean v9, p0, Landroid/net/dhcp/DhcpRequestPacket;->mBroadcast:Z

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpRequestPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

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

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpRequestPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 61
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 62
    const/16 v0, 0x32

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 64
    :cond_20
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 65
    const/16 v0, 0x36

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 67
    :cond_31
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpRequestPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 68
    const/16 v0, 0x37

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 69
    invoke-static {p1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 37
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " REQUEST, desired IP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from host \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', param list length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2e

    :cond_2b
    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    array-length v2, v2

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    return-object v1
.end method
