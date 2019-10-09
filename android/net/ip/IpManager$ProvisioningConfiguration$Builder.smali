.class public Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
.super Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 3

    .line 102
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-super {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public bridge synthetic withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;

    .line 82
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 83
    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 97
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 98
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "initialConfig"    # Landroid/net/ip/IpManager$InitialConfiguration;

    .line 72
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withInitialConfiguration(Landroid/net/ip/IpClient$InitialConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 73
    return-object p0
.end method

.method public bridge synthetic withNetwork(Landroid/net/Network;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withNetwork(Landroid/net/Network;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 92
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withNetwork(Landroid/net/Network;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 93
    return-object p0
.end method

.method public bridge synthetic withPreDhcpAction()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withPreDhcpAction(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .line 62
    invoke-super {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 63
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "dhcpActionTimeoutMs"    # I

    .line 67
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withPreDhcpAction(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 68
    return-object p0
.end method

.method public bridge synthetic withProvisioningTimeoutMs(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "timeoutMs"    # I

    .line 87
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withProvisioningTimeoutMs(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 88
    return-object p0
.end method

.method public bridge synthetic withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 2
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .line 77
    invoke-super {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 78
    return-object p0
.end method

.method public bridge synthetic withoutIPv4()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withoutIPv4()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withoutIPv4()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .line 47
    invoke-super {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withoutIPv4()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 48
    return-object p0
.end method

.method public bridge synthetic withoutIPv6()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .line 52
    invoke-super {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withoutIPv6()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 53
    return-object p0
.end method

.method public bridge synthetic withoutIpReachabilityMonitor()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .line 57
    invoke-super {p0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withoutIpReachabilityMonitor()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    .line 58
    return-object p0
.end method
