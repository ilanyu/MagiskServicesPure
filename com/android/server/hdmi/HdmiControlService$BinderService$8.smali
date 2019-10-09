.class Lcom/android/server/hdmi/HdmiControlService$BinderService$8;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$mute:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1488
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$mute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1491
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1492
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_12

    .line 1493
    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void

    .line 1496
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$mute:Z

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeMute(Z)V

    .line 1497
    return-void
.end method
