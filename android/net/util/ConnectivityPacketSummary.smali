.class public Landroid/net/util/ConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "ConnectivityPacketSummary.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/ConnectivityPacketSummary;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/MacAddress;[BI)V
    .registers 7
    .param p1, "macAddr"    # Landroid/net/MacAddress;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    .line 63
    iput-object p2, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    .line 64
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    .line 65
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    .local v0, "sj":Ljava/util/StringJoiner;
    invoke-direct {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2
    .param p0, "ipv4"    # Ljava/nio/ByteBuffer;

    .line 346
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2
    .param p0, "ipv6"    # Ljava/nio/ByteBuffer;

    .line 350
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 5
    .param p0, "ip"    # Ljava/nio/ByteBuffer;
    .param p1, "byteLength"    # I

    .line 354
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_9

    goto :goto_1d

    .line 356
    :cond_9
    new-array v0, p1, [B

    .line 357
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 359
    :try_start_f
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 360
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_17} :catch_18

    return-object v2

    .line 361
    .end local v1    # "addr":Ljava/net/InetAddress;
    :catch_18
    move-exception v1

    .line 362
    .local v1, "uhe":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "unknown"

    return-object v2

    .line 354
    .end local v0    # "bytes":[B
    .end local v1    # "uhe":Ljava/net/UnknownHostException;
    :cond_1d
    :goto_1d
    const-string v0, "invalid"

    return-object v0
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 9
    .param p0, "mac"    # Ljava/nio/ByteBuffer;

    .line 367
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    goto :goto_30

    .line 369
    :cond_a
    new-array v0, v1, [B

    .line 370
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 371
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 372
    .local v1, "printableBytes":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 373
    .local v3, "i":I
    array-length v4, v0

    :goto_16
    if-ge v2, v4, :cond_27

    aget-byte v5, v0, v2

    .local v5, "b":B
    add-int/lit8 v6, v3, 0x1

    .local v6, "i":I
    new-instance v7, Ljava/lang/Byte;

    invoke-direct {v7, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v7, v1, v3

    .end local v3    # "i":I
    .end local v5    # "b":B
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_16

    .line 375
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_27
    const-string v2, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 376
    .local v2, "MAC48_FORMAT":Ljava/lang/String;
    const-string v4, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 367
    .end local v0    # "bytes":[B
    .end local v1    # "printableBytes":[Ljava/lang/Object;
    .end local v2    # "MAC48_FORMAT":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_30
    :goto_30
    const-string v0, "invalid"

    return-object v0
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .registers 8
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 116
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1f

    .line 117
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    return-void

    .line 121
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    const/16 v2, 0x800

    if-ne v0, v2, :cond_a4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_55

    goto :goto_a4

    .line 129
    :cond_55
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .line 131
    .local v0, "opCode":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "senderHwAddr":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "senderIPv4":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 134
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "targetIPv4":Ljava/lang/String;
    if-ne v0, v1, :cond_83

    .line 137
    const-string/jumbo v1, "who-has"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a3

    .line 138
    :cond_83
    const/4 v1, 0x2

    if-ne v0, v1, :cond_95

    .line 139
    const-string/jumbo v1, "reply"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a3

    .line 141
    :cond_95
    const-string/jumbo v1, "unknown opcode"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 143
    :goto_a3
    return-void

    .line 125
    .end local v0    # "opCode":I
    .end local v2    # "senderHwAddr":Ljava/lang/String;
    .end local v3    # "senderIPv4":Ljava/lang/String;
    .end local v4    # "targetIPv4":Ljava/lang/String;
    :cond_a4
    :goto_a4
    const-string/jumbo v0, "unexpected header"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    return-void
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .registers 5
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v0

    .line 339
    .local v0, "dhcpPacket":Landroid/net/dhcp/DhcpPacket;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_10
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_10} :catch_11

    .line 342
    goto :goto_27

    .line 340
    .end local v0    # "dhcpPacket":Landroid/net/dhcp/DhcpPacket;
    :catch_11
    move-exception v0

    .line 341
    .local v0, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 343
    .end local v0    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    :goto_27
    return-void
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .registers 7
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 79
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1f

    .line 80
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    return-void

    .line 84
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 86
    .local v0, "srcMac":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "TX"

    goto :goto_42

    :cond_40
    const-string v2, "RX"

    :goto_42
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 89
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 91
    .local v1, "dstMac":Ljava/nio/ByteBuffer;
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v1}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .line 95
    .local v2, "etherType":I
    const/16 v3, 0x800

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x806

    if-eq v2, v3, :cond_a0

    const v3, 0x86dd

    if-eq v2, v3, :cond_97

    .line 110
    const-string v3, "ethtype"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_b2

    .line 105
    :cond_97
    const-string v3, "ipv6"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    .line 107
    goto :goto_b2

    .line 97
    :cond_a0
    const-string v3, "arp"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    .line 99
    goto :goto_b2

    .line 101
    :cond_a9
    const-string v3, "ipv4"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    .line 103
    nop

    .line 113
    :goto_b2
    return-void
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .registers 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 213
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 214
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 215
    return-void

    .line 218
    :cond_1e
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 219
    .local v0, "icmp6Type":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 220
    .local v1, "icmp6Code":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 222
    packed-switch v0, :pswitch_data_80

    .line 240
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 241
    const-string v2, "code"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7e

    .line 236
    :pswitch_56
    const-string/jumbo v2, "na"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 237
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 238
    goto :goto_7e

    .line 232
    :pswitch_60
    const-string/jumbo v2, "ns"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 233
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 234
    goto :goto_7e

    .line 228
    :pswitch_6a
    const-string/jumbo v2, "ra"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 229
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    .line 230
    goto :goto_7e

    .line 224
    :pswitch_74
    const-string/jumbo v2, "rs"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 225
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    .line 226
    nop

    .line 244
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x85
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .registers 8
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 284
    :goto_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_82

    .line 285
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 286
    .local v0, "ndType":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 287
    .local v1, "ndLength":I
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, -0x2

    .line 288
    .local v2, "ndBytes":I
    if-ltz v2, :cond_7c

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_2d

    goto :goto_7c

    .line 292
    :cond_2d
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 294
    .local v3, "position":I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_5a

    packed-switch v0, :pswitch_data_84

    goto :goto_74

    .line 300
    :pswitch_3a
    const-string/jumbo v4, "tlla"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 301
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 302
    goto :goto_74

    .line 296
    :pswitch_4a
    const-string/jumbo v4, "slla"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 297
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 298
    goto :goto_74

    .line 304
    :cond_5a
    const-string/jumbo v4, "mtu"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 305
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 306
    .local v4, "reserved":S
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 307
    nop

    .line 313
    .end local v4    # "reserved":S
    :goto_74
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    .end local v0    # "ndType":I
    .end local v1    # "ndLength":I
    .end local v2    # "ndBytes":I
    .end local v3    # "position":I
    goto :goto_0

    .line 289
    .restart local v0    # "ndType":I
    .restart local v1    # "ndLength":I
    .restart local v2    # "ndBytes":I
    :cond_7c
    :goto_7c
    const-string v3, "<malformed>"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 290
    nop

    .line 315
    .end local v0    # "ndType":I
    .end local v1    # "ndLength":I
    .end local v2    # "ndBytes":I
    :cond_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3a
    .end packed-switch
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .registers 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 269
    const/4 v0, 0x4

    .line 270
    .local v0, "RESERVED":I
    const/16 v1, 0x14

    .line 271
    .local v1, "minReq":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_22

    .line 272
    const-string/jumbo v2, "runt:"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 273
    return-void

    .line 276
    :cond_22
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 278
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 279
    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .registers 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 258
    const/16 v0, 0xc

    .line 259
    .local v0, "FLAGS_AND_TIMERS":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_21

    .line 260
    const-string/jumbo v1, "runt:"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    return-void

    .line 264
    :cond_21
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 266
    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .registers 6
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 247
    const/4 v0, 0x4

    .line 248
    .local v0, "RESERVED":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1f

    .line 249
    const-string/jumbo v1, "runt:"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 250
    return-void

    .line 253
    :cond_1f
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 255
    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .registers 12
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 146
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_f

    .line 147
    const-string/jumbo v0, "runt"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    return-void

    .line 151
    :cond_f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 152
    .local v0, "startOfIpLayer":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x4

    .line 153
    .local v1, "ipv4HeaderLength":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_b6

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_33

    goto/16 :goto_b6

    .line 158
    :cond_33
    add-int v2, v0, v1

    .line 160
    .local v2, "startOfTransportLayer":I
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v3

    .line 162
    .local v3, "flagsAndFragment":I
    and-int/lit16 v4, v3, 0x1fff

    if-eqz v4, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    .line 164
    .local v4, "isFragment":Z
    :goto_4d
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v0, 0x9

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v5

    .line 167
    .local v5, "protocol":I
    iget-object v6, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v0, 0xc

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v6, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "srcAddr":Ljava/lang/String;
    iget-object v7, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v0, 0x10

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v7, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "dstAddr":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    iget-object v8, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    sget v8, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v5, v8, :cond_a0

    .line 177
    const-string/jumbo v8, "udp"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    if-eqz v4, :cond_9c

    const-string v8, "fragment"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_b5

    .line 179
    :cond_9c
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_b5

    .line 181
    :cond_a0
    const-string/jumbo v8, "proto"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v8

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    if-eqz v4, :cond_b5

    const-string v8, "fragment"

    invoke-virtual {p1, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    :cond_b5
    :goto_b5
    return-void

    .line 155
    .end local v2    # "startOfTransportLayer":I
    .end local v3    # "flagsAndFragment":I
    .end local v4    # "isFragment":Z
    .end local v5    # "protocol":I
    .end local v6    # "srcAddr":Ljava/lang/String;
    .end local v7    # "dstAddr":Ljava/lang/String;
    :cond_b6
    :goto_b6
    const-string/jumbo v2, "runt:"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    return-void
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .registers 8
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 187
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1f

    .line 188
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    return-void

    .line 192
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 194
    .local v0, "startOfIpLayer":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 197
    .local v1, "protocol":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "srcAddr":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "dstAddr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v1, v4, :cond_6a

    .line 205
    const-string v4, "icmp6"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 206
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    goto :goto_78

    .line 208
    :cond_6a
    const-string/jumbo v4, "proto"

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 210
    :goto_78
    return-void
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .registers 7
    .param p1, "sj"    # Ljava/util/StringJoiner;

    .line 318
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1f

    .line 319
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 320
    return-void

    .line 323
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 324
    .local v0, "previous":I
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v1

    .line 325
    .local v1, "srcPort":I
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .line 326
    .local v2, "dstPort":I
    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 328
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    const/16 v3, 0x44

    if-eq v1, v3, :cond_5b

    if-ne v2, v3, :cond_63

    .line 330
    :cond_5b
    const-string v3, "dhcp4"

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 331
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 333
    :cond_63
    return-void
.end method

.method public static summarize(Landroid/net/MacAddress;[B)Ljava/lang/String;
    .registers 3
    .param p0, "hwaddr"    # Landroid/net/MacAddress;
    .param p1, "buffer"    # [B

    .line 50
    array-length v0, p1

    invoke-static {p0, p1, v0}, Landroid/net/util/ConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;
    .registers 4
    .param p0, "macAddr"    # Landroid/net/MacAddress;
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 56
    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 57
    :cond_5
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 58
    new-instance v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;-><init>(Landroid/net/MacAddress;[BI)V

    invoke-virtual {v0}, Landroid/net/util/ConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object v0
.end method
