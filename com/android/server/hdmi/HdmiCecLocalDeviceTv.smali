.class final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field private mAutoDeviceOff:Z

.field private mAutoWakeup:Z

.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeviceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private mSkipRoutingControl:Z

.field private final mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

.field private mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 72
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 77
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 81
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 99
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 103
    nop

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 106
    nop

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    .line 137
    new-instance v0, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 142
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 190
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 191
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "hdmi_control_auto_device_off_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 194
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "hdmi_system_audio_control_enabled"

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 196
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 67
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 67
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1246
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1247
    .local v0, "oldDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_14

    .line 1248
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1250
    :cond_14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1251
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1252
    return-object v0
.end method

.method private addTvInput(Ljava/lang/String;I)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private canStartArcUpdateAction(IZ)Z
    .registers 7
    .param p1, "avrAddress"    # I
    .param p2, "enabled"    # Z

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1108
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 1109
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_3c

    .line 1110
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1111
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1112
    const/4 v2, 0x1

    if-eqz p2, :cond_3b

    .line 1113
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    :cond_3a
    return v1

    .line 1115
    :cond_3b
    return v2

    .line 1118
    :cond_3c
    return v1
.end method

.method private checkRecordSource([B)Z
    .registers 3
    .param p1, "recordSource"    # [B

    .line 1764
    if-eqz p1, :cond_a

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private checkRecorder(I)Z
    .registers 5
    .param p1, "recorderAddress"    # I

    .line 1757
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1758
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1759
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v2

    if-ne v2, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1758
    :goto_f
    return v1
.end method

.method private checkTimerRecordingSource(I[B)Z
    .registers 4
    .param p1, "sourceType"    # I
    .param p2, "recordSource"    # [B

    .line 1799
    if-eqz p2, :cond_a

    .line 1800
    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1799
    :goto_b
    return v0
.end method

.method private clearDeviceInfoList()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 812
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 813
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 814
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_9

    .line 815
    :cond_1a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 816
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 817
    return-void
.end method

.method private disableArcIfExist()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1659
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_a

    .line 1660
    return-void

    .line 1664
    :cond_a
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1665
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1666
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1668
    :cond_29
    return-void
.end method

.method private disableSystemAudioIfExist()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1643
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1644
    return-void

    .line 1648
    :cond_a
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1649
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1650
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1651
    const-class v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1652
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1653
    return-void
.end method

.method private getInputDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v0, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1327
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1328
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1329
    goto :goto_30

    .line 1331
    :cond_21
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1332
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1335
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method private handleNewDeviceAtTheTailOfActivePath(I)Z
    .registers 6
    .param p1, "path"    # I

    .line 644
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 645
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 646
    .local v0, "newPath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 648
    const/4 v1, 0x1

    return v1

    .line 650
    .end local v0    # "newPath":I
    :cond_22
    return v1
.end method

.method private handleSelectInternalSource()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 310
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v0, v1, :cond_37

    .line 311
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(II)V

    .line 312
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v0, :cond_26

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 314
    return-void

    .line 316
    :cond_26
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 317
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 316
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 318
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 320
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_37
    return-void
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1342
    nop

    .line 1343
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result v0

    .line 1342
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private initLocalDeviceAddresses()Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 228
    .local v2, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v2    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    goto :goto_12

    .line 230
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 6
    .param p0, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p1, "result"    # I

    .line 456
    if-nez p0, :cond_3

    .line 457
    return-void

    .line 460
    :cond_3
    :try_start_3
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 463
    goto :goto_1e

    .line 461
    :catch_7
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .line 1369
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1370
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1372
    :cond_b
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .registers 5
    .param p0, "path"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1347
    .local p1, "switches":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1348
    .local v1, "switchPath":I
    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isParentPath(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1349
    const/4 v0, 0x1

    return v0

    .line 1351
    .end local v1    # "switchPath":I
    :cond_1c
    goto :goto_4

    .line 1352
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private isDirectConnectAddress(I)Z
    .registers 3
    .param p1, "physicalAddress"    # I

    .line 1002
    const v0, 0xf000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isLocalDeviceAddress(I)Z
    .registers 4
    .param p1, "address"    # I

    .line 1375
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1226
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1227
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 1228
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1229
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_25

    .line 1230
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 1226
    :goto_26
    return v0
.end method

.method private static isParentPath(II)Z
    .registers 8
    .param p0, "parentPath"    # I
    .param p1, "childPath"    # I

    .line 1358
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0xc

    if-gt v1, v2, :cond_22

    .line 1359
    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 1360
    .local v2, "nibble":I
    if-eqz v2, :cond_1f

    .line 1361
    shr-int v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 1362
    .local v3, "parentNibble":I
    if-nez v3, :cond_1e

    add-int/lit8 v4, v1, 0x4

    shr-int v4, p1, v4

    add-int/lit8 v5, v1, 0x4

    shr-int v5, p0, v5

    if-ne v4, v5, :cond_1e

    const/4 v0, 0x1

    nop

    :cond_1e
    return v0

    .line 1358
    .end local v2    # "nibble":I
    .end local v3    # "parentNibble":I
    :cond_1f
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 1365
    .end local v1    # "i":I
    :cond_22
    return v0
.end method

.method static isTailOfActivePath(II)Z
    .registers 6
    .param p0, "path"    # I
    .param p1, "activePath"    # I

    .line 663
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 664
    return v0

    .line 666
    :cond_4
    const/16 v1, 0xc

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1a

    .line 667
    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 668
    .local v2, "curActivePath":I
    if-nez v2, :cond_10

    .line 669
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_10
    shr-int v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 672
    .local v3, "curPath":I
    if-eq v3, v2, :cond_17

    .line 673
    return v0

    .line 666
    .end local v2    # "curActivePath":I
    .end local v3    # "curPath":I
    :cond_17
    add-int/lit8 v1, v1, -0x4

    goto :goto_6

    .line 677
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method private launchDeviceDiscovery()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 764
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 765
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 766
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 795
    .local v0, "action":Lcom/android/server/hdmi/DeviceDiscoveryAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 796
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 928
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 930
    const-string v1, ""

    const-string v2, ""

    .line 928
    const/high16 v3, 0x40000

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method private removeCecSwitches(I)V
    .registers 5
    .param p1, "portId"    # I

    .line 1586
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1587
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1589
    .local v1, "path":I
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->pathToPortId(I)I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 1590
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1592
    .end local v1    # "path":I
    :cond_1f
    goto :goto_6

    .line 1593
    :cond_20
    return-void
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1267
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1268
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_12

    .line 1269
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1271
    :cond_12
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1272
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 176
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method private resetSelectRequestBuffer()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 243
    sget-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 244
    return-void
.end method

.method private sendClearTimerMessage(II[B)V
    .registers 8
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .line 1831
    const/4 v0, 0x0

    .line 1832
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    packed-switch p2, :pswitch_data_40

    .line 1846
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid source type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/16 v1, 0xa1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1849
    return-void

    .line 1842
    :pswitch_20
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1844
    goto :goto_35

    .line 1838
    :pswitch_27
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1840
    goto :goto_35

    .line 1834
    :pswitch_2e
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1836
    nop

    .line 1852
    :goto_35
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 1861
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .registers 7
    .param p1, "on"    # Z

    .line 858
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 859
    .local v0, "device":I
    const-string v1, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1310
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 1311
    .local v0, "copiedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getInputDevices()Ljava/util/List;

    move-result-object v1

    .line 1312
    .local v1, "externalInputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1313
    :try_start_10
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 1314
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    .line 1315
    monitor-exit v2

    .line 1316
    return-void

    .line 1315
    :catchall_16
    move-exception v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v3
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1447
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-ne v1, v2, :cond_10

    .line 1449
    return-void

    .line 1451
    :cond_10
    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 1452
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_24

    .line 1453
    :cond_17
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1454
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1455
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1457
    :cond_24
    :goto_24
    return-void
.end method

.method announceClearTimerRecordingResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    .line 1223
    return-void
.end method

.method announceOneTouchRecordResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 1214
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    .line 1215
    return-void
.end method

.method announceTimerRecordingResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 1218
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    .line 1219
    return-void
.end method

.method broadcastMenuLanguage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 553
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 555
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_12

    .line 556
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 557
    const/4 v1, 0x1

    return v1

    .line 559
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method changeArcFeatureEnabled(IZ)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 949
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 950
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_c

    .line 951
    return-void

    .line 953
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 955
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    if-eq v1, p1, :cond_1e

    goto :goto_34

    .line 958
    :cond_1e
    if-eqz p2, :cond_29

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-nez v1, :cond_29

    .line 959
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_33

    .line 960
    :cond_29
    if-nez p2, :cond_33

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-eqz v1, :cond_33

    .line 961
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 963
    :cond_33
    :goto_33
    return-void

    .line 956
    :cond_34
    :goto_34
    return-void
.end method

.method changeMute(Z)V
    .registers 6
    .param p1, "mute"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1059
    return-void

    .line 1061
    :cond_a
    const-string v0, "[A]:Change mute:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    if-ne v1, p1, :cond_29

    .line 1064
    const-string v1, "No need to change mute."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    monitor-exit v0

    return-void

    .line 1067
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_4d

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1069
    const-string v0, "[A]:System audio is not activated."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    return-void

    .line 1074
    :cond_38
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1076
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result v1

    .line 1075
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendUserControlPressedAndReleased(II)V

    .line 1077
    return-void

    .line 1067
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 823
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 828
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 829
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_23

    .line 830
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 831
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 832
    return-void

    .line 835
    :cond_23
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 836
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 835
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 837
    return-void

    .line 824
    .end local v0    # "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 825
    const/4 v0, 0x6

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 826
    return-void
.end method

.method changeVolume(III)V
    .registers 11
    .param p1, "curVolume"    # I
    .param p2, "delta"    # I
    .param p3, "maxVolume"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1026
    return-void

    .line 1028
    :cond_a
    if-eqz p2, :cond_62

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_62

    .line 1032
    :cond_13
    add-int v0, p1, p2

    .line 1033
    .local v0, "targetVolume":I
    invoke-static {v0, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v1

    .line 1034
    .local v1, "cecVolume":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1037
    :try_start_1c
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2e

    .line 1039
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 1040
    invoke-static {v5, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v5

    .line 1039
    invoke-virtual {v3, v4, v5}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1041
    monitor-exit v2

    return-void

    .line 1043
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_5f

    .line 1045
    const-class v2, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1046
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_51

    .line 1047
    new-instance v3, Lcom/android/server/hdmi/VolumeControlAction;

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v6

    if-lez p2, :cond_4a

    move v4, v5

    nop

    :cond_4a
    invoke-direct {v3, p0, v6, v4}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1047
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_5e

    .line 1050
    :cond_51
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/VolumeControlAction;

    if-lez p2, :cond_5b

    move v4, v5

    nop

    :cond_5b
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    .line 1052
    :goto_5e
    return-void

    .line 1043
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v3

    .line 1029
    .end local v0    # "targetVolume":I
    .end local v1    # "cecVolume":I
    :cond_62
    :goto_62
    return-void
.end method

.method clearTimerRecording(II[B)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1806
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1807
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/16 v0, 0xa2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1809
    return-void

    .line 1812
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1813
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/16 v0, 0xa0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1816
    return-void

    .line 1819
    :cond_3a
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_60

    .line 1820
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/16 v0, 0xa1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1823
    return-void

    .line 1826
    :cond_60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V

    .line 1827
    return-void
.end method

.method deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 276
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 277
    .local v0, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_12

    .line 278
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 279
    return-void

    .line 281
    :cond_12
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 282
    .local v1, "targetAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    .line 283
    .local v2, "active":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2f

    .line 284
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget v3, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v1, v3, :cond_2f

    .line 286
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 287
    return-void

    .line 289
    :cond_2f
    if-nez v1, :cond_4a

    .line 290
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleSelectInternalSource()V

    .line 292
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(II)V

    .line 293
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 294
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 295
    return-void

    .line 297
    :cond_4a
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 299
    const/4 v3, 0x6

    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 300
    return-void

    .line 302
    :cond_5a
    const-class v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 303
    new-instance v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/hdmi/DeviceSelectAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 304
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1618
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 1623
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1624
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1625
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1627
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1628
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1630
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableSystemAudioIfExist()V

    .line 1631
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArcIfExist()V

    .line 1633
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 1634
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 1636
    const v0, 0xffff

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1637
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkIfPendingActionsCleared()V

    .line 1638
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 260
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isWakeUpMessageReceived()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 261
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 262
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method displayOsd(I)V
    .registers 3
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1695
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    .line 1696
    return-void
.end method

.method displayOsd(II)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1701
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    .line 1702
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 397
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_10

    .line 398
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 399
    return-void

    .line 401
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1b

    .line 402
    invoke-static {p2, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 403
    return-void

    .line 405
    :cond_1b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 406
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 408
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 409
    return-void

    .line 411
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 412
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    goto :goto_49

    :cond_41
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    .line 413
    .local v0, "oldPath":I
    :goto_49
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 414
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v1, :cond_53

    .line 415
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 416
    return-void

    .line 418
    :cond_53
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 419
    .local v1, "newPath":I
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 420
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1917
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoDeviceOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoWakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSkipRoutingControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrevPortId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    const-string v0, "CEC devices:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1929
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1930
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1931
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_e0

    .line 1932
    :cond_f0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1933
    return-void
.end method

.method enableAudioReturnChannel(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 914
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 915
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_12

    .line 916
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 918
    :cond_12
    return-void
.end method

.method protected findKeyReceiverAddress()I
    .registers 3

    .line 445
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 446
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return v0

    .line 448
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 449
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_20

    .line 450
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    return v1

    .line 452
    :cond_20
    const/4 v1, -0x1

    return v1
.end method

.method getAutoWakeup()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1610
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1611
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    return v0
.end method

.method getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1381
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1396
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1522
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 1523
    return-object v1

    .line 1525
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1f
    goto :goto_c

    .line 1526
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeLocalDevice"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1285
    if-eqz p1, :cond_c

    .line 1286
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1288
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v0, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1290
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1291
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1292
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1295
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method getPortId(I)I
    .registers 3
    .param p1, "physicalAddress"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 440
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method protected getPreferredAddress()I
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method getPrevPortId()I
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    monitor-exit v0

    return v1

    .line 358
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1404
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6
    .param p1, "logicalAddress"    # I

    .line 1415
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1417
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 1418
    monitor-exit v0

    return-object v2

    .line 1420
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_23
    goto :goto_9

    .line 1421
    :cond_24
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1422
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v0, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1429
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1430
    goto :goto_b

    .line 1432
    :cond_22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_b

    .line 1434
    :cond_26
    return-object v0
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6
    .param p1, "path"    # I

    .line 1538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1540
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 1541
    monitor-exit v0

    return-object v2

    .line 1543
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1d
    goto :goto_9

    .line 1544
    :cond_1e
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1545
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    return-object v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 470
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 471
    .local v0, "logicalAddress":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 472
    .local v1, "physicalAddress":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 473
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_30

    .line 474
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 475
    const-string v5, "Device info %X not found; buffering the command"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_6d

    .line 478
    :cond_30
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    move-result v5

    if-nez v5, :cond_59

    .line 479
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_42

    goto :goto_59

    .line 484
    :cond_42
    const-string v5, "Input not ready for device: %X; buffering the command"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_6d

    .line 480
    :cond_59
    :goto_59
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 481
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v3

    .line 482
    .local v3, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 483
    .end local v3    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    nop

    .line 487
    :cond_6d
    :goto_6d
    return v4
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 544
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 545
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to respond to <Get Menu Language>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 497
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    .line 498
    return v2

    .line 500
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 501
    return v2

    .line 503
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPrevPortId()I

    move-result v0

    .line 504
    .local v0, "portId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 507
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 508
    .local v3, "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v3, :cond_2a

    .line 509
    return v2

    .line 511
    :cond_2a
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v4

    if-ne v4, v0, :cond_37

    .line 512
    return v2

    .line 516
    :cond_37
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 518
    .end local v3    # "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_51

    .line 521
    :cond_3f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 522
    const v1, 0xffff

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 523
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v3, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 525
    :goto_51
    return v2
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1084
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1087
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1088
    return v1

    .line 1090
    :cond_1a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1091
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1092
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    .line 1094
    :cond_2d
    return v1

    .line 1099
    :cond_2e
    const-class v0, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1100
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1101
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1102
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1103
    return v1
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1884
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1184
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1185
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 1188
    .local v1, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v2, v3, :cond_27

    .line 1189
    nop

    .line 1190
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const/16 v3, 0x30

    .line 1189
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1193
    :cond_27
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    return v2

    .line 1196
    .end local v1    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 1197
    .local v1, "recorderAddress":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    move-result-object v2

    .line 1198
    .local v2, "recordSource":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    move-result v3

    .line 1199
    .local v3, "reason":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    .line 1200
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1202
    :cond_42
    const/4 v4, 0x1

    return v4
.end method

.method handleRemoveActiveRoutingPath(I)V
    .registers 6
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1478
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1479
    .local v0, "newPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1481
    .end local v0    # "newPath":I
    :cond_20
    return-void
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 701
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 702
    .local v0, "mute":Z
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v1

    .line 703
    .local v1, "volume":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 704
    const/4 v2, 0x1

    return v2
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 14
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 566
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 567
    .local v0, "path":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v8

    .line 568
    .local v8, "address":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x2

    aget-byte v9, v1, v2

    .line 570
    .local v9, "type":I
    invoke-virtual {p0, v8, v9, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1e

    return v10

    .line 573
    :cond_1e
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 574
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v10

    .line 578
    :cond_3d
    invoke-virtual {p0, v8, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result v1

    if-nez v1, :cond_46

    .line 579
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 584
    :cond_46
    new-instance v11, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v4

    const v6, 0xffffff

    .line 585
    invoke-static {v8}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v11

    move v2, v8

    move v3, v0

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 586
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 587
    invoke-static {v8, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 588
    return v10
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 593
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 594
    .local v0, "newStatus":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 595
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 531
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 533
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_1c

    .line 534
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    .line 535
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 537
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 683
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 685
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 686
    .local v0, "params":[B
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 687
    .local v1, "currentPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 688
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 689
    const-class v2, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 690
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v2

    .line 691
    .local v2, "newPath":I
    new-instance v4, Lcom/android/server/hdmi/RoutingControlAction;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v3, v5}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 693
    .end local v2    # "newPath":I
    :cond_2e
    return v3
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 16
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 736
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 737
    .local v0, "source":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 739
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 740
    const-string v3, "HdmiCecLocalDeviceTv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No source device info for <Set Osd Name>."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return v2

    .line 743
    :cond_22
    const/4 v3, 0x0

    .line 745
    .local v3, "osdName":Ljava/lang/String;
    :try_start_23
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_2e} :catch_70

    move-object v3, v4

    .line 749
    nop

    .line 751
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 752
    const-string v4, "HdmiCecLocalDeviceTv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v2

    .line 756
    :cond_51
    new-instance v4, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v8

    .line 757
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v9

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v10

    .line 758
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v11

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v12

    move-object v7, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 756
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 759
    return v2

    .line 746
    :catch_70
    move-exception v4

    .line 747
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "HdmiCecLocalDeviceTv"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid <Set Osd Name> request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1144
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 1145
    .local v0, "systemAudioStatus":Z
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_38

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 1148
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_37

    .line 1150
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid <Set System Audio Mode> message:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1153
    :goto_37
    return v4

    .line 1154
    :cond_38
    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1155
    const-string v1, "Ignoring <Set System Audio Mode> message because the System Audio Control feature is disabled: %s"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v1, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1158
    return v4

    .line 1160
    :cond_4f
    const-class v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1161
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 1162
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1163
    .local v1, "action":Lcom/android/server/hdmi/SystemAudioActionFromAvr;
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1164
    return v4
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid <System Audio Mode Status> message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    return v1

    .line 1176
    :cond_22
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 1177
    return v1
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1126
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 1127
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 1128
    return v1

    .line 1133
    :cond_11
    const-class v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1134
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1135
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-direct {v0, p0, v3, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1136
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1137
    return v1
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 719
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    if-eqz v0, :cond_14

    .line 720
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 722
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1207
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1208
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 1209
    .local v1, "timerClearedStatusData":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1210
    const/4 v2, 0x1

    return v2
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method hasSystemAudioDevice()Z
    .registers 2

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isArcEstablished()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 938
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 939
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 940
    move v0, v1

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 941
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    return v1

    .line 940
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 944
    .end local v0    # "i":I
    :cond_1e
    return v1
.end method

.method isArcFeatureEnabled(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 968
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 922
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 923
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isInDeviceList(II)Z
    .registers 6
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1560
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1561
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1562
    return v1

    .line 1564
    :cond_b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p2, :cond_13

    const/4 v1, 0x1

    nop

    :cond_13
    return v1
.end method

.method protected isInputReady(I)Z
    .registers 4
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 183
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPowerStandbyOrTransient()Z
    .registers 2

    .line 1689
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    return v0
.end method

.method isProhibitMode()Z
    .registers 2

    .line 1685
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    return v0
.end method

.method isSystemAudioActivated()Z
    .registers 3

    .line 863
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 864
    const/4 v0, 0x0

    return v0

    .line 866
    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    monitor-exit v0

    return v1

    .line 868
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v1
.end method

.method isSystemAudioControlFeatureEnabled()Z
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 885
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method launchRoutingControl(Z)V
    .registers 5
    .param p1, "routingForBootup"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 1494
    if-nez p1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1495
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1496
    .local v0, "newPath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1498
    .end local v0    # "newPath":I
    goto :goto_48

    .line 1500
    :cond_28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1501
    .local v0, "activePath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1502
    if-nez p1, :cond_48

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 v2, 0x82

    .line 1503
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1504
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1508
    .end local v0    # "activePath":I
    :cond_48
    :goto_48
    return-void
.end method

.method protected onAddressAllocated(II)V
    .registers 9
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 203
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 205
    .local v2, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 206
    .end local v2    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    goto :goto_d

    .line 207
    :cond_27
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 209
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    iget v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceType:I

    .line 208
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 210
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 211
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v3

    .line 210
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 214
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_6d

    move v1, v3

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 215
    if-eqz p2, :cond_76

    if-eq p2, v3, :cond_76

    move v2, v3

    nop

    :cond_76
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->initLocalDeviceAddresses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    .line 218
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    .line 219
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V

    .line 220
    return-void
.end method

.method onHotplug(IZ)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1572
    if-nez p2, :cond_8

    .line 1573
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecSwitches(I)V

    .line 1576
    :cond_8
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1577
    .local v0, "hotplugActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HotplugDetectionAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1581
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    .line 1583
    :cond_1e
    return-void
.end method

.method onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "avr"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 801
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 802
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-class v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 806
    :cond_2f
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 6
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1675
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1676
    return-void

    .line 1678
    :cond_c
    if-nez p1, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    if-eqz v0, :cond_1f

    .line 1679
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1682
    :cond_1f
    return-void
.end method

.method processAllDelayedMessages()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1900
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    .line 1901
    return-void
.end method

.method processDelayedActiveSource(I)V
    .registers 3
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1912
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 1913
    return-void
.end method

.method processDelayedMessages(I)V
    .registers 3
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1906
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    .line 1907
    return-void
.end method

.method final removeCecDevice(I)V
    .registers 4
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1467
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1469
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 1470
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1471
    return-void
.end method

.method protected sendStandby(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .line 1889
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1890
    .local v0, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_b

    .line 1891
    return-void

    .line 1893
    :cond_b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 1894
    .local v1, "targetAddress":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1895
    return-void
.end method

.method setArcStatus(Z)Z
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 897
    const-string v0, "Set Arc Status[old:%b new:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 900
    .local v0, "oldStatus":Z
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 902
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Z)V

    .line 904
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 905
    return v0
.end method

.method setAudioStatus(ZI)V
    .registers 7
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1007
    return-void

    .line 1009
    :cond_7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_a
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 1011
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 1012
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 1014
    .local v1, "maxVolume":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1015
    invoke-static {p2, v1}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v3

    .line 1014
    invoke-virtual {v2, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1016
    const/4 v2, 0x2

    .line 1017
    if-eqz p1, :cond_28

    const/16 v3, 0x65

    goto :goto_29

    .line 1016
    :cond_28
    move v3, p2

    :goto_29
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(II)V

    .line 1018
    .end local v1    # "maxVolume":I
    monitor-exit v0

    .line 1019
    return-void

    .line 1018
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1599
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 1600
    return-void
.end method

.method setAutoWakeup(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1605
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 1606
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .param p1, "addr"    # I

    .line 253
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Preferred addres will not be stored for TV"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method setPrevPortId(I)V
    .registers 4
    .param p1, "portId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V
    .registers 2
    .param p1, "requestBuffer"    # Lcom/android/server/hdmi/SelectRequestBuffer;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 237
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 238
    return-void
.end method

.method setSystemAudioControlFeatureEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 873
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 874
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 876
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    .line 877
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 880
    :cond_13
    return-void

    .line 876
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setSystemAudioMode(Z)V
    .registers 6
    .param p1, "on"    # Z

    .line 841
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 842
    const-string v0, "Cannot turn on system audio mode because the System Audio Control feature is disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    return-void

    .line 846
    :cond_11
    const-string v0, "System Audio Mode change[old:%b new:%b]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateAudioManagerForSystemAudio(Z)V

    .line 848
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_2e
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    if-eq v1, p1, :cond_39

    .line 850
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    .line 851
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 853
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 854
    monitor-exit v0

    .line 855
    return-void

    .line 854
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_3e

    throw v1
.end method

.method startArcAction(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 974
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 975
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_11

    .line 976
    const-string v1, "HdmiCecLocalDeviceTv"

    const-string v2, "Failed to start arc action; No AVR device."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void

    .line 979
    :cond_11
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v1

    if-nez v1, :cond_33

    .line 980
    const-string v1, "HdmiCecLocalDeviceTv"

    const-string v2, "Failed to start arc action; ARC configuration check failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    if-eqz p1, :cond_32

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 982
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    .line 984
    :cond_32
    return-void

    .line 988
    :cond_33
    if-eqz p1, :cond_4f

    .line 989
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 990
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 991
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_68

    .line 994
    :cond_4f
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 995
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 996
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 999
    :cond_68
    :goto_68
    return-void
.end method

.method startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .registers 6
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    .line 624
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 633
    .local v1, "action":Lcom/android/server/hdmi/NewDeviceAction;
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 634
    return-void

    .line 636
    .end local v1    # "action":Lcom/android/server/hdmi/NewDeviceAction;
    :cond_1d
    goto :goto_a

    .line 638
    :cond_1e
    new-instance v0, Lcom/android/server/hdmi/NewDeviceAction;

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 640
    return-void
.end method

.method startOneTouchRecord(I[B)I
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1707
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1708
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 1709
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v2, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1711
    return v1

    .line 1714
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1715
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid recorder address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/16 v0, 0x31

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1718
    return v1

    .line 1721
    :cond_3b
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecordSource([B)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1722
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1725
    const/4 v0, 0x2

    return v0

    .line 1728
    :cond_62
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1729
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recordSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1729
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v0, -0x1

    return v0
.end method

.method startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 426
    if-ne p1, p2, :cond_6

    .line 427
    return-void

    .line 429
    :cond_6
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    .line 430
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 431
    .local v0, "routingChange":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 432
    const-class v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 433
    new-instance v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 435
    return-void
.end method

.method startTimerRecording(II[B)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1770
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1771
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1774
    return-void

    .line 1777
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1778
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1781
    return-void

    .line 1784
    :cond_38
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1785
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1789
    return-void

    .line 1792
    :cond_5d
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1794
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Timer Recording]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RecordSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1794
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    return-void
.end method

.method stopOneTouchRecord(I)V
    .registers 5
    .param p1, "recorderAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1736
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1737
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1738
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not stop one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1740
    return-void

    .line 1743
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1744
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/16 v0, 0x31

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1747
    return-void

    .line 1751
    :cond_3a
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1752
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1753
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return-void
.end method

.method updateActiveInput(IZ)V
    .registers 7
    .param p1, "path"    # I
    .param p2, "notifyInputChange"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 378
    if-eqz p2, :cond_2f

    .line 379
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 380
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 381
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_2a

    .line 382
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 383
    if-nez v1, :cond_2a

    .line 386
    new-instance v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    move-object v1, v2

    .line 389
    :cond_2a
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 391
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2f
    return-void
.end method

.method updateActiveSource(II)V
    .registers 4
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 325
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 326
    return-void
.end method

.method updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 5
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 332
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    return-void

    .line 335
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 336
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 337
    .local v0, "logicalAddress":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v0, v1, :cond_30

    .line 338
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 339
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 346
    :cond_30
    return-void
.end method

.method updateCecSwitchInfo(III)Z
    .registers 6
    .param p1, "address"    # I
    .param p2, "type"    # I
    .param p3, "path"    # I

    .line 611
    const/16 v0, 0xf

    if-ne p1, v0, :cond_15

    const/4 v0, 0x6

    if-ne p2, v0, :cond_15

    .line 613
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 615
    const/4 v0, 0x1

    return v0

    .line 617
    :cond_15
    const/4 v0, 0x5

    if-ne p2, v0, :cond_21

    .line 618
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method updateDevicePowerStatus(II)V
    .registers 7
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    .line 1864
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1865
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_1d

    .line 1866
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update power status of non-existing device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return-void

    .line 1870
    :cond_1d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    if-ne v1, p2, :cond_24

    .line 1871
    return-void

    .line 1874
    :cond_24
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1876
    .local v1, "newInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1878
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1879
    return-void
.end method
