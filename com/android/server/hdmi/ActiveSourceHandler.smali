.class final Lcom/android/server/hdmi/ActiveSourceHandler;
.super Ljava/lang/Object;
.source "ActiveSourceHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveSourceHandler"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 52
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 53
    iput-object p2, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 54
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;
    .registers 4
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 43
    if-nez p0, :cond_b

    .line 44
    const-string v0, "ActiveSourceHandler"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_b
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceHandler;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0
.end method

.method private final getSourceAddress()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_5

    .line 103
    return-void

    .line 106
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 109
    goto :goto_22

    .line 107
    :catch_b
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActiveSourceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .registers 10
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 65
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 66
    .local v1, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_f

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 70
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3e

    .line 71
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    .line 72
    .local v2, "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 73
    iget-object v5, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v5, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    .line 74
    .local v3, "notifyInputChange":Z
    :goto_28
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 75
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 77
    :cond_35
    iget v5, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, v5, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 78
    invoke-direct {p0, v4}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    .line 79
    .end local v2    # "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .end local v3    # "notifyInputChange":Z
    goto :goto_67

    .line 83
    :cond_3e
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    .line 84
    .local v2, "current":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-direct {p0}, Lcom/android/server/hdmi/ActiveSourceHandler;->getSourceAddress()I

    move-result v6

    if-ne v5, v6, :cond_5e

    .line 85
    iget v3, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-static {v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    .line 87
    .local v3, "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v5, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 89
    invoke-direct {p0, v4}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    .line 90
    .end local v3    # "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_67

    .line 91
    :cond_5e
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 95
    .end local v2    # "current":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :goto_67
    return-void
.end method
