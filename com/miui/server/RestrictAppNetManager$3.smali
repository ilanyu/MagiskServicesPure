.class Lcom/miui/server/RestrictAppNetManager$3;
.super Landroid/content/BroadcastReceiver;
.source "RestrictAppNetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/RestrictAppNetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 256
    .local v1, "replacing":Z
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, "uid":I
    # getter for: Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {}, Lcom/miui/server/RestrictAppNetManager;->access$200()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    if-lez v2, :cond_51

    if-eqz v1, :cond_28

    goto :goto_51

    .line 262
    :cond_28
    # invokes: Lcom/miui/server/RestrictAppNetManager;->isAllowAccessInternet(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/miui/server/RestrictAppNetManager;->access$300(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 263
    # invokes: Lcom/miui/server/RestrictAppNetManager;->tryDownloadCloudData(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/miui/server/RestrictAppNetManager;->access$400(Landroid/content/Context;)V

    .line 264
    const-string v3, "RestrictAppNetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RULE_RESTRICT packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    # getter for: Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {}, Lcom/miui/server/RestrictAppNetManager;->access$200()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    .line 267
    :cond_50
    return-void

    .line 259
    :cond_51
    :goto_51
    return-void
.end method
