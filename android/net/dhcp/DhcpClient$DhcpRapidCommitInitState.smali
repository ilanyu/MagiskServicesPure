.class Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRapidCommitInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 637
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 638
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 639
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 643
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 644
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-nez v0, :cond_e

    .line 645
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->startNewTransaction()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 647
    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J
    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpClient;->access$1202(Landroid/net/dhcp/DhcpClient;J)J

    .line 648
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .line 659
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 660
    :cond_9
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-eqz v0, :cond_46

    .line 661
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v1

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 662
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 663
    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DhcpRapidCommitInitState:Got pending lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_8b

    .line 666
    :cond_46
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_6f

    .line 667
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 668
    .local v0, "results":Landroid/net/DhcpResults;
    const-string v1, "DhcpClient"

    const-string v2, "Received ACK in DhcpRapidCommitInitState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-eqz v0, :cond_6e

    .line 670
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 671
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Confirmed"

    # invokes: Landroid/net/dhcp/DhcpClient;->acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 674
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_6e
    goto :goto_8b

    :cond_6f
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_8b

    .line 675
    const-string v0, "DhcpClient"

    const-string v1, "Received NAK in DhcpRapidCommitInitState, returning to INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 677
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 679
    :cond_8b
    :goto_8b
    return-void
.end method

.method protected sendPacket()Z
    .registers 3

    .line 651
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-eqz v0, :cond_d

    .line 652
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    .line 653
    const/4 v0, 0x1

    return v0

    .line 655
    :cond_d
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1300(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
