.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 2815
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 8

    .line 2841
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2842
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2843
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    .line 2848
    .local v2, "chains":[I
    array-length v3, v2

    move v4, v1

    :goto_13
    if-ge v4, v3, :cond_26

    aget v5, v2, v4

    .line 2849
    .local v5, "chain":I
    invoke-virtual {p0, v5, v1}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2850
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    invoke-static {v6, v5}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 2848
    .end local v5    # "chain":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2852
    :cond_26
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2400(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2853
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2854
    .end local v2    # "chains":[I
    monitor-exit v0

    .line 2855
    return-void

    .line 2854
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v1

    nop

    :array_3e
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method setDataSaverMode(Z)V
    .registers 3
    .param p1, "dataSaverMode"    # Z

    .line 2817
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # setter for: Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z
    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1902(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2818
    return-void
.end method

.method setFirewallChainState(IZ)V
    .registers 4
    .param p1, "chain"    # I
    .param p2, "state"    # Z

    .line 2821
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V
    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2822
    return-void
.end method

.method setFirewallRule(III)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 2825
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2826
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    invoke-static {v1, p1}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2827
    monitor-exit v0

    .line 2828
    return-void

    .line 2827
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .registers 6
    .param p1, "blacklist"    # Z
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .line 2831
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2832
    if-eqz p1, :cond_15

    .line 2833
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1e

    .line 2837
    :catchall_13
    move-exception v1

    goto :goto_20

    .line 2835
    :cond_15
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2400(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2837
    :goto_1e
    monitor-exit v0

    .line 2838
    return-void

    .line 2837
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_13

    throw v1
.end method
