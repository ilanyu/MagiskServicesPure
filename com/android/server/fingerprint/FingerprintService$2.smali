.class Lcom/android/server/fingerprint/FingerprintService$2;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 188
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 191
    const-string v0, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 192
    const-string/jumbo v0, "lockout_reset_user"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    .line 195
    .end local v0    # "user":I
    :cond_19
    return-void
.end method
