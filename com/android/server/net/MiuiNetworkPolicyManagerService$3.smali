.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 532
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 535
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 536
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    .line 537
    .local v1, "wasConnected":Z
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    const/4 v3, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v2, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$302(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z

    .line 538
    const-string v2, "MiuiNetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wasConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mNetworkPriorityMode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 539
    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I
    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 538
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_a4

    .line 541
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V
    invoke-static {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 542
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 543
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->updateIface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$602(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    :cond_7d
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v2

    .line 546
    .local v2, "networkPriority":I
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z
    invoke-static {v3, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$800(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-nez v3, :cond_93

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z
    invoke-static {v3, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 547
    :cond_93
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_9f

    move v4, v2

    goto :goto_a1

    :cond_9f
    const/16 v4, 0xff

    :goto_a1
    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V
    invoke-static {v3, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 550
    .end local v2    # "networkPriority":I
    :cond_a4
    return-void
.end method
