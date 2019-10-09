.class Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;
.super Ljava/lang/Object;
.source "SystemAudioAutoInitiationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .line 49
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4
    .param p1, "error"    # I

    .line 52
    if-eqz p1, :cond_11

    .line 53
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 56
    :cond_11
    return-void
.end method
