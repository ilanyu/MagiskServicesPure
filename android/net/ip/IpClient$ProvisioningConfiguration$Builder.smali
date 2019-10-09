.class public Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .registers 3

    .line 413
    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;

    .line 383
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 384
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/ip/IpClient$InitialConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "initialConfig"    # Landroid/net/ip/IpClient$InitialConfiguration;

    .line 373
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    .line 374
    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 403
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 404
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 364
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "dhcpActionTimeoutMs"    # I

    .line 368
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 369
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "timeoutMs"    # I

    .line 388
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 389
    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 394
    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 398
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 399
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .line 378
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 379
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 344
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 349
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 358
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 359
    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 354
    return-object p0
.end method
