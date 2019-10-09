.class Landroid/net/dhcp/DhcpClient$DhcpBoundState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpBoundState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 1015
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method

.method private logTimeToBoundState()V
    .registers 7

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1060
    .local v0, "now":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$3800(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 1061
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v3, "RenewingBoundState"

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->access$3800(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-int v4, v4

    # invokes: Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->access$300(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    goto :goto_35

    .line 1063
    :cond_25
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v3, "InitialBoundState"

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-int v4, v4

    # invokes: Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->access$300(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    .line 1065
    :goto_35
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1018
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 1019
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    # invokes: Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3600(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1028
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)V

    .line 1029
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1032
    :cond_2d
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->scheduleLeaseTimers()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3700(Landroid/net/dhcp/DhcpClient;)V

    .line 1033
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->logTimeToBoundState()V

    .line 1034
    return-void
.end method

.method public exit()V
    .registers 4

    .line 1038
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    .line 1039
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J
    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpClient;->access$3802(Landroid/net/dhcp/DhcpClient;J)J

    .line 1040
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1044
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 1045
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30068

    if-eq v0, v1, :cond_c

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1047
    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$600(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1048
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2b

    .line 1050
    :cond_20
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$4000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1052
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method
