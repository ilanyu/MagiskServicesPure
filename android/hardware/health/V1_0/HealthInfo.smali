.class public final Landroid/hardware/health/V1_0/HealthInfo;
.super Ljava/lang/Object;
.source "HealthInfo.java"


# instance fields
.field public batteryChargeCounter:I

.field public batteryCurrent:I

.field public batteryCycleCount:I

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

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
            "Landroid/hardware/health/V1_0/HealthInfo;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V1_0/HealthInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 184
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 185
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 186
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 185
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 189
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 191
    new-instance v5, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v5}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    .line 192
    .local v5, "_hidl_vec_element":Landroid/hardware/health/V1_0/HealthInfo;
    mul-int/lit8 v6, v4, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 193
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v5    # "_hidl_vec_element":Landroid/hardware/health/V1_0/HealthInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 197
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
            "Landroid/hardware/health/V1_0/HealthInfo;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V1_0/HealthInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 236
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 237
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 238
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 239
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x48

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 240
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 241
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/health/V1_0/HealthInfo;

    mul-int/lit8 v5, v2, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 243
    .end local v2    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 246
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 247
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 53
    return v0

    .line 55
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 56
    return v1

    .line 58
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V1_0/HealthInfo;

    if-eq v2, v3, :cond_11

    .line 59
    return v1

    .line 61
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/health/V1_0/HealthInfo;

    .line 62
    .local v2, "other":Landroid/hardware/health/V1_0/HealthInfo;
    iget-boolean v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iget-boolean v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eq v3, v4, :cond_1b

    .line 63
    return v1

    .line 65
    :cond_1b
    iget-boolean v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iget-boolean v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eq v3, v4, :cond_22

    .line 66
    return v1

    .line 68
    :cond_22
    iget-boolean v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eq v3, v4, :cond_29

    .line 69
    return v1

    .line 71
    :cond_29
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    if-eq v3, v4, :cond_30

    .line 72
    return v1

    .line 74
    :cond_30
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    if-eq v3, v4, :cond_37

    .line 75
    return v1

    .line 77
    :cond_37
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v3, v4, :cond_3e

    .line 78
    return v1

    .line 80
    :cond_3e
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    if-eq v3, v4, :cond_45

    .line 81
    return v1

    .line 83
    :cond_45
    iget-boolean v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-eq v3, v4, :cond_4c

    .line 84
    return v1

    .line 86
    :cond_4c
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v3, v4, :cond_53

    .line 87
    return v1

    .line 89
    :cond_53
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    if-eq v3, v4, :cond_5a

    .line 90
    return v1

    .line 92
    :cond_5a
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    if-eq v3, v4, :cond_61

    .line 93
    return v1

    .line 95
    :cond_61
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    if-eq v3, v4, :cond_68

    .line 96
    return v1

    .line 98
    :cond_68
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    if-eq v3, v4, :cond_6f

    .line 99
    return v1

    .line 101
    :cond_6f
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    if-eq v3, v4, :cond_76

    .line 102
    return v1

    .line 104
    :cond_76
    iget v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v3, v4, :cond_7d

    .line 105
    return v1

    .line 107
    :cond_7d
    iget-object v3, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 108
    return v1

    .line 110
    :cond_88
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 115
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 123
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 131
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 115
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p2

    .line 202
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 203
    const-wide/16 v4, 0x1

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 204
    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 205
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 206
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 207
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 208
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 209
    const-wide/16 v4, 0x14

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 210
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 211
    const-wide/16 v4, 0x1c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 212
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 213
    const-wide/16 v4, 0x24

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 214
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 215
    const-wide/16 v4, 0x2c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 216
    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 217
    const-wide/16 v4, 0x38

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 219
    iget-object v6, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 220
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 219
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 224
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 175
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 176
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 177
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ".chargerAcOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .chargerUsbOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .chargerWirelessOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", .maxChargingCurrent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", .maxChargingVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", .batteryStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-static {v1}, Landroid/hardware/health/V1_0/BatteryStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", .batteryHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v1}, Landroid/hardware/health/V1_0/BatteryHealth;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", .batteryPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", .batteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", .batteryVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", .batteryTemperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", .batteryCurrent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", .batteryCycleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", .batteryFullCharge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", .batteryChargeCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", .batteryTechnology = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 251
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 253
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 254
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 255
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 256
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 257
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 258
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 259
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 260
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 262
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 263
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 264
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 265
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 266
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 267
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 227
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 228
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 230
    return-void
.end method
