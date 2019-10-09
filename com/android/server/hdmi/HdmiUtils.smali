.class final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# static fields
.field private static final ADDRESS_TO_TYPE:[I

.field private static final DEFAULT_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    .line 50
    const-string v1, "TV"

    const-string v2, "Recorder_1"

    const-string v3, "Recorder_2"

    const-string v4, "Tuner_1"

    const-string v5, "Playback_1"

    const-string v6, "AudioSystem"

    const-string v7, "Tuner_2"

    const-string v8, "Tuner_3"

    const-string v9, "Playback_2"

    const-string v10, "Recorder_3"

    const-string v11, "Tuner_4"

    const-string v12, "Playback_3"

    const-string v13, "Reserved_1"

    const-string v14, "Reserved_2"

    const-string v15, "Secondary_TV"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    return-void

    :array_2e
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asImmutableList([I)Ljava/util/List;
    .registers 6
    .param p0, "is"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 191
    .local v3, "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 193
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .registers 6
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p1, "expectedAddress"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 137
    .local v0, "src":I
    if-eq v0, p1, :cond_29

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source [Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    return v1

    .line 141
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 11
    .param p0, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p1, "newPowerStatus"    # I

    .line 316
    new-instance v8, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 317
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    .line 318
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 316
    return-object v8
.end method

.method static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 173
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x7f

    .line 174
    .local v1, "volume":I
    if-ltz v1, :cond_f

    const/16 v2, 0x64

    if-ge v2, v1, :cond_10

    .line 175
    :cond_f
    const/4 v1, -0x1

    .line 177
    :cond_10
    return v1
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "address"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 108
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method static getTypeFromAddress(I)I
    .registers 2
    .param p0, "address"    # I

    .line 90
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    aget v0, v0, p0

    return v0

    .line 93
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .registers 5
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_14

    .line 269
    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    .line 270
    .local v1, "nibble":I
    if-eqz v1, :cond_11

    .line 271
    const v2, 0xfff0

    shl-int/2addr v2, v0

    .line 272
    .local v2, "mask":I
    and-int/2addr p1, v2

    .line 273
    goto :goto_14

    .line 268
    .end local v1    # "nibble":I
    .end local v2    # "mask":I
    :cond_11
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 276
    .end local v0    # "i":I
    :cond_14
    :goto_14
    if-nez p1, :cond_18

    .line 277
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_18
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    return v0
.end method

.method static isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 162
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_e

    const/4 v1, 0x1

    nop

    :cond_e
    return v1
.end method

.method static isInActiveRoutingPath(II)Z
    .registers 6
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .line 296
    const/16 v0, 0xc

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_19

    .line 297
    shr-int v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    .line 298
    .local v1, "nibbleActive":I
    if-nez v1, :cond_b

    .line 299
    goto :goto_19

    .line 301
    :cond_b
    shr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    .line 302
    .local v2, "nibbleNew":I
    if-nez v2, :cond_12

    .line 303
    goto :goto_19

    .line 305
    :cond_12
    if-eq v1, v2, :cond_16

    .line 306
    const/4 v3, 0x0

    return v3

    .line 296
    .end local v1    # "nibbleActive":I
    .end local v2    # "nibbleNew":I
    :cond_16
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    .line 309
    .end local v0    # "i":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method static isValidAddress(I)Z
    .registers 2
    .param p0, "address"    # I

    .line 79
    if-ltz p0, :cond_8

    const/16 v0, 0xe

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 236
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 239
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 240
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 243
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 245
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    nop

    :cond_c
    return v1
.end method

.method static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 228
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 230
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 232
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method static threeBytesToInt([B)I
    .registers 3
    .param p0, "data"    # [B

    .line 224
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([B)I
    .registers 3
    .param p0, "data"    # [B

    .line 203
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([BI)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 214
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static verifyAddressType(II)V
    .registers 6
    .param p0, "logicalAddress"    # I
    .param p1, "deviceType"    # I

    .line 120
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    .line 121
    .local v0, "actualDeviceType":I
    if-ne v0, p1, :cond_7

    .line 125
    return-void

    .line 122
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device type missmatch:[Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
