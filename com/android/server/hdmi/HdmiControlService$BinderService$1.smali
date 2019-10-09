.class Lcom/android/server/hdmi/HdmiControlService$BinderService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$deviceId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1253
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1256
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_c

    .line 1257
    const-string v0, "HdmiControlService"

    const-string v1, "Callback cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void

    .line 1260
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1261
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_4a

    .line 1262
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1500(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1263
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/SelectRequestBuffer;->newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    .line 1265
    return-void

    .line 1267
    :cond_38
    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1269
    return-void

    .line 1271
    :cond_4a
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    .line 1272
    .local v1, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v1, :cond_7d

    .line 1273
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    if-ne v2, v3, :cond_6f

    .line 1274
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1275
    return-void

    .line 1280
    :cond_6f
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1281
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1282
    return-void

    .line 1284
    :cond_7d
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1285
    return-void
.end method
