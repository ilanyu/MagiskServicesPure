.class Lcom/android/server/fingerprint/AuthenticationClient$1;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "AuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 60
    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 65
    const/4 v0, 0x1

    :try_start_11
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V

    .line 66
    const/4 v1, 0x3

    if-ne p1, v1, :cond_25

    .line 67
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    .line 70
    :cond_25
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iput-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_2a

    .line 73
    goto :goto_32

    .line 71
    :catch_2a
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Unable to notify dialog dismissed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 76
    :cond_37
    return-void
.end method
