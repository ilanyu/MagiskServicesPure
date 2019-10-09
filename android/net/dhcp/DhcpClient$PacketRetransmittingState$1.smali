.class Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;)V
    .registers 2
    .param p1, "this$1"    # Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    .line 772
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 775
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 778
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    const/4 v2, 0x1

    # setter for: Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->access$2402(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z

    goto :goto_21

    .line 779
    :cond_13
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 780
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    const/4 v2, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->access$2402(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z

    .line 783
    :cond_21
    :goto_21
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    invoke-virtual {v1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    .line 784
    return-void
.end method
