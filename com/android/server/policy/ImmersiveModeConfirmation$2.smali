.class Lcom/android/server/policy/ImmersiveModeConfirmation$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 399
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean p1, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 403
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-eqz v0, :cond_1e

    .line 404
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1200(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1200(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 407
    :cond_1e
    return-void
.end method
