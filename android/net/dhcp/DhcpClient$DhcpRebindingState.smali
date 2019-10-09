.class Landroid/net/dhcp/DhcpClient$DhcpRebindingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRebindingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 1144
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 1145
    const-string v0, "Rebound"

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->mLeaseMsg:Ljava/lang/String;

    .line 1146
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1150
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->enter()V

    .line 1154
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$4200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v0

    # invokes: Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$4300(Ljava/io/FileDescriptor;)V

    .line 1155
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$4400(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1156
    const-string v0, "DhcpClient"

    const-string v1, "Failed to recreate UDP socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1159
    :cond_26
    return-void
.end method

.method protected packetDestination()Ljava/net/Inet4Address;
    .registers 2

    .line 1163
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    return-object v0
.end method
