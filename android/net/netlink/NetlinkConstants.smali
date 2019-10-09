.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alignedLengthOf(I)I
    .registers 2
    .param p0, "length"    # I

    .line 46
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_4
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final alignedLengthOf(S)I
    .registers 3
    .param p0, "length"    # S

    .line 41
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 42
    .local v0, "intLength":I
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    return v1
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 63
    if-nez p0, :cond_5

    const-string v0, "(null)"

    return-object v0

    .line 64
    :cond_5
    nop

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 64
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexify([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .line 58
    if-nez p0, :cond_5

    const-string v0, "(null)"

    return-object v0

    .line 59
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .registers 2
    .param p0, "family"    # I

    .line 51
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p0, v0, :cond_7

    const-string v0, "AF_INET"

    return-object v0

    .line 52
    :cond_7
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_e

    const-string v0, "AF_INET6"

    return-object v0

    .line 53
    :cond_e
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    if-ne p0, v0, :cond_15

    const-string v0, "AF_NETLINK"

    return-object v0

    .line 54
    :cond_15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .registers 3
    .param p0, "nlm_type"    # S

    .line 94
    const/16 v0, 0x44

    if-eq p0, v0, :cond_66

    packed-switch p0, :pswitch_data_6a

    packed-switch p0, :pswitch_data_76

    packed-switch p0, :pswitch_data_88

    packed-switch p0, :pswitch_data_92

    packed-switch p0, :pswitch_data_9c

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown RTM type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_2a
    const-string v0, "RTM_GETRULE"

    return-object v0

    .line 113
    :pswitch_2d
    const-string v0, "RTM_DELRULE"

    return-object v0

    .line 112
    :pswitch_30
    const-string v0, "RTM_NEWRULE"

    return-object v0

    .line 111
    :pswitch_33
    const-string v0, "RTM_GETNEIGH"

    return-object v0

    .line 110
    :pswitch_36
    const-string v0, "RTM_DELNEIGH"

    return-object v0

    .line 109
    :pswitch_39
    const-string v0, "RTM_NEWNEIGH"

    return-object v0

    .line 108
    :pswitch_3c
    const-string v0, "RTM_GETROUTE"

    return-object v0

    .line 107
    :pswitch_3f
    const-string v0, "RTM_DELROUTE"

    return-object v0

    .line 106
    :pswitch_42
    const-string v0, "RTM_NEWROUTE"

    return-object v0

    .line 105
    :pswitch_45
    const-string v0, "RTM_GETADDR"

    return-object v0

    .line 104
    :pswitch_48
    const-string v0, "RTM_DELADDR"

    return-object v0

    .line 103
    :pswitch_4b
    const-string v0, "RTM_NEWADDR"

    return-object v0

    .line 102
    :pswitch_4e
    const-string v0, "RTM_SETLINK"

    return-object v0

    .line 101
    :pswitch_51
    const-string v0, "RTM_GETLINK"

    return-object v0

    .line 100
    :pswitch_54
    const-string v0, "RTM_DELLINK"

    return-object v0

    .line 99
    :pswitch_57
    const-string v0, "RTM_NEWLINK"

    return-object v0

    .line 98
    :pswitch_5a
    const-string v0, "NLMSG_OVERRUN"

    return-object v0

    .line 97
    :pswitch_5d
    const-string v0, "NLMSG_DONE"

    return-object v0

    .line 96
    :pswitch_60
    const-string v0, "NLMSG_ERROR"

    return-object v0

    .line 95
    :pswitch_63
    const-string v0, "NLMSG_NOOP"

    return-object v0

    .line 115
    :cond_66
    const-string v0, "RTM_NEWNDUSEROPT"

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x10
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x18
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1c
        :pswitch_39
        :pswitch_36
        :pswitch_33
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x20
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method
