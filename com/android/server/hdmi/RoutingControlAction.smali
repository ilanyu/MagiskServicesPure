.class final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RoutingControlAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x2

.field private static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoutingControlAction"

.field private static final TIMEOUT_REPORT_POWER_STATUS_MS:I = 0x3e8

.field private static final TIMEOUT_ROUTING_INFORMATION_MS:I = 0x3e8


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mCurrentRoutingPath:I

.field private final mNotifyInputChange:Z

.field private final mQueryDevicePowerStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "path"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 77
    iput-object p4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 79
    iput-boolean p3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    .line 84
    if-nez p4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/RoutingControlAction;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/RoutingControlAction;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->handlDevicePowerStatusAckResult(Z)V

    return-void
.end method

.method private finishWithCallback(I)V
    .registers 2
    .param p1, "result"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->invokeCallback(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->finish()V

    .line 153
    return-void
.end method

.method private getTvPowerStatus()I
    .registers 2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method private handlDevicePowerStatusAckResult(Z)V
    .registers 4
    .param p1, "acked"    # Z

    .line 194
    if-eqz p1, :cond_d

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 196
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    goto :goto_17

    .line 198
    :cond_d
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 202
    :goto_17
    return-void
.end method

.method private handleReportPowerStatus(I)V
    .registers 3
    .param p1, "devicePowerStatus"    # I

    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 123
    invoke-static {p1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 127
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 128
    return-void
.end method

.method private invokeCallback(I)V
    .registers 3
    .param p1, "result"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_5

    .line 206
    return-void

    .line 209
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 212
    goto :goto_c

    .line 210
    :catch_b
    move-exception v0

    .line 213
    :goto_c
    return-void
.end method

.method private static isPowerOnOrTransient(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 141
    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "address"    # I
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 191
    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 148
    return-void
.end method

.method private updateActiveInput()V
    .registers 4

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 132
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 133
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 134
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 5
    .param p1, "timeoutState"    # I

    .line 157
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-ne v0, p1, :cond_46

    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-nez v0, :cond_9

    goto :goto_46

    .line 161
    :cond_9
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_4e

    .line 186
    return-void

    .line 179
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 180
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 183
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 184
    return-void

    .line 163
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 164
    .local v1, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v1, :cond_3f

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    if-eqz v2, :cond_3f

    .line 165
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 166
    .local v0, "deviceLogicalAddress":I
    new-instance v2, Lcom/android/server/hdmi/RoutingControlAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RoutingControlAction$1;-><init>(Lcom/android/server/hdmi/RoutingControlAction;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 173
    .end local v0    # "deviceLogicalAddress":I
    goto :goto_45

    .line 174
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 175
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 177
    :goto_45
    return-void

    .line 158
    .end local v1    # "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_46
    :goto_46
    const-string v0, "CEC"

    const-string v1, "Timer in a wrong state. Ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 97
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 98
    .local v1, "params":[B
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    const/16 v2, 0x81

    if-ne v0, v2, :cond_2d

    .line 103
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    .line 104
    .local v2, "routingPath":I
    iget v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 105
    return v3

    .line 107
    :cond_1e
    iput v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 109
    const-class v4, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v4, p0}, Lcom/android/server/hdmi/RoutingControlAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 110
    iget v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 111
    return v3

    .line 112
    .end local v2    # "routingPath":I
    :cond_2d
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_41

    const/16 v2, 0x90

    if-ne v0, v2, :cond_41

    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v2, v2, v5

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->handleReportPowerStatus(I)V

    .line 115
    return v3

    .line 117
    :cond_41
    return v5
.end method

.method public start()Z
    .registers 4

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 90
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 91
    return v0
.end method
