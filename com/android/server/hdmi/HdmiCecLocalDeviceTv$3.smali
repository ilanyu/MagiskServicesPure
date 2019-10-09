.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field final synthetic val$recorderAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 1852
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->val$recorderAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 5
    .param p1, "error"    # I

    .line 1855
    if-eqz p1, :cond_b

    .line 1856
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->val$recorderAddress:I

    const/16 v2, 0xa1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1859
    :cond_b
    return-void
.end method
