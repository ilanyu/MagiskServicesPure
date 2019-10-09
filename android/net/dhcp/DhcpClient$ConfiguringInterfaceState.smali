.class Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfiguringInterfaceState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 995
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 998
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 999
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    const v2, 0x30008

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1000
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1004
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 1005
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30009

    if-eq v0, v1, :cond_c

    .line 1010
    const/4 v0, 0x0

    return v0

    .line 1007
    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1008
    const/4 v0, 0x1

    return v0
.end method
