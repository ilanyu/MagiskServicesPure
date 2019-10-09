.class final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "NewDeviceAction.java"


# static fields
.field static final STATE_WAITING_FOR_DEVICE_VENDOR_ID:I = 0x2

.field static final STATE_WAITING_FOR_SET_OSD_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NewDeviceAction"


# instance fields
.field private final mDeviceLogicalAddress:I

.field private final mDevicePhysicalAddress:I

.field private final mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private mTimeoutRetry:I

.field private mVendorId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .registers 6
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "deviceLogicalAddress"    # I
    .param p3, "devicePhysicalAddress"    # I
    .param p4, "deviceType"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 67
    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 68
    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 69
    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 70
    const v0, 0xffffff

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 71
    return-void
.end method

.method private addDeviceInfo()V
    .registers 9

    .line 167
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 168
    const-string v0, "NewDeviceAction"

    const-string v1, "Device not found (%02x, %04x)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_2f
    iget-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 173
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 175
    :cond_3b
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    iget v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 179
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    .line 184
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_75

    .line 186
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 188
    :cond_75
    return-void
.end method

.method private mayProcessCommandIfCached(II)Z
    .registers 5
    .param p1, "destAddress"    # I
    .param p2, "opcode"    # I

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 143
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1

    .line 146
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private requestOsdName(Z)V
    .registers 4
    .param p1, "firstTry"    # Z

    .line 80
    if-eqz p1, :cond_5

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 83
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    .line 84
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v1, 0x47

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 85
    return-void

    .line 88
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 90
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    .line 91
    return-void
.end method

.method private requestVendorId(Z)V
    .registers 4
    .param p1, "firstTry"    # Z

    .line 150
    if-eqz p1, :cond_5

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 154
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    .line 156
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v1, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    return-void

    .line 160
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 162
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 6
    .param p1, "state"    # I

    .line 192
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eq v0, p1, :cond_9

    goto :goto_32

    .line 195
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1d

    .line 196
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge v3, v1, :cond_19

    .line 197
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 198
    return-void

    .line 201
    :cond_19
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    goto :goto_31

    .line 202
    :cond_1d
    const/4 v3, 0x2

    if-ne p1, v3, :cond_31

    .line 203
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge v3, v1, :cond_2b

    .line 204
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 205
    return-void

    .line 208
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 211
    :cond_31
    :goto_31
    return-void

    .line 193
    :cond_32
    :goto_32
    return-void
.end method

.method isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z
    .registers 4
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 214
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 100
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 101
    .local v1, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    .line 103
    .local v2, "params":[B
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/4 v4, 0x0

    if-eq v3, v1, :cond_12

    .line 104
    return v4

    .line 107
    :cond_12
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_53

    .line 108
    const/16 v3, 0x47

    if-ne v0, v3, :cond_44

    .line 110
    :try_start_1b
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_25

    .line 113
    goto :goto_40

    .line 111
    :catch_25
    move-exception v3

    .line 112
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "NewDeviceAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get OSD name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_40
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 115
    return v5

    .line 116
    :cond_44
    if-nez v0, :cond_7a

    .line 117
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    .line 118
    .local v3, "requestOpcode":I
    const/16 v6, 0x46

    if-ne v3, v6, :cond_52

    .line 119
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 120
    return v5

    .line 122
    .end local v3    # "requestOpcode":I
    :cond_52
    goto :goto_7a

    .line 123
    :cond_53
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7a

    .line 124
    const/16 v3, 0x87

    if-ne v0, v3, :cond_69

    .line 125
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v3

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 126
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 128
    return v5

    .line 129
    :cond_69
    if-nez v0, :cond_7a

    .line 130
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    .line 131
    .restart local v3    # "requestOpcode":I
    const/16 v6, 0x8c

    if-ne v3, v6, :cond_7a

    .line 132
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 134
    return v5

    .line 138
    .end local v3    # "requestOpcode":I
    :cond_7a
    :goto_7a
    return v4
.end method

.method public start()Z
    .registers 2

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 76
    return v0
.end method
