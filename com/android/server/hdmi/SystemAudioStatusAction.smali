.class final Lcom/android/server/hdmi/SystemAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioStatusAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_AUDIO_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemAudioStatusAction"


# instance fields
.field private final mAvrAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 42
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    .line 43
    iput-object p3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SystemAudioStatusAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/SystemAudioStatusAction;

    .line 30
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    return-void
.end method

.method private finishWithCallback(I)V
    .registers 5
    .param p1, "returnCode"    # I

    .line 107
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v0, :cond_12

    .line 109
    :try_start_4
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 112
    goto :goto_12

    .line 110
    :catch_a
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAudioStatusAction"

    const-string v2, "Failed to invoke callback."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finish()V

    .line 115
    return-void
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 94
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 95
    .local v0, "params":[B
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    .line 96
    .local v1, "mute":Z
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v2

    .line 97
    .local v2, "volume":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v3

    xor-int/2addr v3, v1

    if-nez v3, :cond_25

    .line 101
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    const/16 v4, 0x43

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    .line 103
    :cond_25
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    .line 104
    return-void
.end method

.method private handleSendGiveAudioStatusFailure()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 71
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result v2

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    .line 75
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    .line 76
    return-void
.end method

.method private sendGiveAudioStatus()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioStatusAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioStatusAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioStatusAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 64
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .line 119
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 120
    return-void

    .line 123
    :cond_5
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    .line 124
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 80
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_1c

    .line 84
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_18

    .line 90
    return v1

    .line 86
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 87
    return v2

    .line 81
    :cond_1c
    :goto_1c
    return v1
.end method

.method start()Z
    .registers 4

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    .line 49
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/SystemAudioStatusAction;->addTimer(II)V

    .line 50
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendGiveAudioStatus()V

    .line 51
    return v0
.end method
