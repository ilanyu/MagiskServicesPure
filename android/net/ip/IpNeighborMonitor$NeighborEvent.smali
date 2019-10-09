.class public Landroid/net/ip/IpNeighborMonitor$NeighborEvent;
.super Ljava/lang/Object;
.source "IpNeighborMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpNeighborMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeighborEvent"
.end annotation


# instance fields
.field final elapsedMs:J

.field final ifindex:I

.field final ip:Ljava/net/InetAddress;

.field final macAddr:Landroid/net/MacAddress;

.field final msgType:S

.field final nudState:S


# direct methods
.method public constructor <init>(JSILjava/net/InetAddress;SLandroid/net/MacAddress;)V
    .registers 8
    .param p1, "elapsedMs"    # J
    .param p3, "msgType"    # S
    .param p4, "ifindex"    # I
    .param p5, "ip"    # Ljava/net/InetAddress;
    .param p6, "nudState"    # S
    .param p7, "macAddr"    # Landroid/net/MacAddress;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->elapsedMs:J

    .line 104
    iput-short p3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    .line 105
    iput p4, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    .line 106
    iput-object p5, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 107
    iput-short p6, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    .line 108
    iput-object p7, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    .line 109
    return-void
.end method


# virtual methods
.method isConnected()Z
    .registers 3

    .line 112
    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_10

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isValid()Z
    .registers 3

    .line 116
    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_10

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateValid(S)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 121
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    const-string v2, "NeighborEvent{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 122
    .local v0, "j":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->elapsedMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-short v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    .line 123
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 125
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-short v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    .line 126
    invoke-static {v2}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    return-object v1
.end method
