.class Lcom/android/server/hdmi/HdmiControlService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$devices:Ljava/util/List;

.field final synthetic val$standbyAction:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 2077
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$standbyAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 5
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2080
    const-string v0, "HdmiControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On standby-action cleared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2082
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2083
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$standbyAction:I

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->access$5300(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 2088
    :cond_2c
    return-void
.end method
