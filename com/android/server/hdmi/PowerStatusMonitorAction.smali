.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field private static final INVALID_POWER_STATUS:I = -0x2

.field private static final MONITIROING_INTERNAL_MS:I = 0xea60

.field private static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field private final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/hdmi/PowerStatusMonitorAction;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 75
    .local v0, "sourceAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 76
    .local v1, "oldStatus":I
    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    .line 78
    return v3

    .line 80
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 81
    .local v2, "newStatus":I
    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 82
    return v3
.end method

.method private handleTimeout()V
    .registers 5

    .line 98
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 99
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 100
    .local v2, "logicalAddress":I
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 98
    .end local v2    # "logicalAddress":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    .end local v1    # "i":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 104
    return-void
.end method

.method private queryPowerStatus()V
    .registers 7

    .line 114
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 117
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    .line 118
    .local v3, "logicalAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->getSourceAddress()I

    move-result v4

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    new-instance v5, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 130
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "logicalAddress":I
    goto :goto_10

    .line 132
    :cond_31
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 135
    const/4 v2, 0x2

    const v3, 0xea60

    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 136
    const/16 v2, 0x1388

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 137
    return-void
.end method

.method private resetPowerStatus(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 109
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_9

    .line 111
    :cond_23
    return-void
.end method

.method private updatePowerStatus(IIZ)V
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "newStatus"    # I
    .param p3, "remove"    # Z

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 142
    if-eqz p3, :cond_e

    .line 143
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 145
    :cond_e
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .line 87
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    packed-switch v0, :pswitch_data_e

    goto :goto_d

    .line 89
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    .line 90
    goto :goto_d

    .line 92
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    .line 95
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 66
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 67
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_12

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 70
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
