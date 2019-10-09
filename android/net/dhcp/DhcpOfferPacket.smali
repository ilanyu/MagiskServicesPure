.class Landroid/net/dhcp/DhcpOfferPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpOfferPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .line 36
    sget-object v5, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 37
    move-object v1, p4

    iput-object v1, v0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    .line 38
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 59
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_e

    sget-object v1, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    :goto_c
    move-object v3, v1

    goto :goto_11

    :cond_e
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    goto :goto_c

    .line 61
    .local v3, "destIp":Ljava/net/Inet4Address;
    :goto_11
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_19

    sget-object v1, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    :goto_17
    move-object v4, v1

    goto :goto_1c

    :cond_19
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    goto :goto_17

    .line 63
    .local v4, "srcIp":Ljava/net/Inet4Address;
    :goto_1c
    const/4 v8, 0x2

    iget-boolean v9, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 73
    const/4 v0, 0x2

    const/16 v1, 0x35

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 74
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v2, 0x36

    invoke-static {p1, v2, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 75
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v2, 0x33

    invoke-static {p1, v2, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 78
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 79
    const/16 v1, 0x3a

    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 83
    :cond_28
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 84
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 85
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 86
    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 87
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 88
    invoke-static {p1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 41
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "s":Ljava/lang/String;
    const-string v1, ", DNS servers: "

    .line 44
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    if-eqz v2, :cond_31

    .line 45
    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 46
    .local v3, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .end local v3    # "dnsServer":Ljava/net/Inet4Address;
    goto :goto_10

    .line 50
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OFFER, ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", gateways "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lease time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
