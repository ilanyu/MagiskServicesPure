.class public Landroid/net/netlink/StructNfGenMsg;
.super Ljava/lang/Object;
.source "StructNfGenMsg.java"


# static fields
.field public static final NFNETLINK_V0:I = 0x0

.field public static final STRUCT_SIZE:I = 0x4


# instance fields
.field public final nfgen_family:B

.field public final res_id:S

.field public final version:B


# direct methods
.method public constructor <init>(B)V
    .registers 3
    .param p1, "family"    # B

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-byte p1, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    .line 42
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    .line 43
    iput-short v0, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    .line 44
    return-void
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 47
    iget-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    iget-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    iget-short v0, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method
