.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field mUpstreamWanted:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1544
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    return-void
.end method

.method private updateUpstreamWanted()Z
    .registers 3

    .line 1578
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    .line 1579
    .local v0, "previousUpstreamWanted":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    .line 1580
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-eq v1, v0, :cond_27

    .line 1581
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-eqz v1, :cond_1e

    .line 1582
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->start()V

    goto :goto_27

    .line 1584
    :cond_1e
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->stop()V

    .line 1587
    :cond_27
    :goto_27
    return v0
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1552
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->turnOnMasterTetherSettings()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1553
    return-void

    .line 1556
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/SimChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/SimChangeListener;->startListening()V

    .line 1557
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->start()V

    .line 1560
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    .line 1562
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->start()V

    .line 1563
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1566
    :cond_3d
    return-void
.end method

.method public exit()V
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->stop()V

    .line 1571
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    .line 1572
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/SimChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/SimChangeListener;->stopListening()V

    .line 1573
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V

    .line 1574
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1575
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 1592
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V
    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    .line 1593
    const/4 v0, 0x1

    .line 1594
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_ca

    .line 1668
    :pswitch_10
    const/4 v0, 0x0

    goto/16 :goto_c8

    .line 1637
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    .line 1638
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 1639
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->updateDownstreamLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_c8

    .line 1641
    :cond_27
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1643
    goto/16 :goto_c8

    .line 1661
    .end local v1    # "newLp":Landroid/net/LinkProperties;
    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->updateUpstreamWanted()Z

    .line 1662
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-eqz v1, :cond_c8

    .line 1663
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILjava/lang/Object;)V

    goto/16 :goto_c8

    .line 1654
    :pswitch_48
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->updateUpstreamWanted()Z

    .line 1655
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-nez v1, :cond_51

    goto/16 :goto_c8

    .line 1657
    :cond_51
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1658
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1659
    goto :goto_c8

    .line 1646
    :pswitch_5e
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->updateUpstreamWanted()Z

    .line 1647
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-nez v1, :cond_66

    goto :goto_c8

    .line 1650
    :cond_66
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1651
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1652
    goto :goto_c8

    .line 1610
    :pswitch_6f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1612
    .local v1, "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateInactive(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1614
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1617
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->turnOffMasterTetherSettings()Z

    .line 1618
    goto :goto_c8

    .line 1630
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->updateUpstreamWanted()Z

    move-result v2

    .line 1631
    .local v2, "previousUpstreamWanted":Z
    if-eqz v2, :cond_c8

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-nez v3, :cond_c8

    .line 1632
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    goto :goto_c8

    .line 1596
    .end local v1    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .end local v2    # "previousUpstreamWanted":Z
    :pswitch_a0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1598
    .restart local v1    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateActive(ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$1300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1599
    const v3, 0x50070

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1600
    # getter for: Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object v4

    .line 1599
    invoke-virtual {v1, v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1603
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->updateUpstreamWanted()Z

    move-result v3

    .line 1604
    .local v3, "previousUpstreamWanted":Z
    if-nez v3, :cond_c8

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mUpstreamWanted:Z

    if-eqz v4, :cond_c8

    .line 1605
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v4, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1671
    .end local v1    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .end local v3    # "previousUpstreamWanted":Z
    :cond_c8
    :goto_c8
    return v0

    nop

    :pswitch_data_ca
    .packed-switch 0x50001
        :pswitch_a0
        :pswitch_6f
        :pswitch_5e
        :pswitch_48
        :pswitch_36
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method
