.class public abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_OPTION_RAPID_COMMIT:B = 0x50t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field protected mRapidCommit:Z

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 42
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 321
    const/4 v0, 0x0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 322
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-void

    :array_1a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 19
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .line 341
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V

    .line 343
    return-void
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V
    .registers 10
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z
    .param p9, "rapidCommit"    # Z

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 328
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    .line 329
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 330
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 331
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 332
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 333
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 334
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 335
    iput-boolean p9, p0, Landroid/net/dhcp/DhcpPacket;->mRapidCommit:Z

    .line 336
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 545
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 547
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .line 553
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 556
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .line 617
    if-eqz p2, :cond_10

    .line 618
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 622
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .line 606
    if-eqz p2, :cond_10

    .line 607
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 608
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 611
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .line 629
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catch_b
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .line 577
    if-eqz p2, :cond_9

    .line 578
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 580
    :cond_9
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .line 586
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    if-eqz p2, :cond_52

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    .line 588
    :cond_9
    const/4 v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 589
    .local v0, "optionLen":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_33

    .line 594
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 595
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 597
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 598
    .local v2, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 599
    .end local v2    # "addr":Ljava/net/Inet4Address;
    goto :goto_1e

    .line 600
    :cond_32
    return-void

    .line 590
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP option too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    .end local v0    # "optionLen":I
    :cond_52
    :goto_52
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .line 562
    if-eqz p2, :cond_33

    .line 563
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_13

    .line 567
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_33

    .line 564
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP option too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_33
    :goto_33
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 24
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1243
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v8, Landroid/net/dhcp/DhcpAckPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1245
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v1, p9

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1246
    move-object/from16 v2, p10

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1247
    move-object/from16 v3, p6

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1248
    move-object/from16 v4, p12

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1249
    move-object/from16 v5, p7

    iput-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1250
    move-object/from16 v6, p11

    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1251
    move-object/from16 v7, p8

    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1252
    const/16 v8, 0x44

    const/16 v9, 0x43

    move v10, p0

    invoke-virtual {v0, v10, v8, v9}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .registers 13
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    .line 1202
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;
    .registers 14
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B
    .param p6, "rapidCommit"    # Z

    .line 1208
    new-instance v6, Landroid/net/dhcp/DhcpDiscoverPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZZ)V

    .line 1210
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1211
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .registers 14
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    .line 1260
    new-instance v8, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1262
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1263
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1264
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 24
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1223
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v8, Landroid/net/dhcp/DhcpOfferPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1225
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v1, p9

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1226
    move-object/from16 v2, p10

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1227
    move-object/from16 v3, p6

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1228
    move-object/from16 v4, p12

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1229
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1230
    move-object/from16 v6, p7

    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1231
    move-object/from16 v7, p8

    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1232
    const/16 v8, 0x44

    const/16 v9, 0x43

    move v10, p0

    invoke-virtual {v0, v10, v8, v9}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 18
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    .line 1274
    new-instance v6, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1276
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object v1, p6

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1277
    move-object v2, p7

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1278
    move-object/from16 v3, p9

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1279
    move-object/from16 v4, p8

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1280
    const/16 v5, 0x43

    const/16 v6, 0x44

    move v7, p0

    invoke-virtual {v0, v7, v5, v6}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1281
    .local v5, "result":Ljava/nio/ByteBuffer;
    return-object v5
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 503
    move v0, p2

    .line 504
    .local v0, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 508
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 512
    .local v2, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    sub-int v3, p4, p3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 515
    .local v3, "shortArray":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 517
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_26

    aget-short v6, v3, v5

    .line 518
    .local v6, "s":S
    invoke-static {v6}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v7

    add-int/2addr v0, v7

    .line 517
    .end local v6    # "s":S
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 521
    :cond_26
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    .line 524
    if-eq p4, p3, :cond_39

    .line 525
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-short v4, v4

    .line 528
    .local v4, "b":S
    if-gez v4, :cond_36

    .line 529
    add-int/lit16 v5, v4, 0x100

    int-to-short v4, v5

    .line 532
    :cond_36
    mul-int/lit16 v5, v4, 0x100

    add-int/2addr v0, v5

    .line 535
    .end local v4    # "b":S
    :cond_39
    shr-int/lit8 v4, v0, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int v6, v0, v5

    add-int/2addr v4, v6

    .line 536
    .end local v0    # "sum":I
    .local v4, "sum":I
    shr-int/lit8 v0, v4, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    and-int/2addr v0, v5

    .line 537
    .end local v4    # "sum":I
    .restart local v0    # "sum":I
    not-int v4, v0

    .line 538
    .local v4, "negated":I
    int-to-short v5, v4

    invoke-static {v5}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v5

    return v5
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .registers 90
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 769
    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 770
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 771
    .local v4, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/4 v5, 0x0

    .line 772
    .local v5, "serverIdentifier":Ljava/net/Inet4Address;
    const/4 v6, 0x0

    .line 773
    .local v6, "netMask":Ljava/net/Inet4Address;
    const/4 v7, 0x0

    .line 774
    .local v7, "message":Ljava/lang/String;
    const/4 v8, 0x0

    .line 775
    .local v8, "vendorId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 776
    .local v9, "vendorInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 777
    .local v10, "expectedParams":[B
    const/4 v11, 0x0

    .line 778
    .local v11, "hostName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 779
    .local v12, "domainName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 780
    .local v0, "ipSrc":Ljava/net/Inet4Address;
    const/4 v13, 0x0

    .line 781
    .local v13, "ipDst":Ljava/net/Inet4Address;
    const/4 v14, 0x0

    .line 782
    .local v14, "bcAddr":Ljava/net/Inet4Address;
    const/4 v15, 0x0

    .line 788
    .local v15, "requestedIp":Ljava/net/Inet4Address;
    const/16 v16, 0x0

    .line 789
    .local v16, "mtu":Ljava/lang/Short;
    const/16 v17, 0x0

    .line 790
    .local v17, "maxMessageSize":Ljava/lang/Short;
    const/16 v18, 0x0

    .line 791
    .local v18, "leaseTime":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 792
    .local v19, "T1":Ljava/lang/Integer;
    const/16 v20, 0x0

    .line 795
    .local v20, "T2":Ljava/lang/Integer;
    const/16 v21, -0x1

    .line 797
    .local v21, "dhcpType":B
    move-object/from16 v22, v0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 797
    .end local v0    # "ipSrc":Ljava/net/Inet4Address;
    .local v22, "ipSrc":Ljava/net/Inet4Address;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 800
    move-object/from16 v24, v5

    .line 800
    .end local v5    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v24, "serverIdentifier":Ljava/net/Inet4Address;
    if-nez v2, :cond_a5

    .line 801
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v0, 0x116

    if-lt v5, v0, :cond_7d

    .line 806
    const/4 v0, 0x6

    new-array v5, v0, [B

    .line 807
    .local v5, "l2dst":[B
    move-object/from16 v26, v6

    new-array v6, v0, [B

    .line 809
    .local v6, "l2src":[B
    .local v26, "netMask":Ljava/net/Inet4Address;
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 810
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 814
    .local v0, "l2type":S
    move-object/from16 v27, v5

    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 814
    .end local v5    # "l2dst":[B
    .local v27, "l2dst":[B
    if-ne v0, v5, :cond_58

    .line 820
    .end local v0    # "l2type":S
    .end local v6    # "l2src":[B
    .end local v27    # "l2dst":[B
    move-object/from16 v29, v7

    move-object/from16 v32, v8

    const/4 v8, 0x1

    goto :goto_ac

    .line 815
    .restart local v0    # "l2type":S
    .restart local v6    # "l2src":[B
    .restart local v27    # "l2dst":[B
    :cond_58
    new-instance v5, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v28, v6

    sget v6, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 815
    .end local v6    # "l2src":[B
    .local v28, "l2src":[B
    move-object/from16 v29, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 816
    .end local v7    # "message":Ljava/lang/String;
    .local v29, "message":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    const/16 v25, 0x0

    aput-object v23, v7, v25

    move/from16 v30, v0

    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 816
    .end local v0    # "l2type":S
    .local v30, "l2type":S
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v23, 0x1

    aput-object v0, v7, v23

    const-string v0, "Unexpected L2 type 0x%04x, expected 0x%04x"

    invoke-direct {v5, v6, v0, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 802
    .end local v26    # "netMask":Ljava/net/Inet4Address;
    .end local v27    # "l2dst":[B
    .end local v28    # "l2src":[B
    .end local v29    # "message":Ljava/lang/String;
    .end local v30    # "l2type":S
    .local v6, "netMask":Ljava/net/Inet4Address;
    .restart local v7    # "message":Ljava/lang/String;
    :cond_7d
    move-object/from16 v26, v6

    move-object/from16 v29, v7

    .line 802
    .end local v6    # "netMask":Ljava/net/Inet4Address;
    .end local v7    # "message":Ljava/lang/String;
    .restart local v26    # "netMask":Ljava/net/Inet4Address;
    .restart local v29    # "message":Ljava/lang/String;
    new-instance v5, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v6, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 803
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v23, 0x0

    aput-object v0, v7, v23

    const/16 v0, 0x116

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v32, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    .end local v8    # "vendorId":Ljava/lang/String;
    .local v32, "vendorId":Ljava/lang/String;
    const-string v0, "L2 packet too short, %d < %d"

    invoke-direct {v5, v6, v0, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 820
    .end local v26    # "netMask":Ljava/net/Inet4Address;
    .end local v29    # "message":Ljava/lang/String;
    .end local v32    # "vendorId":Ljava/lang/String;
    .restart local v6    # "netMask":Ljava/net/Inet4Address;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "vendorId":Ljava/lang/String;
    :cond_a5
    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move-object/from16 v32, v8

    const/4 v8, 0x1

    .line 820
    .end local v6    # "netMask":Ljava/net/Inet4Address;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "vendorId":Ljava/lang/String;
    .restart local v26    # "netMask":Ljava/net/Inet4Address;
    .restart local v29    # "message":Ljava/lang/String;
    .restart local v32    # "vendorId":Ljava/lang/String;
    :goto_ac
    const/4 v0, 0x4

    if-gt v2, v8, :cond_1ac

    .line 821
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x108

    if-lt v5, v6, :cond_189

    .line 826
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 827
    .local v5, "ipTypeAndLength":B
    and-int/lit16 v6, v5, 0xf0

    shr-int/2addr v6, v0

    .line 828
    .local v6, "ipVersion":I
    if-ne v6, v0, :cond_16f

    .line 834
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 835
    .local v7, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 836
    .local v8, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    .line 837
    .local v27, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v28

    .line 838
    .local v28, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v30

    .line 839
    .local v30, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v31

    .line 840
    .local v31, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 841
    .local v0, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v34

    .line 843
    .local v34, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v22

    .line 844
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    .line 846
    move/from16 v35, v7

    const/16 v7, 0x11

    .line 846
    .end local v7    # "ipDiffServicesField":B
    .local v35, "ipDiffServicesField":B
    if-ne v0, v7, :cond_153

    .line 854
    and-int/lit8 v7, v5, 0xf

    add-int/lit8 v7, v7, -0x5

    .line 855
    .local v7, "optionWords":I
    const/16 v36, 0x0

    .line 855
    .local v36, "i":I
    :goto_f4
    move/from16 v37, v36

    .line 855
    .end local v36    # "i":I
    .local v37, "i":I
    move/from16 v38, v5

    move/from16 v5, v37

    if-ge v5, v7, :cond_104

    .line 856
    .end local v37    # "i":I
    .local v5, "i":I
    .local v38, "ipTypeAndLength":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 855
    add-int/lit8 v36, v5, 0x1

    .line 855
    .end local v5    # "i":I
    .restart local v36    # "i":I
    move/from16 v5, v38

    goto :goto_f4

    .line 860
    .end local v36    # "i":I
    :cond_104
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 861
    .local v5, "udpSrcPort":S
    move/from16 v39, v7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 862
    .local v7, "udpDstPort":S
    .local v39, "optionWords":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v36

    .line 863
    .local v36, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    .line 868
    .local v37, "udpChkSum":S
    invoke-static {v5, v7}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v40

    if-nez v40, :cond_14d

    .line 869
    invoke-static {v5, v7}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    move-result v40

    if-eqz v40, :cond_129

    .line 880
    .end local v0    # "ipProto":B
    .end local v5    # "udpSrcPort":S
    .end local v6    # "ipVersion":I
    .end local v7    # "udpDstPort":S
    .end local v8    # "ipTotalLength":S
    .end local v27    # "ipIdentification":S
    .end local v28    # "ipFlags":B
    .end local v30    # "ipFragOffset":B
    .end local v31    # "ipTTL":B
    .end local v34    # "ipChksm":S
    .end local v35    # "ipDiffServicesField":B
    .end local v36    # "udpLen":S
    .end local v37    # "udpChkSum":S
    .end local v38    # "ipTypeAndLength":B
    .end local v39    # "optionWords":I
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    goto/16 :goto_1b0

    .line 874
    .restart local v0    # "ipProto":B
    .restart local v5    # "udpSrcPort":S
    .restart local v6    # "ipVersion":I
    .restart local v7    # "udpDstPort":S
    .restart local v8    # "ipTotalLength":S
    .restart local v27    # "ipIdentification":S
    .restart local v28    # "ipFlags":B
    .restart local v30    # "ipFragOffset":B
    .restart local v31    # "ipTTL":B
    .restart local v34    # "ipChksm":S
    .restart local v35    # "ipDiffServicesField":B
    .restart local v36    # "udpLen":S
    .restart local v37    # "udpChkSum":S
    .restart local v38    # "ipTypeAndLength":B
    .restart local v39    # "optionWords":I
    :cond_129
    move/from16 v41, v8

    new-instance v8, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 874
    .end local v8    # "ipTotalLength":S
    .local v41, "ipTotalLength":S
    move-object/from16 v42, v9

    sget v9, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 874
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .local v42, "vendorInfo":Ljava/lang/String;
    move-object/from16 v43, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 875
    .end local v10    # "expectedParams":[B
    .local v43, "expectedParams":[B
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    const/16 v25, 0x0

    aput-object v23, v10, v25

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    move/from16 v44, v5

    const/4 v5, 0x1

    aput-object v23, v10, v5

    .end local v5    # "udpSrcPort":S
    .local v44, "udpSrcPort":S
    const-string v5, "Unexpected UDP ports %d->%d"

    invoke-direct {v8, v9, v5, v10}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 880
    .end local v0    # "ipProto":B
    .end local v6    # "ipVersion":I
    .end local v7    # "udpDstPort":S
    .end local v27    # "ipIdentification":S
    .end local v28    # "ipFlags":B
    .end local v30    # "ipFragOffset":B
    .end local v31    # "ipTTL":B
    .end local v34    # "ipChksm":S
    .end local v35    # "ipDiffServicesField":B
    .end local v36    # "udpLen":S
    .end local v37    # "udpChkSum":S
    .end local v38    # "ipTypeAndLength":B
    .end local v39    # "optionWords":I
    .end local v41    # "ipTotalLength":S
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "expectedParams":[B
    .end local v44    # "udpSrcPort":S
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v10    # "expectedParams":[B
    :cond_14d
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    goto :goto_1b0

    .line 847
    .restart local v0    # "ipProto":B
    .local v5, "ipTypeAndLength":B
    .restart local v6    # "ipVersion":I
    .restart local v8    # "ipTotalLength":S
    .restart local v27    # "ipIdentification":S
    .restart local v28    # "ipFlags":B
    .restart local v30    # "ipFragOffset":B
    .restart local v31    # "ipTTL":B
    .restart local v34    # "ipChksm":S
    .restart local v35    # "ipDiffServicesField":B
    :cond_153
    move/from16 v38, v5

    move/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    .line 847
    .end local v5    # "ipTypeAndLength":B
    .end local v8    # "ipTotalLength":S
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .end local v10    # "expectedParams":[B
    .restart local v38    # "ipTypeAndLength":B
    .restart local v41    # "ipTotalLength":S
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "expectedParams":[B
    new-instance v7, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v8, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 848
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v5, v10

    const-string v9, "Protocol not UDP: %d"

    invoke-direct {v7, v8, v9, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 829
    .end local v0    # "ipProto":B
    .end local v27    # "ipIdentification":S
    .end local v28    # "ipFlags":B
    .end local v30    # "ipFragOffset":B
    .end local v31    # "ipTTL":B
    .end local v34    # "ipChksm":S
    .end local v35    # "ipDiffServicesField":B
    .end local v38    # "ipTypeAndLength":B
    .end local v41    # "ipTotalLength":S
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "expectedParams":[B
    .restart local v5    # "ipTypeAndLength":B
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v10    # "expectedParams":[B
    :cond_16f
    move/from16 v38, v5

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 829
    .end local v5    # "ipTypeAndLength":B
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .end local v10    # "expectedParams":[B
    .restart local v38    # "ipTypeAndLength":B
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "expectedParams":[B
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v7, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 830
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    const-string v8, "Invalid IP version %d"

    invoke-direct {v0, v7, v8, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 822
    .end local v6    # "ipVersion":I
    .end local v38    # "ipTypeAndLength":B
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "expectedParams":[B
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v10    # "expectedParams":[B
    :cond_189
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v10, 0x0

    .line 822
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .end local v10    # "expectedParams":[B
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "expectedParams":[B
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v5, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "L3 packet too short, %d < %d"

    invoke-direct {v0, v5, v6, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 880
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "expectedParams":[B
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v10    # "expectedParams":[B
    :cond_1ac
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    .line 880
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .end local v10    # "expectedParams":[B
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "expectedParams":[B
    :goto_1b0
    const/16 v0, 0xec

    const/4 v5, 0x2

    if-gt v2, v5, :cond_5b6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v0, :cond_5b6

    .line 886
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 887
    .local v5, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 888
    .local v6, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v7, v0, 0xff

    .line 889
    .local v7, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 890
    .local v8, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 891
    .local v9, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 892
    .local v10, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    .line 893
    .local v27, "bootpFlags":S
    const v0, 0x8000

    and-int v0, v27, v0

    if-eqz v0, :cond_1e2

    const/4 v0, 0x1

    goto :goto_1e3

    :cond_1e2
    const/4 v0, 0x0

    :goto_1e3
    move/from16 v52, v0

    .line 894
    .local v52, "broadcast":Z
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 897
    .local v2, "ipv4addr":[B
    :try_start_1e8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 898
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v47, v0

    check-cast v47, Ljava/net/Inet4Address;

    .line 899
    .local v47, "clientIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 900
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Ljava/net/Inet4Address;

    .line 901
    .local v48, "yourIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 902
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Ljava/net/Inet4Address;

    .line 903
    .local v49, "nextIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 904
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v50, v0

    check-cast v50, Ljava/net/Inet4Address;
    :try_end_214
    .catch Ljava/net/UnknownHostException; {:try_start_1e8 .. :try_end_214} :catch_58f

    .line 908
    .local v50, "relayIp":Ljava/net/Inet4Address;
    nop

    .line 907
    nop

    .line 916
    const/16 v0, 0x10

    if-le v7, v0, :cond_21d

    .line 917
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v7, v0

    .line 920
    :cond_21d
    move/from16 v53, v5

    new-array v5, v7, [B

    .line 921
    .local v5, "clientMac":[B
    .local v53, "type":B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 924
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/16 v28, 0x10

    rsub-int/lit8 v28, v7, 0x10

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x40

    add-int/lit16 v0, v0, 0x80

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 929
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move/from16 v54, v6

    const/4 v6, 0x4

    if-lt v0, v6, :cond_573

    .line 933
    .end local v6    # "hwType":B
    .local v54, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 934
    .local v6, "dhcpMagicCookie":I
    const v0, 0x63825363

    if-ne v6, v0, :cond_546

    .line 941
    move-object/from16 v58, v2

    move/from16 v59, v6

    move/from16 v55, v7

    move/from16 v56, v8

    move-object v2, v11

    move-object v6, v12

    move-object/from16 v57, v13

    move-object v8, v14

    move-object v7, v15

    move-object/from16 v14, v16

    move-object/from16 v63, v17

    move-object/from16 v12, v18

    move-object/from16 v65, v19

    move-object/from16 v66, v20

    move/from16 v11, v21

    move-object/from16 v64, v24

    move-object/from16 v62, v26

    move-object/from16 v15, v29

    move-object/from16 v61, v32

    move-object/from16 v60, v42

    move-object/from16 v13, v43

    const/4 v0, 0x1

    .end local v16    # "mtu":Ljava/lang/Short;
    .end local v17    # "maxMessageSize":Ljava/lang/Short;
    .end local v18    # "leaseTime":Ljava/lang/Integer;
    .end local v19    # "T1":Ljava/lang/Integer;
    .end local v20    # "T2":Ljava/lang/Integer;
    .end local v21    # "dhcpType":B
    .end local v24    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v26    # "netMask":Ljava/net/Inet4Address;
    .end local v29    # "message":Ljava/lang/String;
    .end local v32    # "vendorId":Ljava/lang/String;
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "expectedParams":[B
    .local v0, "notFinishedOptions":Z
    .local v2, "hostName":Ljava/lang/String;
    .local v6, "domainName":Ljava/lang/String;
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .local v8, "bcAddr":Ljava/net/Inet4Address;
    .local v11, "dhcpType":B
    .local v12, "leaseTime":Ljava/lang/Integer;
    .local v13, "expectedParams":[B
    .local v14, "mtu":Ljava/lang/Short;
    .local v15, "message":Ljava/lang/String;
    .local v55, "addrLen":I
    .local v56, "hops":B
    .local v57, "ipDst":Ljava/net/Inet4Address;
    .local v58, "ipv4addr":[B
    .local v59, "dhcpMagicCookie":I
    .local v60, "vendorInfo":Ljava/lang/String;
    .local v61, "vendorId":Ljava/lang/String;
    .local v62, "netMask":Ljava/net/Inet4Address;
    .local v63, "maxMessageSize":Ljava/lang/Short;
    .local v64, "serverIdentifier":Ljava/net/Inet4Address;
    .local v65, "T1":Ljava/lang/Integer;
    .local v66, "T2":Ljava/lang/Integer;
    :goto_26e
    move/from16 v16, v0

    .line 943
    .end local v0    # "notFinishedOptions":Z
    .local v16, "notFinishedOptions":Z
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move-object/from16 v67, v13

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    .line 943
    .end local v13    # "expectedParams":[B
    .local v67, "expectedParams":[B
    move-object/from16 v68, v7

    const/4 v7, -0x1

    .line 943
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .local v68, "requestedIp":Ljava/net/Inet4Address;
    if-ge v0, v13, :cond_42e

    if-eqz v16, :cond_42e

    .line 944
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    move v13, v0

    .line 946
    .local v13, "optionType":B
    if-ne v13, v7, :cond_28d

    .line 947
    const/4 v0, 0x0

    .line 1057
    .end local v16    # "notFinishedOptions":Z
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v0    # "notFinishedOptions":Z
    .restart local v7    # "requestedIp":Ljava/net/Inet4Address;
    :goto_289
    move-object/from16 v7, v68

    goto/16 :goto_3b2

    .line 948
    .end local v0    # "notFinishedOptions":Z
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v16    # "notFinishedOptions":Z
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    :cond_28d
    if-nez v13, :cond_292

    .line 1057
    move/from16 v0, v16

    goto :goto_289

    .line 951
    :cond_292
    :try_start_292
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_296
    .catch Ljava/nio/BufferUnderflowException; {:try_start_292 .. :try_end_296} :catch_416

    and-int/lit16 v0, v0, 0xff

    .line 952
    .local v0, "optionLen":I
    const/4 v7, 0x0

    .line 954
    .local v7, "expectedLen":I
    move/from16 v69, v7

    .line 954
    .end local v7    # "expectedLen":I
    .local v69, "expectedLen":I
    const/4 v7, 0x3

    move-object/from16 v70, v14

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3a2

    .line 954
    .end local v14    # "mtu":Ljava/lang/Short;
    .local v70, "mtu":Ljava/lang/Short;
    if-eq v13, v7, :cond_391

    const/4 v14, 0x6

    if-eq v13, v14, :cond_383

    const/16 v14, 0xc

    if-eq v13, v14, :cond_378

    const/16 v14, 0xf

    if-eq v13, v14, :cond_36d

    const/16 v14, 0x1a

    if-eq v13, v14, :cond_35e

    const/16 v14, 0x1c

    if-eq v13, v14, :cond_355

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_34a

    packed-switch v13, :pswitch_data_5dc

    packed-switch v13, :pswitch_data_5e4

    .line 1039
    const/4 v14, 0x0

    .line 1039
    .local v14, "i":I
    :goto_2c1
    if-ge v14, v0, :cond_2cb

    .line 1040
    add-int/lit8 v69, v69, 0x1

    .line 1041
    :try_start_2c5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 1039
    add-int/lit8 v14, v14, 0x1

    goto :goto_2c1

    .line 1045
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .end local v69    # "expectedLen":I
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .local v14, "expectedLen":I
    :cond_2cb
    :goto_2cb
    move-object/from16 v7, v68

    :goto_2cd
    move/from16 v14, v69

    goto/16 :goto_3ac

    .line 1028
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .end local v14    # "expectedLen":I
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v69    # "expectedLen":I
    :pswitch_2d1
    new-array v14, v0, [B

    .line 1029
    .local v14, "id":[B
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1030
    move/from16 v69, v0

    .line 1031
    .end local v14    # "id":[B
    goto :goto_2cb

    .line 1023
    :pswitch_2d9
    move/from16 v69, v0

    .line 1025
    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v61, v17

    .line 1026
    goto :goto_2cb

    .line 1019
    :pswitch_2e3
    const/16 v69, 0x4

    .line 1020
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v66, v14

    .line 1021
    goto :goto_2cb

    .line 1015
    :pswitch_2f0
    const/16 v69, 0x4

    .line 1016
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v65, v14

    .line 1017
    goto :goto_2cb

    .line 1011
    :pswitch_2fd
    const/16 v69, 0x2

    .line 1012
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    move-object/from16 v63, v14

    .line 1013
    goto :goto_2cb

    .line 1007
    :pswitch_30a
    move/from16 v69, v0

    .line 1008
    const/4 v14, 0x0

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 1009
    goto :goto_2cb

    .line 1002
    :pswitch_314
    new-array v14, v0, [B
    :try_end_316
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c5 .. :try_end_316} :catch_414

    .line 1003
    .end local v67    # "expectedParams":[B
    .local v14, "expectedParams":[B
    :try_start_316
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_319
    .catch Ljava/nio/BufferUnderflowException; {:try_start_316 .. :try_end_319} :catch_31f

    .line 1004
    move/from16 v69, v0

    .line 1005
    nop

    .line 1045
    move-object/from16 v67, v14

    goto :goto_2cb

    .line 1053
    .end local v0    # "optionLen":I
    .end local v69    # "expectedLen":I
    :catch_31f
    move-exception v0

    move-object/from16 v67, v14

    goto/16 :goto_419

    .line 998
    .end local v14    # "expectedParams":[B
    .restart local v0    # "optionLen":I
    .restart local v67    # "expectedParams":[B
    .restart local v69    # "expectedLen":I
    :pswitch_324
    :try_start_324
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    move-object/from16 v64, v14

    .line 999
    const/16 v69, 0x4

    .line 1000
    goto :goto_2cb

    .line 994
    :pswitch_32d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    move v11, v14

    .line 995
    const/16 v69, 0x1

    .line 996
    goto :goto_2cb

    .line 990
    :pswitch_335
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v12, v14

    .line 991
    const/16 v69, 0x4

    .line 992
    goto :goto_2cb

    .line 986
    :pswitch_341
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    .line 987
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .local v14, "requestedIp":Ljava/net/Inet4Address;
    const/16 v69, 0x4

    .line 988
    nop

    .line 1045
    move-object v7, v14

    goto :goto_2cd

    .line 1033
    .end local v14    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    :cond_34a
    move/from16 v69, v0

    .line 1035
    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v60, v17

    .line 1036
    goto/16 :goto_2cb

    .line 982
    :cond_355
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    move-object v8, v14

    .line 983
    const/16 v69, 0x4

    .line 984
    goto/16 :goto_2cb

    .line 974
    :cond_35e
    const/16 v69, 0x2

    .line 975
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    .line 976
    .end local v70    # "mtu":Ljava/lang/Short;
    .local v14, "mtu":Ljava/lang/Short;
    nop

    .line 1045
    move-object/from16 v70, v14

    goto/16 :goto_2cb

    .line 978
    .end local v14    # "mtu":Ljava/lang/Short;
    .restart local v70    # "mtu":Ljava/lang/Short;
    :cond_36d
    move/from16 v69, v0

    .line 979
    const/4 v14, 0x0

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    .line 980
    goto/16 :goto_2cb

    .line 970
    :cond_378
    const/4 v14, 0x0

    move/from16 v69, v0

    .line 971
    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    .line 972
    goto/16 :goto_2cb

    .line 965
    :cond_383
    const/4 v14, 0x0

    .line 965
    .end local v69    # "expectedLen":I
    .local v14, "expectedLen":I
    :goto_384
    if-ge v14, v0, :cond_39f

    .line 966
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v14, v14, 0x4

    const/4 v7, 0x3

    goto :goto_384

    .line 960
    .end local v14    # "expectedLen":I
    .restart local v69    # "expectedLen":I
    :cond_391
    const/4 v7, 0x0

    .line 960
    .end local v69    # "expectedLen":I
    .local v7, "expectedLen":I
    :goto_392
    if-ge v7, v0, :cond_39e

    .line 961
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v7, v7, 0x4

    goto :goto_392

    .line 1045
    :cond_39e
    move v14, v7

    .line 1045
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .restart local v14    # "expectedLen":I
    :cond_39f
    move-object/from16 v7, v68

    goto :goto_3ac

    .line 956
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .end local v14    # "expectedLen":I
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v69    # "expectedLen":I
    :cond_3a2
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v7
    :try_end_3a6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_324 .. :try_end_3a6} :catch_414

    move-object/from16 v62, v7

    .line 957
    const/16 v69, 0x4

    .line 958
    goto/16 :goto_2cb

    .line 1045
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .end local v69    # "expectedLen":I
    .restart local v7    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v14    # "expectedLen":I
    :goto_3ac
    if-ne v14, v0, :cond_3b7

    .line 1057
    .end local v0    # "optionLen":I
    .end local v14    # "expectedLen":I
    move/from16 v0, v16

    move-object/from16 v14, v70

    .line 1058
    .end local v13    # "optionType":B
    .end local v16    # "notFinishedOptions":Z
    .end local v70    # "mtu":Ljava/lang/Short;
    .local v0, "notFinishedOptions":Z
    .local v14, "mtu":Ljava/lang/Short;
    :goto_3b2
    nop

    .line 941
    move-object/from16 v13, v67

    goto/16 :goto_26e

    .line 1046
    .local v0, "optionLen":I
    .restart local v13    # "optionType":B
    .local v14, "expectedLen":I
    .restart local v16    # "notFinishedOptions":Z
    .restart local v70    # "mtu":Ljava/lang/Short;
    :cond_3b7
    move-object/from16 v71, v2

    :try_start_3b9
    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 1046
    .end local v2    # "hostName":Ljava/lang/String;
    .local v71, "hostName":Ljava/lang/String;
    invoke-static {v2, v13}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v2
    :try_end_3bf
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3b9 .. :try_end_3bf} :catch_408

    .line 1048
    .local v2, "errorCode":I
    move-object/from16 v72, v6

    :try_start_3c1
    new-instance v6, Landroid/net/dhcp/DhcpPacket$ParseException;
    :try_end_3c3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3c1 .. :try_end_3c3} :catch_3fc

    .line 1048
    .end local v6    # "domainName":Ljava/lang/String;
    .local v72, "domainName":Ljava/lang/String;
    move-object/from16 v73, v7

    :try_start_3c5
    const-string v7, "Invalid length %d for option %d, expected %d"
    :try_end_3c7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3c5 .. :try_end_3c7} :catch_3f2

    .line 1048
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .local v73, "requestedIp":Ljava/net/Inet4Address;
    move-object/from16 v74, v8

    const/4 v8, 0x3

    :try_start_3ca
    new-array v8, v8, [Ljava/lang/Object;

    .line 1050
    .end local v8    # "bcAddr":Ljava/net/Inet4Address;
    .local v74, "bcAddr":Ljava/net/Inet4Address;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v8, v18

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v8, v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v8, v18

    invoke-direct {v6, v2, v7, v8}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_3e8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3ca .. :try_end_3e8} :catch_3e8

    .line 1053
    .end local v0    # "optionLen":I
    .end local v2    # "errorCode":I
    .end local v14    # "expectedLen":I
    :catch_3e8
    move-exception v0

    move-object/from16 v2, v71

    move-object/from16 v6, v72

    move-object/from16 v68, v73

    move-object/from16 v8, v74

    goto :goto_419

    .line 1053
    .end local v74    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v8    # "bcAddr":Ljava/net/Inet4Address;
    :catch_3f2
    move-exception v0

    move-object/from16 v74, v8

    move-object/from16 v2, v71

    move-object/from16 v6, v72

    move-object/from16 v68, v73

    .line 1053
    .end local v8    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v74    # "bcAddr":Ljava/net/Inet4Address;
    goto :goto_419

    .line 1053
    .end local v73    # "requestedIp":Ljava/net/Inet4Address;
    .end local v74    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v7    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v8    # "bcAddr":Ljava/net/Inet4Address;
    :catch_3fc
    move-exception v0

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v2, v71

    move-object/from16 v6, v72

    move-object/from16 v68, v73

    .line 1053
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .end local v8    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v73    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v74    # "bcAddr":Ljava/net/Inet4Address;
    goto :goto_419

    .line 1053
    .end local v72    # "domainName":Ljava/lang/String;
    .end local v73    # "requestedIp":Ljava/net/Inet4Address;
    .end local v74    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v6    # "domainName":Ljava/lang/String;
    .restart local v7    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v8    # "bcAddr":Ljava/net/Inet4Address;
    :catch_408
    move-exception v0

    move-object/from16 v72, v6

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v2, v71

    move-object/from16 v68, v73

    .line 1053
    .end local v6    # "domainName":Ljava/lang/String;
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .end local v8    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v72    # "domainName":Ljava/lang/String;
    .restart local v73    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v74    # "bcAddr":Ljava/net/Inet4Address;
    goto :goto_419

    .line 1053
    .end local v71    # "hostName":Ljava/lang/String;
    .end local v72    # "domainName":Ljava/lang/String;
    .end local v73    # "requestedIp":Ljava/net/Inet4Address;
    .end local v74    # "bcAddr":Ljava/net/Inet4Address;
    .local v2, "hostName":Ljava/lang/String;
    .restart local v6    # "domainName":Ljava/lang/String;
    .restart local v8    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    :catch_414
    move-exception v0

    goto :goto_419

    .line 1053
    .end local v70    # "mtu":Ljava/lang/Short;
    .local v14, "mtu":Ljava/lang/Short;
    :catch_416
    move-exception v0

    move-object/from16 v70, v14

    .line 1054
    .end local v14    # "mtu":Ljava/lang/Short;
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    .restart local v70    # "mtu":Ljava/lang/Short;
    :goto_419
    sget v7, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    invoke-static {v7, v13}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v7

    .line 1056
    .local v7, "errorCode":I
    new-instance v14, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v75, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1056
    .end local v2    # "hostName":Ljava/lang/String;
    .local v75, "hostName":Ljava/lang/String;
    move-object/from16 v76, v0

    const-string v0, "BufferUnderflowException"

    .line 1056
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .local v76, "e":Ljava/nio/BufferUnderflowException;
    invoke-direct {v14, v7, v0, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v14

    .line 1062
    .end local v7    # "errorCode":I
    .end local v13    # "optionType":B
    .end local v70    # "mtu":Ljava/lang/Short;
    .end local v75    # "hostName":Ljava/lang/String;
    .end local v76    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "hostName":Ljava/lang/String;
    .restart local v14    # "mtu":Ljava/lang/Short;
    :cond_42e
    move-object/from16 v70, v14

    .line 1062
    .end local v14    # "mtu":Ljava/lang/Short;
    .restart local v70    # "mtu":Ljava/lang/Short;
    if-eq v11, v7, :cond_51b

    const/16 v0, 0x8

    if-eq v11, v0, :cond_4bb

    packed-switch v11, :pswitch_data_5fa

    .line 1098
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v7, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 1099
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const-string v14, "Unimplemented DHCP type %d"

    invoke-direct {v0, v7, v14, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1088
    :pswitch_44e
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move-object/from16 v44, v0

    move/from16 v45, v9

    move/from16 v46, v10

    move-object/from16 v51, v5

    invoke-direct/range {v44 .. v51}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1091
    .local v0, "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_4b0

    .line 1084
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_45c
    new-instance v0, Landroid/net/dhcp/DhcpAckPacket;

    move-object/from16 v33, v0

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v52

    move-object/from16 v37, v22

    move-object/from16 v38, v47

    move-object/from16 v39, v48

    move-object/from16 v40, v5

    invoke-direct/range {v33 .. v40}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1086
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_4b0

    .line 1079
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_472
    new-instance v0, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v47

    move-object/from16 v38, v48

    move-object/from16 v39, v49

    move-object/from16 v40, v50

    move-object/from16 v41, v5

    invoke-direct/range {v34 .. v41}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1082
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_4b0

    .line 1075
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_488
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v47

    move-object/from16 v38, v5

    move/from16 v39, v52

    invoke-direct/range {v34 .. v39}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1077
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_4b0

    .line 1071
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_49a
    new-instance v0, Landroid/net/dhcp/DhcpOfferPacket;

    move-object/from16 v33, v0

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v52

    move-object/from16 v37, v22

    move-object/from16 v38, v47

    move-object/from16 v39, v48

    move-object/from16 v40, v5

    invoke-direct/range {v33 .. v40}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1073
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    nop

    .line 1099
    .end local v52    # "broadcast":Z
    .local v13, "broadcast":Z
    :goto_4b0
    move/from16 v13, v52

    goto :goto_4d3

    .line 1067
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .end local v13    # "broadcast":Z
    .restart local v52    # "broadcast":Z
    :pswitch_4b3
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    move/from16 v13, v52

    invoke-direct {v0, v9, v10, v5, v13}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1069
    .end local v52    # "broadcast":Z
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v13    # "broadcast":Z
    goto :goto_4d3

    .line 1093
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .end local v13    # "broadcast":Z
    .restart local v52    # "broadcast":Z
    :cond_4bb
    move/from16 v13, v52

    .line 1093
    .end local v52    # "broadcast":Z
    .restart local v13    # "broadcast":Z
    new-instance v0, Landroid/net/dhcp/DhcpInformPacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v47

    move-object/from16 v38, v48

    move-object/from16 v39, v49

    move-object/from16 v40, v50

    move-object/from16 v41, v5

    invoke-direct/range {v34 .. v41}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1096
    .restart local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    nop

    .line 1099
    :goto_4d3
    nop

    .line 1102
    iput-object v8, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1103
    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1104
    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1105
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1106
    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1107
    iput-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1108
    iput-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1109
    move-object/from16 v14, v70

    iput-object v14, v0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    .line 1110
    .end local v70    # "mtu":Ljava/lang/Short;
    .restart local v14    # "mtu":Ljava/lang/Short;
    move-object/from16 v7, v68

    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1111
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    move-object/from16 v77, v2

    move-object/from16 v2, v67

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1112
    .end local v67    # "expectedParams":[B
    .local v2, "expectedParams":[B
    .local v77, "hostName":Ljava/lang/String;
    move-object/from16 v78, v2

    move-object/from16 v2, v64

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1113
    .end local v64    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v2, "serverIdentifier":Ljava/net/Inet4Address;
    .local v78, "expectedParams":[B
    move-object/from16 v79, v2

    move-object/from16 v2, v62

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1114
    .end local v62    # "netMask":Ljava/net/Inet4Address;
    .local v2, "netMask":Ljava/net/Inet4Address;
    .local v79, "serverIdentifier":Ljava/net/Inet4Address;
    move-object/from16 v80, v2

    move-object/from16 v2, v63

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1115
    .end local v63    # "maxMessageSize":Ljava/lang/Short;
    .local v2, "maxMessageSize":Ljava/lang/Short;
    .local v80, "netMask":Ljava/net/Inet4Address;
    move-object/from16 v81, v2

    move-object/from16 v2, v65

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1116
    .end local v65    # "T1":Ljava/lang/Integer;
    .local v2, "T1":Ljava/lang/Integer;
    .local v81, "maxMessageSize":Ljava/lang/Short;
    move-object/from16 v82, v2

    move-object/from16 v2, v66

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1117
    .end local v66    # "T2":Ljava/lang/Integer;
    .local v2, "T2":Ljava/lang/Integer;
    .local v82, "T1":Ljava/lang/Integer;
    move-object/from16 v83, v2

    move-object/from16 v2, v61

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1118
    .end local v61    # "vendorId":Ljava/lang/String;
    .local v2, "vendorId":Ljava/lang/String;
    .local v83, "T2":Ljava/lang/Integer;
    move-object/from16 v84, v2

    move-object/from16 v2, v60

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1119
    .end local v60    # "vendorInfo":Ljava/lang/String;
    .local v2, "vendorInfo":Ljava/lang/String;
    .local v84, "vendorId":Ljava/lang/String;
    return-object v0

    .line 1064
    .end local v0    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .end local v7    # "requestedIp":Ljava/net/Inet4Address;
    .end local v13    # "broadcast":Z
    .end local v14    # "mtu":Ljava/lang/Short;
    .end local v77    # "hostName":Ljava/lang/String;
    .end local v78    # "expectedParams":[B
    .end local v79    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v80    # "netMask":Ljava/net/Inet4Address;
    .end local v81    # "maxMessageSize":Ljava/lang/Short;
    .end local v82    # "T1":Ljava/lang/Integer;
    .end local v83    # "T2":Ljava/lang/Integer;
    .end local v84    # "vendorId":Ljava/lang/String;
    .local v2, "hostName":Ljava/lang/String;
    .restart local v52    # "broadcast":Z
    .restart local v60    # "vendorInfo":Ljava/lang/String;
    .restart local v61    # "vendorId":Ljava/lang/String;
    .restart local v62    # "netMask":Ljava/net/Inet4Address;
    .restart local v63    # "maxMessageSize":Ljava/lang/Short;
    .restart local v64    # "serverIdentifier":Ljava/net/Inet4Address;
    .restart local v65    # "T1":Ljava/lang/Integer;
    .restart local v66    # "T2":Ljava/lang/Integer;
    .restart local v67    # "expectedParams":[B
    .restart local v68    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v70    # "mtu":Ljava/lang/Short;
    :cond_51b
    move-object/from16 v77, v2

    move/from16 v13, v52

    move-object/from16 v2, v60

    move-object/from16 v84, v61

    move-object/from16 v80, v62

    move-object/from16 v81, v63

    move-object/from16 v79, v64

    move-object/from16 v82, v65

    move-object/from16 v83, v66

    move-object/from16 v78, v67

    move-object/from16 v7, v68

    move-object/from16 v14, v70

    .end local v52    # "broadcast":Z
    .end local v60    # "vendorInfo":Ljava/lang/String;
    .end local v61    # "vendorId":Ljava/lang/String;
    .end local v62    # "netMask":Ljava/net/Inet4Address;
    .end local v63    # "maxMessageSize":Ljava/lang/Short;
    .end local v64    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v65    # "T1":Ljava/lang/Integer;
    .end local v66    # "T2":Ljava/lang/Integer;
    .end local v67    # "expectedParams":[B
    .end local v68    # "requestedIp":Ljava/net/Inet4Address;
    .end local v70    # "mtu":Ljava/lang/Short;
    .local v2, "vendorInfo":Ljava/lang/String;
    .restart local v7    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v13    # "broadcast":Z
    .restart local v14    # "mtu":Ljava/lang/Short;
    .restart local v77    # "hostName":Ljava/lang/String;
    .restart local v78    # "expectedParams":[B
    .restart local v79    # "serverIdentifier":Ljava/net/Inet4Address;
    .restart local v80    # "netMask":Ljava/net/Inet4Address;
    .restart local v81    # "maxMessageSize":Ljava/lang/Short;
    .restart local v82    # "T1":Ljava/lang/Integer;
    .restart local v83    # "T2":Ljava/lang/Integer;
    .restart local v84    # "vendorId":Ljava/lang/String;
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v85, v2

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 1064
    .end local v2    # "vendorInfo":Ljava/lang/String;
    .local v85, "vendorInfo":Ljava/lang/String;
    move-object/from16 v86, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1064
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v86, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    move-object/from16 v87, v4

    const-string v4, "No DHCP message type option"

    .line 1064
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v87, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    invoke-direct {v0, v2, v4, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 935
    .end local v55    # "addrLen":I
    .end local v56    # "hops":B
    .end local v57    # "ipDst":Ljava/net/Inet4Address;
    .end local v58    # "ipv4addr":[B
    .end local v59    # "dhcpMagicCookie":I
    .end local v77    # "hostName":Ljava/lang/String;
    .end local v78    # "expectedParams":[B
    .end local v79    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v80    # "netMask":Ljava/net/Inet4Address;
    .end local v81    # "maxMessageSize":Ljava/lang/Short;
    .end local v82    # "T1":Ljava/lang/Integer;
    .end local v83    # "T2":Ljava/lang/Integer;
    .end local v84    # "vendorId":Ljava/lang/String;
    .end local v85    # "vendorInfo":Ljava/lang/String;
    .end local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v2, "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v6, "dhcpMagicCookie":I
    .local v7, "addrLen":I
    .local v8, "hops":B
    .local v11, "hostName":Ljava/lang/String;
    .local v12, "domainName":Ljava/lang/String;
    .local v13, "ipDst":Ljava/net/Inet4Address;
    .local v14, "bcAddr":Ljava/net/Inet4Address;
    .local v15, "requestedIp":Ljava/net/Inet4Address;
    .local v16, "mtu":Ljava/lang/Short;
    .restart local v17    # "maxMessageSize":Ljava/lang/Short;
    .restart local v18    # "leaseTime":Ljava/lang/Integer;
    .restart local v19    # "T1":Ljava/lang/Integer;
    .restart local v20    # "T2":Ljava/lang/Integer;
    .restart local v21    # "dhcpType":B
    .restart local v24    # "serverIdentifier":Ljava/net/Inet4Address;
    .restart local v26    # "netMask":Ljava/net/Inet4Address;
    .restart local v29    # "message":Ljava/lang/String;
    .restart local v32    # "vendorId":Ljava/lang/String;
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "expectedParams":[B
    .restart local v52    # "broadcast":Z
    :cond_546
    move-object/from16 v58, v2

    move-object/from16 v86, v3

    move-object/from16 v87, v4

    move/from16 v59, v6

    move/from16 v55, v7

    move/from16 v56, v8

    move-object/from16 v57, v13

    move/from16 v13, v52

    const/4 v3, 0x0

    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v6    # "dhcpMagicCookie":I
    .end local v7    # "addrLen":I
    .end local v8    # "hops":B
    .end local v52    # "broadcast":Z
    .local v13, "broadcast":Z
    .restart local v55    # "addrLen":I
    .restart local v56    # "hops":B
    .restart local v57    # "ipDst":Ljava/net/Inet4Address;
    .restart local v58    # "ipv4addr":[B
    .restart local v59    # "dhcpMagicCookie":I
    .restart local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 937
    move/from16 v7, v59

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 937
    .end local v59    # "dhcpMagicCookie":I
    .local v7, "dhcpMagicCookie":I
    aput-object v8, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const-string v0, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v2, v4, v0, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 930
    .end local v55    # "addrLen":I
    .end local v56    # "hops":B
    .end local v57    # "ipDst":Ljava/net/Inet4Address;
    .end local v58    # "ipv4addr":[B
    .end local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v2    # "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v7, "addrLen":I
    .restart local v8    # "hops":B
    .local v13, "ipDst":Ljava/net/Inet4Address;
    .restart local v52    # "broadcast":Z
    :cond_573
    move-object/from16 v58, v2

    move-object/from16 v86, v3

    move-object/from16 v87, v4

    move/from16 v55, v7

    move/from16 v56, v8

    move-object/from16 v57, v13

    move/from16 v13, v52

    const/4 v3, 0x0

    .line 930
    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v7    # "addrLen":I
    .end local v8    # "hops":B
    .end local v52    # "broadcast":Z
    .local v13, "broadcast":Z
    .restart local v55    # "addrLen":I
    .restart local v56    # "hops":B
    .restart local v57    # "ipDst":Ljava/net/Inet4Address;
    .restart local v58    # "ipv4addr":[B
    .restart local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "not a DHCP message"

    invoke-direct {v0, v2, v4, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 905
    .end local v47    # "clientIp":Ljava/net/Inet4Address;
    .end local v48    # "yourIp":Ljava/net/Inet4Address;
    .end local v49    # "nextIp":Ljava/net/Inet4Address;
    .end local v50    # "relayIp":Ljava/net/Inet4Address;
    .end local v53    # "type":B
    .end local v54    # "hwType":B
    .end local v55    # "addrLen":I
    .end local v56    # "hops":B
    .end local v57    # "ipDst":Ljava/net/Inet4Address;
    .end local v58    # "ipv4addr":[B
    .end local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v2    # "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v5, "type":B
    .local v6, "hwType":B
    .restart local v7    # "addrLen":I
    .restart local v8    # "hops":B
    .local v13, "ipDst":Ljava/net/Inet4Address;
    .restart local v52    # "broadcast":Z
    :catch_58f
    move-exception v0

    move-object/from16 v58, v2

    move-object/from16 v86, v3

    move-object/from16 v87, v4

    move/from16 v53, v5

    move/from16 v54, v6

    move/from16 v56, v8

    move-object/from16 v57, v13

    move/from16 v13, v52

    .line 906
    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v5    # "type":B
    .end local v6    # "hwType":B
    .end local v8    # "hops":B
    .end local v52    # "broadcast":Z
    .local v0, "ex":Ljava/net/UnknownHostException;
    .local v13, "broadcast":Z
    .restart local v53    # "type":B
    .restart local v54    # "hwType":B
    .restart local v56    # "hops":B
    .restart local v57    # "ipDst":Ljava/net/Inet4Address;
    .restart local v58    # "ipv4addr":[B
    .restart local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 907
    move-object/from16 v5, v58

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    .line 907
    .end local v58    # "ipv4addr":[B
    .local v5, "ipv4addr":[B
    const/4 v8, 0x0

    aput-object v6, v4, v8

    const-string v6, "Invalid IPv4 address: %s"

    invoke-direct {v2, v3, v6, v4}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 881
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    .end local v5    # "ipv4addr":[B
    .end local v7    # "addrLen":I
    .end local v9    # "transactionId":I
    .end local v10    # "secs":S
    .end local v27    # "bootpFlags":S
    .end local v53    # "type":B
    .end local v54    # "hwType":B
    .end local v56    # "hops":B
    .end local v57    # "ipDst":Ljava/net/Inet4Address;
    .end local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v13, "ipDst":Ljava/net/Inet4Address;
    :cond_5b6
    move-object/from16 v86, v3

    move-object/from16 v87, v4

    move-object/from16 v57, v13

    .line 881
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v13    # "ipDst":Ljava/net/Inet4Address;
    .restart local v57    # "ipDst":Ljava/net/Inet4Address;
    .restart local v86    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v87    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 883
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v2, v3, v0, v4}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_5dc
    .packed-switch 0x32
        :pswitch_341
        :pswitch_335
    .end packed-switch

    :pswitch_data_5e4
    .packed-switch 0x35
        :pswitch_32d
        :pswitch_324
        :pswitch_314
        :pswitch_30a
        :pswitch_2fd
        :pswitch_2f0
        :pswitch_2e3
        :pswitch_2d9
        :pswitch_2d1
    .end packed-switch

    :pswitch_data_5fa
    .packed-switch 0x1
        :pswitch_4b3
        :pswitch_49a
        :pswitch_488
        :pswitch_472
        :pswitch_45c
        :pswitch_44e
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .registers 9
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .line 1127
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1129
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_b
    invoke-static {v1, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v2
    :try_end_f
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_b .. :try_end_f} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object v2

    .line 1132
    :catch_10
    move-exception v2

    .line 1133
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v0}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1130
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    throw v0
.end method

.method private getHostname()Ljava/lang/String;
    .registers 2

    .line 648
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-object v0

    .line 649
    :cond_7
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .registers 3

    .line 643
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    return-object v0

    .line 644
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intAbs(S)I
    .registers 2
    .param p0, "v"    # S

    .line 494
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .registers 3
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .line 738
    const/16 v0, 0x43

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .registers 3
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .line 734
    const/16 v0, 0x44

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 6
    .param p0, "mac"    # [B

    .line 669
    const-string v0, ""

    .line 671
    .local v0, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_4f

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_4c

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    .end local v2    # "hexString":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 683
    .end local v1    # "i":I
    :cond_4f
    return-object v0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .line 716
    new-array v0, p1, [B

    .line 717
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 718
    array-length v1, v0

    .line 719
    .local v1, "length":I
    if-nez p2, :cond_14

    .line 724
    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 725
    aget-byte v2, v0, v1

    if-nez v2, :cond_11

    .line 726
    goto :goto_14

    .line 724
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 730
    :cond_14
    :goto_14
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "result":Ljava/net/Inet4Address;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 699
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 702
    :try_start_7
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_d} :catch_f

    move-object v0, v2

    .line 707
    goto :goto_11

    .line 703
    :catch_f
    move-exception v2

    .line 706
    .local v2, "ex":Ljava/net/UnknownHostException;
    const/4 v0, 0x0

    .line 709
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    :goto_11
    return-object v0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 659
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 660
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 661
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "hn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 663
    :cond_23
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .registers 28
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    .line 377
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    .line 378
    .local v3, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    .line 379
    .local v4, "srcIpArray":[B
    const/4 v5, 0x0

    .line 380
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .line 381
    .local v6, "ipLengthOffset":I
    const/4 v7, 0x0

    .line 382
    .local v7, "ipChecksumOffset":I
    const/4 v8, 0x0

    .line 383
    .local v8, "endIpHeader":I
    const/4 v9, 0x0

    .line 384
    .local v9, "udpHeaderOffset":I
    const/4 v10, 0x0

    .line 385
    .local v10, "udpLengthOffset":I
    const/4 v11, 0x0

    .line 387
    .local v11, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 388
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 390
    if-nez v1, :cond_2f

    .line 391
    sget-object v12, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    sget v12, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v12, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 399
    :cond_2f
    const/16 v13, 0x40

    const/16 v14, 0x10

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-gt v1, v15, :cond_88

    .line 400
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 401
    const/16 v15, 0x45

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 404
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 406
    const/16 v15, 0x4000

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    const/16 v15, 0x11

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 410
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 417
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 418
    move/from16 v15, p5

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    move/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 421
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 423
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_8c

    .line 427
    :cond_88
    move/from16 v13, p4

    move/from16 v15, p5

    :goto_8c
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    iget-object v14, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v14, v14

    int-to-byte v14, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    iget v14, v0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    iget-short v14, v0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 434
    if-eqz p8, :cond_af

    .line 435
    const/16 v12, -0x8000

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b3

    .line 437
    :cond_af
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 440
    :goto_b3
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 443
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    move-object/from16 v17, v3

    iget-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .end local v3    # "destIpArray":[B
    .local v17, "destIpArray":[B
    array-length v3, v3

    const/16 v16, 0x10

    rsub-int/lit8 v3, v3, 0x10

    add-int/2addr v12, v3

    const/16 v3, 0x40

    add-int/2addr v12, v3

    add-int/lit16 v12, v12, 0x80

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 449
    const v3, 0x63825363

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 453
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v12, 0x1

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_107

    .line 454
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    :cond_107
    if-gt v1, v12, :cond_163

    .line 461
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v9

    int-to-short v3, v3

    .line 462
    .local v3, "udpLen":S
    invoke-virtual {v2, v10, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 465
    const/4 v12, 0x0

    .line 469
    .local v12, "udpSeed":I
    add-int/lit8 v1, v7, 0x2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    .line 470
    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    .line 471
    add-int/lit8 v1, v7, 0x6

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    .line 472
    add-int/lit8 v1, v7, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    .line 475
    const/16 v1, 0x11

    add-int/2addr v12, v1

    .line 476
    add-int/2addr v12, v3

    .line 478
    nop

    .line 480
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 478
    invoke-direct {v0, v2, v12, v9, v1}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v11, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v5

    int-to-short v1, v1

    invoke-virtual {v2, v6, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 484
    nop

    .line 485
    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v5, v8}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    .line 484
    invoke-virtual {v2, v7, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 487
    .end local v3    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_163
    return-void
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .registers 6

    .line 363
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 364
    .local v0, "clientId":[B
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 365
    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 366
    return-object v0
.end method

.method public getClientMac()[B
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .registers 5

    .line 1187
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_35

    .line 1189
    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_24

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_24

    .line 1190
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1192
    :cond_24
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 1188
    :cond_35
    :goto_35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 2

    .line 349
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .registers 7

    .line 1141
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1142
    .local v0, "ipAddress":Ljava/net/Inet4Address;
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 1143
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1144
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1145
    return-object v2

    .line 1150
    :cond_16
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v1, :cond_23

    .line 1152
    :try_start_1a
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_20} :catch_21

    .line 1156
    .local v1, "prefixLength":I
    goto :goto_27

    .line 1153
    .end local v1    # "prefixLength":I
    :catch_21
    move-exception v1

    .line 1155
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    .line 1158
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_23
    invoke-static {v0}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v1

    .line 1161
    .local v1, "prefixLength":I
    :goto_27
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1163
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_2c
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_33} :catch_8a

    .line 1166
    nop

    .line 1168
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_47

    .line 1169
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1172
    :cond_47
    iget-object v2, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1174
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v2, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1175
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1176
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_66

    :cond_65
    const/4 v2, -0x1

    :goto_66
    iput v2, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1177
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v2, :cond_87

    const/16 v2, 0x500

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-gt v2, v5, :cond_87

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    const/16 v5, 0x5dc

    if-gt v2, v5, :cond_87

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    nop

    :cond_87
    iput v4, v3, Landroid/net/DhcpResults;->mtu:I

    .line 1179
    return-object v3

    .line 1164
    :catch_8a
    move-exception v4

    .line 1165
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
