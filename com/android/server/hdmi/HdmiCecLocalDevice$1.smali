.class Lcom/android/server/hdmi/HdmiCecLocalDevice$1;
.super Landroid/os/Handler;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 132
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()Z

    goto :goto_12

    .line 137
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    # invokes: Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 138
    nop

    .line 143
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
