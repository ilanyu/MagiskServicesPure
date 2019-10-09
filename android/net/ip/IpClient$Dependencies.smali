.class public Landroid/net/ip/IpClient$Dependencies;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .registers 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 684
    invoke-static {p1}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    return-object v0
.end method

.method public getNMS()Landroid/os/INetworkManagementService;
    .registers 2

    .line 675
    const-string/jumbo v0, "network_management"

    .line 676
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method public getNetd()Landroid/net/INetd;
    .registers 2

    .line 680
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method
