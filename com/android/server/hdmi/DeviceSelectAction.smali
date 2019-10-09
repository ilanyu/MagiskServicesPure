.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "target"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 77
    iput-object p3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v1

    .line 79
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceSelectAction;
    .param p1, "x1"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .registers 6
    .param p1, "powerStatus"    # I

    .line 130
    const/16 v0, 0x1388

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_3e

    .line 158
    const/4 v0, 0x0

    return v0

    .line 135
    :pswitch_8
    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_16

    .line 136
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 137
    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_19

    .line 139
    :cond_16
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 141
    :goto_19
    return v1

    .line 150
    :pswitch_1a
    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_29

    .line 151
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 152
    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_2c

    .line 154
    :cond_29
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 156
    :goto_2c
    return v1

    .line 143
    :pswitch_2d
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    if-nez v0, :cond_35

    .line 144
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->turnOnDevice()V

    goto :goto_38

    .line 146
    :cond_35
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 148
    :goto_38
    return v1

    .line 132
    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 133
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_5

    .line 206
    return-void

    .line 209
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 212
    goto :goto_22

    .line 210
    :catch_b
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 106
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 107
    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    .line 175
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 179
    return-void
.end method

.method private turnOnDevice()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 166
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 167
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 168
    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4
    .param p1, "timeoutState"    # I

    .line 183
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    if-eq v0, p1, :cond_c

    .line 184
    const-string v0, "DeviceSelect"

    const-string v1, "Timer in a wrong state. Ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 187
    :cond_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 198
    :pswitch_12
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    goto :goto_32

    .line 189
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 190
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 192
    return-void

    .line 194
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 195
    nop

    .line 202
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 112
    return v2

    .line 114
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 115
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 117
    .local v1, "params":[B
    iget v3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    .line 126
    return v2

    .line 119
    :cond_1a
    const/16 v3, 0x90

    if-ne v0, v3, :cond_25

    .line 120
    aget-byte v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceSelectAction;->handleReportPowerStatus(I)Z

    move-result v2

    return v2

    .line 122
    :cond_25
    return v2
.end method

.method public start()Z
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
