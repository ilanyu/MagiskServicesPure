.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMiuiOptimizationChangedObserver()V
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

    .line 732
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 735
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 736
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 735
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 737
    .local v0, "isCtsMode":Z
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    .line 738
    .local v1, "networkPriority":I
    const-string v3, "MiuiNetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "miui optimization mode changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", current network priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v3, 0xff

    if-eqz v0, :cond_50

    .line 741
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V
    invoke-static {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 742
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiNetworkManagementService;->enableIptablesRestore(Z)Z

    goto :goto_68

    .line 744
    :cond_50
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/MiuiNetworkManagementService;->enableIptablesRestore(Z)Z

    .line 745
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    if-eqz v2, :cond_68

    if-eq v1, v3, :cond_68

    .line 746
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V
    invoke-static {v2, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 749
    :cond_68
    :goto_68
    return-void
.end method
