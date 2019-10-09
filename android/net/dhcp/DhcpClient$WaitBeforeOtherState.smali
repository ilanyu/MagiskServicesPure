.class abstract Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "WaitBeforeOtherState"
.end annotation


# instance fields
.field protected mOtherState:Lcom/android/internal/util/State;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 580
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 585
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 586
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x30003

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 587
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 591
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 592
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30006

    if-eq v0, v1, :cond_c

    .line 597
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;->mOtherState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 595
    const/4 v0, 0x1

    return v0
.end method
