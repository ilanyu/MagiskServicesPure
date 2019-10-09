.class Landroid/net/ip/IpClient$RunningState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field private mDhcpActionInFlight:Z

.field private mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1585
    iput-object p1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;
    .registers 5

    .line 1678
    :try_start_0
    new-instance v0, Landroid/net/ip/ConnectivityPacketTracker;

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1679
    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$3600(Landroid/net/ip/IpClient;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ip/ConnectivityPacketTracker;-><init>(Landroid/os/Handler;Landroid/net/util/InterfaceParams;Landroid/util/LocalLog;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1678
    return-object v0

    .line 1680
    :catch_18
    move-exception v0

    .line 1681
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private ensureDhcpAction()V
    .registers 5

    .line 1686
    iget-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    if-nez v0, :cond_25

    .line 1687
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPreDhcpAction()V

    .line 1688
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    .line 1689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1690
    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1691
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1693
    .end local v0    # "alarmTime":J
    :cond_25
    return-void
.end method

.method public static synthetic lambda$enter$0(Landroid/net/ip/IpClient$RunningState;)V
    .registers 3

    .line 1632
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "OBSERVED AvoidBadWifi changed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private stopDhcpAction()V
    .registers 2

    .line 1696
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1697
    iget-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    if-eqz v0, :cond_17

    .line 1698
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPostDhcpAction()V

    .line 1699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    .line 1701
    :cond_17
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .line 1591
    new-instance v0, Landroid/net/apf/ApfFilter$ApfConfiguration;

    invoke-direct {v0}, Landroid/net/apf/ApfFilter$ApfConfiguration;-><init>()V

    .line 1592
    .local v0, "apfConfig":Landroid/net/apf/ApfFilter$ApfConfiguration;
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 1593
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->multicastFilter:Z

    .line 1595
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1596
    # getter for: Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->ieee802_3Filter:Z

    .line 1597
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1598
    # getter for: Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->ethTypeBlackList:[I

    .line 1599
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v4, v4, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-static {v2, v0, v3, v4}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;)Landroid/net/apf/ApfFilter;

    move-result-object v2

    # setter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1602
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 1603
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, v1, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient$Callback;->setFallbackMulticastFilter(Z)V

    .line 1606
    :cond_6b
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1607
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v1, :cond_82

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/ip/ConnectivityPacketTracker;->start(Ljava/lang/String;)V

    .line 1609
    :cond_82
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv6:Z

    if-eqz v1, :cond_a6

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->startIPv6()Z
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2900(Landroid/net/ip/IpClient;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1610
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x5

    # invokes: Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V
    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1611
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1612
    return-void

    .line 1615
    :cond_a6
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv4:Z

    if-eqz v1, :cond_ca

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->startIPv4()Z
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$3100(Landroid/net/ip/IpClient;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 1616
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x4

    # invokes: Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V
    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1617
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1618
    return-void

    .line 1621
    :cond_ca
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    .line 1622
    .local v1, "config":Landroid/net/ip/IpClient$InitialConfiguration;
    if-eqz v1, :cond_ee

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->applyInitialConfig(Landroid/net/ip/IpClient$InitialConfiguration;)Z
    invoke-static {v2, v1}, Landroid/net/ip/IpClient;->access$3200(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 1624
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v3, 0x7

    # invokes: Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1625
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1626
    return-void

    .line 1629
    :cond_ee
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-eqz v2, :cond_11c

    .line 1630
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    new-instance v3, Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v4, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1631
    # getter for: Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v5}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/net/ip/-$$Lambda$IpClient$RunningState$62CnAIrZ9p4JQ9DgmmpMjXifdaw;

    invoke-direct {v6, p0}, Landroid/net/ip/-$$Lambda$IpClient$RunningState$62CnAIrZ9p4JQ9DgmmpMjXifdaw;-><init>(Landroid/net/ip/IpClient$RunningState;)V

    invoke-direct {v3, v4, v5, v6}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1630
    # setter for: Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;

    .line 1633
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 1636
    :cond_11c
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-eqz v2, :cond_140

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->startIpReachabilityMonitor()Z
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3400(Landroid/net/ip/IpClient;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 1637
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v3, 0x6

    # invokes: Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1639
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1640
    return-void

    .line 1642
    :cond_140
    return-void
.end method

.method public exit()V
    .registers 4

    .line 1646
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1648
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1649
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    .line 1650
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # setter for: Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$3502(Landroid/net/ip/IpClient;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    .line 1653
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1654
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shutdown()V

    .line 1655
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # setter for: Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;

    .line 1658
    :cond_30
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1659
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v2, 0x30002

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 1660
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    .line 1663
    :cond_4d
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v0, :cond_58

    .line 1664
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Landroid/net/ip/ConnectivityPacketTracker;->stop()V

    .line 1665
    iput-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1668
    :cond_58
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 1669
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    .line 1670
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # setter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1673
    :cond_6e
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->resetLinkProperties()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$600(Landroid/net/ip/IpClient;)V

    .line 1674
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1705
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_190

    packed-switch v0, :pswitch_data_1a4

    packed-switch v0, :pswitch_data_1ac

    packed-switch v0, :pswitch_data_1b6

    .line 1829
    return v2

    .line 1786
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    .line 1787
    .local v0, "ipAddress":Landroid/net/LinkAddress;
    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ip/InterfaceController;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1788
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v2

    const v3, 0x30009

    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto/16 :goto_180

    .line 1790
    :cond_2f
    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v4, "Failed to set IPv4 address."

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1791
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1792
    # getter for: Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1791
    # invokes: Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    invoke-static {v2, v3, v4}, Landroid/net/ip/IpClient;->access$3900(Landroid/net/ip/IpClient;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1793
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1795
    goto/16 :goto_180

    .line 1782
    .end local v0    # "ipAddress":Landroid/net/LinkAddress;
    :pswitch_57
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 1783
    goto/16 :goto_180

    .line 1824
    :pswitch_62
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "Unexpected CMD_ON_QUIT."

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v3, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1825
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x0

    # setter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1826
    goto/16 :goto_180

    .line 1808
    :pswitch_73
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1810
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1be

    .line 1818
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "Unknown CMD_POST_DHCP_ACTION status: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    # invokes: Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v3, v4}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1820
    goto/16 :goto_180

    .line 1815
    :pswitch_8e
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleIPv4Failure()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$4100(Landroid/net/ip/IpClient;)V

    .line 1816
    goto/16 :goto_180

    .line 1812
    :pswitch_95
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DhcpResults;

    # invokes: Landroid/net/ip/IpClient;->handleIPv4Success(Landroid/net/DhcpResults;)V
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$4000(Landroid/net/ip/IpClient;Landroid/net/DhcpResults;)V

    .line 1813
    goto/16 :goto_180

    .line 1774
    :pswitch_a0
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-lez v0, :cond_af

    .line 1775
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->ensureDhcpAction()V

    goto/16 :goto_180

    .line 1777
    :cond_af
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 1779
    goto/16 :goto_180

    .line 1762
    :pswitch_b7
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 1763
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfFilter;->setDataSnapshot([B)V

    .line 1765
    :cond_cc
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3800(Landroid/net/ip/IpClient;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1766
    goto/16 :goto_180

    .line 1770
    :pswitch_d7
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1771
    goto/16 :goto_180

    .line 1752
    :pswitch_dc
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # setter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1502(Landroid/net/ip/IpClient;Z)Z

    .line 1753
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 1754
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    goto/16 :goto_180

    .line 1756
    :cond_102
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient$Callback;->setFallbackMulticastFilter(Z)V

    .line 1758
    goto/16 :goto_180

    .line 1746
    :pswitch_111
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/ProxyInfo;

    # setter for: Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1748
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1749
    goto :goto_180

    .line 1740
    :pswitch_120
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # setter for: Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 1742
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1743
    goto :goto_180

    .line 1734
    :pswitch_12f
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    move-result v0

    if-nez v0, :cond_180

    .line 1735
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_180

    .line 1728
    :pswitch_143
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_180

    .line 1729
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v2, 0x30006

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_180

    .line 1719
    :pswitch_158
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    if-eqz v0, :cond_180

    .line 1720
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    goto :goto_180

    .line 1711
    :pswitch_16a
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "ALERT: START received in StartedState. Please fix caller."

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v3, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1712
    goto :goto_180

    .line 1707
    :pswitch_174
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1708
    nop

    .line 1832
    :cond_180
    :goto_180
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1833
    return v1

    :pswitch_data_190
    .packed-switch 0x2
        :pswitch_174
        :pswitch_16a
        :pswitch_158
        :pswitch_143
        :pswitch_12f
        :pswitch_120
        :pswitch_111
        :pswitch_dc
    .end packed-switch

    :pswitch_data_1a4
    .packed-switch 0xb
        :pswitch_d7
        :pswitch_b7
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x30003
        :pswitch_a0
        :pswitch_73
        :pswitch_62
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x30007
        :pswitch_57
        :pswitch_11
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_95
        :pswitch_8e
    .end packed-switch
.end method
