.class Landroid/net/ip/IpClient$StoppingState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1489
    iput-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1492
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1494
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1496
    :cond_13
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1500
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const v1, 0x30005

    if-eq v0, v1, :cond_1f

    const v1, 0x30007

    if-eq v0, v1, :cond_15

    .line 1514
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient;->deferMessage(Landroid/os/Message;)V

    goto :goto_32

    .line 1505
    :cond_15
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 1506
    goto :goto_32

    .line 1509
    :cond_1f
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1510
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1511
    goto :goto_32

    .line 1502
    :cond_31
    nop

    .line 1517
    :goto_32
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1518
    const/4 v0, 0x1

    return v0
.end method
