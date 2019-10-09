.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerStatusCounter:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 71
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 72
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 73
    return-void
.end method

.method private broadcastActiveSource()V
    .registers 3

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    .line 89
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .registers 5
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 60
    if-eqz p0, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 64
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    .line 61
    :cond_b
    :goto_b
    const-string v0, "OneTouchPlayAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 138
    .local v1, "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    .line 139
    .end local v1    # "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    goto :goto_6

    .line 142
    :cond_16
    goto :goto_2e

    .line 140
    :catch_17
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OneTouchPlayAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 94
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 116
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 117
    return-void

    .line 119
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 120
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1d

    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 122
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    goto :goto_23

    .line 125
    :cond_1d
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    .line 129
    :cond_23
    :goto_23
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_2a

    .line 102
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_29

    .line 103
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 104
    .local v0, "status":I
    if-nez v0, :cond_28

    .line 105
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 106
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    .line 109
    :cond_28
    return v1

    .line 111
    .end local v0    # "status":I
    :cond_29
    return v2

    .line 100
    :cond_2a
    :goto_2a
    return v2
.end method

.method start()Z
    .registers 4

    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 78
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    .line 81
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    .line 82
    return v0
.end method
