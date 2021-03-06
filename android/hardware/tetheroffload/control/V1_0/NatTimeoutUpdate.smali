.class public final Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
.super Ljava/lang/Object;
.source "NatTimeoutUpdate.java"


# instance fields
.field public final dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

.field public proto:I

.field public final src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-direct {v0}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;-><init>()V

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    .line 6
    new-instance v0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-direct {v0}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;-><init>()V

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 66
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 70
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 72
    new-instance v5, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    invoke-direct {v5}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;-><init>()V

    .line 73
    .local v5, "_hidl_vec_element":Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5    # "_hidl_vec_element":Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 78
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 103
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    mul-int/lit8 v5, v2, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 105
    .end local v2    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 108
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 12
    return v0

    .line 14
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 15
    return v1

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    if-eq v2, v3, :cond_11

    .line 18
    return v1

    .line 20
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    .line 21
    .local v2, "other":Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
    iget-object v3, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v4, v2, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 22
    return v1

    .line 24
    :cond_1f
    iget-object v3, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v4, v2, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 25
    return v1

    .line 27
    :cond_2a
    iget v3, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    iget v4, v2, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    if-eq v3, v4, :cond_31

    .line 28
    return v1

    .line 30
    :cond_31
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    .line 36
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 83
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    .line 86
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 56
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ".src = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .dst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .proto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    invoke-static {v1}, Landroid/hardware/tetheroffload/control/V1_0/NetworkProtocol;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 113
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 116
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 89
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 92
    return-void
.end method
