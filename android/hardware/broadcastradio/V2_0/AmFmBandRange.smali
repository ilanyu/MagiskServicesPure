.class public final Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
.super Ljava/lang/Object;
.source "AmFmBandRange.java"


# instance fields
.field public lowerBound:I

.field public scanSpacing:I

.field public spacing:I

.field public upperBound:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 90
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 91
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 92
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 91
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 95
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 97
    new-instance v5, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    invoke-direct {v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;-><init>()V

    .line 98
    .local v5, "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    mul-int/lit8 v6, v4, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 103
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
            "Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 125
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 126
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 127
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 129
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    mul-int/lit8 v5, v2, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 131
    .end local v2    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 134
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 135
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 31
    return v0

    .line 33
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 34
    return v1

    .line 36
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    if-eq v2, v3, :cond_11

    .line 37
    return v1

    .line 39
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 40
    .local v2, "other":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v4, v2, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    if-eq v3, v4, :cond_1b

    .line 41
    return v1

    .line 43
    :cond_1b
    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v4, v2, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    if-eq v3, v4, :cond_22

    .line 44
    return v1

    .line 46
    :cond_22
    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    iget v4, v2, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    if-eq v3, v4, :cond_29

    .line 47
    return v1

    .line 49
    :cond_29
    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    iget v4, v2, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    if-eq v3, v4, :cond_30

    .line 50
    return v1

    .line 52
    :cond_30
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 108
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 109
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 110
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 111
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    .line 112
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 81
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 82
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ".lowerBound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .upperBound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .spacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .scanSpacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 139
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 141
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 142
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 143
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 115
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 116
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 118
    return-void
.end method
