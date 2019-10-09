.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1081
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1085
    if-eqz p1, :cond_47

    if-nez p2, :cond_5

    goto :goto_47

    .line 1087
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    const/16 v1, 0xb

    .line 1089
    :try_start_c
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1090
    .local v1, "newMetered":Z
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1091
    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1090
    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    invoke-static {v2, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v2

    .line 1093
    .local v2, "meteredChanged":Z
    const/16 v3, 0x12

    .line 1094
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1095
    .local v3, "newRoaming":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1096
    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1095
    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    invoke-static {v4, v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    .line 1098
    .local v4, "roamingChanged":Z
    if-nez v2, :cond_32

    if-eqz v4, :cond_42

    .line 1099
    :cond_32
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v5

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v6, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 1100
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1102
    .end local v1    # "newMetered":Z
    .end local v2    # "meteredChanged":Z
    .end local v3    # "newRoaming":Z
    .end local v4    # "roamingChanged":Z
    :cond_42
    monitor-exit v0

    .line 1103
    return-void

    .line 1102
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_44

    throw v1

    .line 1085
    :cond_47
    :goto_47
    return-void
.end method
