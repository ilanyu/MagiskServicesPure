.class Landroid/net/ip/IpClient$1;
.super Landroid/net/ip/IpClient$Dependencies;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nwService:Landroid/os/INetworkManagementService;


# direct methods
.method constructor <init>(Landroid/os/INetworkManagementService;)V
    .registers 2

    .line 698
    iput-object p1, p0, Landroid/net/ip/IpClient$1;->val$nwService:Landroid/os/INetworkManagementService;

    invoke-direct {p0}, Landroid/net/ip/IpClient$Dependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getNMS()Landroid/os/INetworkManagementService;
    .registers 2

    .line 700
    iget-object v0, p0, Landroid/net/ip/IpClient$1;->val$nwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method
