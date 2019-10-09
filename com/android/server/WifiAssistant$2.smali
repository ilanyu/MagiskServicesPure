.class Lcom/android/server/WifiAssistant$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiAssistant;


# direct methods
.method constructor <init>(Lcom/android/server/WifiAssistant;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/WifiAssistant;

    .line 494
    iput-object p1, p0, Lcom/android/server/WifiAssistant$2;->this$0:Lcom/android/server/WifiAssistant;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WifiAssistant$2;->this$0:Lcom/android/server/WifiAssistant;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/WifiAssistant;->access$000(Lcom/android/server/WifiAssistant;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 500
    iget-object v1, p0, Lcom/android/server/WifiAssistant$2;->this$0:Lcom/android/server/WifiAssistant;

    # invokes: Lcom/android/server/WifiAssistant;->handleNetworkBlocked()V
    invoke-static {v1}, Lcom/android/server/WifiAssistant;->access$100(Lcom/android/server/WifiAssistant;)V

    goto :goto_3d

    .line 501
    :cond_29
    const-string v1, "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 502
    const-string v1, "EXTRA_NETWORK_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 503
    .local v1, "lastNetwork":I
    iget-object v2, p0, Lcom/android/server/WifiAssistant$2;->this$0:Lcom/android/server/WifiAssistant;

    # invokes: Lcom/android/server/WifiAssistant;->handleClickNotification(I)V
    invoke-static {v2, v1}, Lcom/android/server/WifiAssistant;->access$200(Lcom/android/server/WifiAssistant;I)V

    .line 505
    .end local v1    # "lastNetwork":I
    :cond_3d
    :goto_3d
    return-void
.end method
