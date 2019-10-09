.class Lcom/android/server/net/NetworkPolicyManagerService$8;
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

    .line 969
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 975
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 977
    .local v1, "userId":I
    if-ne v1, v2, :cond_e

    return-void

    .line 979
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef    # -7.8400085E-36f

    const/4 v5, 0x1

    if-eq v3, v4, :cond_28

    const v4, 0x42dd01f1

    if-eq v3, v4, :cond_1e

    goto :goto_31

    :cond_1e
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v2, v5

    goto :goto_31

    :cond_28
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v2, 0x0

    :cond_31
    :goto_31
    packed-switch v2, :pswitch_data_66

    goto :goto_64

    .line 982
    :pswitch_35
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 985
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    .line 988
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 989
    const-string v3, "android.intent.action.USER_ADDED"

    if-ne v0, v3, :cond_51

    .line 991
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    .line 994
    :cond_51
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_61

    .line 995
    :try_start_56
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 996
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5e

    .line 997
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_61

    goto :goto_64

    .line 996
    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v4

    .line 997
    :catchall_61
    move-exception v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_61

    throw v3

    .line 1000
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method
