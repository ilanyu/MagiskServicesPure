.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 7073
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7075
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7076
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7077
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7078
    .local v1, "state":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    .line 7079
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_23

    .line 7081
    :cond_1e
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z
    invoke-static {v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 7083
    :goto_23
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "wfd_UIBC_rot"

    const/4 v5, -0x1

    .line 7084
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7083
    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I
    invoke-static {v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4302(Lcom/android/server/policy/PhoneWindowManager;I)I

    .line 7085
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 7087
    .end local v1    # "state":I
    :cond_35
    return-void
.end method
