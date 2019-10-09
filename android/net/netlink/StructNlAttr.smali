.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_F_NESTED:I = 0x8000

.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 104
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 105
    return-void
.end method

.method public constructor <init>(SB)V
    .registers 5
    .param p1, "type"    # S
    .param p2, "value"    # B

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 108
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 110
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 111
    return-void
.end method

.method public constructor <init>(SI)V
    .registers 4
    .param p1, "type"    # S
    .param p2, "value"    # I

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 126
    return-void
.end method

.method public constructor <init>(SILjava/nio/ByteOrder;)V
    .registers 5
    .param p1, "type"    # S
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 129
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 130
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 132
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    return-void
.end method

.method public constructor <init>(SLjava/net/InetAddress;)V
    .registers 4
    .param p1, "type"    # S
    .param p2, "ip"    # Ljava/net/InetAddress;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 136
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 137
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 138
    return-void
.end method

.method public constructor <init>(SS)V
    .registers 4
    .param p1, "type"    # S
    .param p2, "value"    # S

    .line 114
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    .line 115
    return-void
.end method

.method public constructor <init>(SSLjava/nio/ByteOrder;)V
    .registers 5
    .param p1, "type"    # S
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 118
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 119
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 121
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    return-void
.end method

.method public varargs constructor <init>(S[Landroid/net/netlink/StructNlAttr;)V
    .registers 9
    .param p1, "type"    # S
    .param p2, "nested"    # [Landroid/net/netlink/StructNlAttr;

    .line 141
    invoke-direct {p0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 142
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "payloadLength":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "payloadLength":I
    .local v3, "payloadLength":I
    :goto_e
    if-ge v0, v1, :cond_1a

    aget-object v4, p2, v0

    .local v4, "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v5

    add-int/2addr v3, v5

    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 146
    :cond_1a
    new-array v0, v3, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 148
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "buf":Ljava/nio/ByteBuffer;
    array-length v1, p2

    :goto_24
    if-ge v2, v1, :cond_2e

    aget-object v4, p2, v2

    .line 150
    .restart local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4, v0}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 149
    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 152
    :cond_2e
    return-void
.end method

.method public static makeNestedType(S)S
    .registers 2
    .param p0, "type"    # S

    .line 41
    const v0, 0x8000

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .registers 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 75
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 76
    .local v0, "struct":Landroid/net/netlink/StructNlAttr;
    if-eqz v0, :cond_37

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_11

    goto :goto_37

    .line 80
    :cond_11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 81
    .local v1, "baseOffset":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-short v2, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 84
    .local v2, "valueLen":I
    add-int/lit8 v2, v2, -0x4

    .line 85
    if-lez v2, :cond_36

    .line 86
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 87
    iget-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    :cond_36
    return-object v0

    .line 77
    .end local v1    # "baseOffset":I
    .end local v2    # "valueLen":I
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .registers 7
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 49
    const/4 v0, 0x0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    goto :goto_41

    .line 52
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 55
    .local v1, "baseOffset":I
    new-instance v3, Landroid/net/netlink/StructNlAttr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 57
    .local v3, "struct":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 58
    .local v4, "originalOrder":Ljava/nio/ByteOrder;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    :try_start_23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_3c

    .line 63
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    nop

    .line 66
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge v5, v2, :cond_3b

    .line 69
    return-object v0

    .line 71
    :cond_3b
    return-object v3

    .line 63
    :catchall_3c
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    .line 50
    .end local v1    # "baseOffset":I
    .end local v3    # "struct":Landroid/net/netlink/StructNlAttr;
    .end local v4    # "originalOrder":Ljava/nio/ByteOrder;
    :cond_41
    :goto_41
    return-object v0
.end method

.method private setValue([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 199
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 200
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v0, v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x4

    add-int/2addr v1, v0

    int-to-short v0, v1

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 201
    return-void
.end method


# virtual methods
.method public getAlignedLength()I
    .registers 2

    .line 155
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_6
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 177
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 178
    :catch_d
    move-exception v0

    .line 179
    .local v0, "ignored":Ljava/net/UnknownHostException;
    return-object v1
.end method

.method public getValueAsInt(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 166
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    goto :goto_17

    .line 170
    :cond_e
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1

    .line 168
    :cond_17
    :goto_17
    return p1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 185
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 187
    .local v1, "originalPosition":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    :try_start_f
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 191
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_2f

    .line 193
    :cond_22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    nop

    .line 195
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    return-void

    .line 193
    :catchall_2f
    move-exception v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlAttr{ nla_len{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_type{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_value{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 208
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    return-object v0
.end method
