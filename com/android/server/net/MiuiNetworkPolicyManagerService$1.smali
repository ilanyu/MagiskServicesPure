.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 506
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 509
    if-eqz p2, :cond_13

    const-string v0, "cloud_network_priority_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 510
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityCloudControl()V
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    .line 512
    :cond_13
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v0

    .line 513
    .local v0, "networkPriority":I
    const-string v1, "MiuiNetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkPriorityMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNetworkPriorityMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 514
    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWifiConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 516
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 518
    :cond_61
    return-void
.end method
