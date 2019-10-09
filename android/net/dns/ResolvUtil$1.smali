.class Landroid/net/dns/ResolvUtil$1;
.super Landroid/net/Network;
.source "ResolvUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/dns/ResolvUtil;->makeNetworkWithPrivateDnsBypass(Landroid/net/Network;)Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$network:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Landroid/net/Network;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/Network;

    .line 74
    iput-object p2, p0, Landroid/net/dns/ResolvUtil$1;->val$network:Landroid/net/Network;

    invoke-direct {p0, p1}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/net/dns/ResolvUtil$1;->val$network:Landroid/net/Network;

    invoke-static {v0, p1}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
