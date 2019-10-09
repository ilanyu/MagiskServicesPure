.class Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveLeaseState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 967
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .line 984
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 985
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 986
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 987
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)V

    .line 991
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x30007

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 992
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 970
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x3006a

    if-eq v0, v1, :cond_9

    .line 977
    const/4 v0, 0x0

    return v0

    .line 972
    :cond_9
    const-string v0, "DhcpClient"

    const-string v1, "Lease expired!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)V

    .line 974
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 975
    const/4 v0, 0x1

    return v0
.end method
