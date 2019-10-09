.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 767
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 770
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 771
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 772
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_4

    .line 777
    :cond_16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 778
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 779
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    goto :goto_22

    .line 781
    :cond_38
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    # getter for: Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$200(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->process()V

    .line 782
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    # invokes: Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$300(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 784
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v1, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v1, v2}, Lcom/android/server/hdmi/PowerStatusMonitorAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 788
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_6c

    .line 789
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_72

    .line 791
    :cond_6c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 793
    :goto_72
    return-void
.end method
