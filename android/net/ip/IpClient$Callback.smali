.class public Landroid/net/ip/IpClient$Callback;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .registers 2
    .param p1, "filter"    # [B

    .line 177
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 167
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .registers 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 161
    return-void
.end method

.method public onPostDhcpAction()V
    .registers 1

    .line 153
    return-void
.end method

.method public onPreDhcpAction()V
    .registers 1

    .line 152
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 164
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 163
    return-void
.end method

.method public onQuit()V
    .registers 1

    .line 174
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 2
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 187
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 191
    return-void
.end method

.method public startReadPacketFilter()V
    .registers 1

    .line 183
    return-void
.end method
