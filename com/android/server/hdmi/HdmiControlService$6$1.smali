.class Lcom/android/server/hdmi/HdmiControlService$6$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$6;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$6;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$6;

    .line 2310
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2313
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2315
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$5800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2316
    return-void
.end method
