.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;
.super Ljava/lang/Object;
.source "FingerprintFingerId.java"


# instance fields
.field public fid:I

.field public gid:I


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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 62
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 63
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 64
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 63
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 67
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 69
    new-instance v5, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-direct {v5}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;-><init>()V

    .line 70
    .local v5, "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;
    mul-int/lit8 v6, v4, 0x8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v5    # "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 75
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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 95
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 96
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    mul-int/lit8 v5, v2, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 101
    .end local v2    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 104
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 105
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 15
    return v0

    .line 17
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 18
    return v1

    .line 20
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    if-eq v2, v3, :cond_11

    .line 21
    return v1

    .line 23
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    .line 24
    .local v2, "other":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    if-eq v3, v4, :cond_1b

    .line 25
    return v1

    .line 27
    :cond_1b
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    if-eq v3, v4, :cond_22

    .line 28
    return v1

    .line 30
    :cond_22
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 80
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    .line 81
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    .line 82
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 53
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 54
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ".gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", .fid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 109
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->gid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->fid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 111
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 85
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 86
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 88
    return-void
.end method
