.class Lcom/android/server/net/NetworkPolicyManagerService$12;
.super Landroid/content/BroadcastReceiver;
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

    .line 1058
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1061
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1e

    .line 1063
    :try_start_a
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1064
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    .line 1065
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1e

    .line 1067
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1068
    return-void

    .line 1064
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2

    .line 1065
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method
