.class Lcom/android/server/devicepolicy/CertificateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/CertificateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/CertificateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 133
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    return-void

    .line 139
    :cond_7
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;->getSendingUserId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    # invokes: Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V

    .line 141
    return-void
.end method
