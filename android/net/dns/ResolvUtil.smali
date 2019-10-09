.class public Landroid/net/dns/ResolvUtil;
.super Ljava/lang/Object;
.source "ResolvUtil.java"


# static fields
.field private static final NETID_USE_LOCAL_NAMESERVERS:J = 0x80000000L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    sget v0, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    invoke-static {p0, p1, v0}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 8
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aiFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/system/StructAddrinfo;

    invoke-direct {v0}, Landroid/system/StructAddrinfo;-><init>()V

    .line 53
    .local v0, "hints":Landroid/system/StructAddrinfo;
    iput p2, v0, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 55
    sget v1, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v1, v0, Landroid/system/StructAddrinfo;->ai_family:I

    .line 56
    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v1, v0, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 58
    invoke-static {p0}, Landroid/net/dns/ResolvUtil;->getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;

    move-result-object v1

    .line 61
    .local v1, "networkForResolv":Landroid/net/Network;
    :try_start_13
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v3, v1, Landroid/net/Network;->netId:I

    invoke-interface {v2, p1, v0, v3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1b
    .catch Landroid/system/GaiException; {:try_start_13 .. :try_end_1b} :catch_1c

    return-object v2

    .line 62
    :catch_1c
    move-exception v2

    .line 63
    .local v2, "gai":Landroid/system/GaiException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": TLS-bypass resolution failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    .line 64
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;
    .registers 5
    .param p0, "network"    # Landroid/net/Network;

    .line 69
    iget v0, p0, Landroid/net/Network;->netId:I

    int-to-long v0, v0

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    .line 70
    .local v0, "netidForResolv":J
    new-instance v2, Landroid/net/Network;

    long-to-int v3, v0

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    return-object v2
.end method

.method public static makeNetworkWithPrivateDnsBypass(Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "network"    # Landroid/net/Network;

    .line 74
    new-instance v0, Landroid/net/dns/ResolvUtil$1;

    invoke-direct {v0, p0, p0}, Landroid/net/dns/ResolvUtil$1;-><init>(Landroid/net/Network;Landroid/net/Network;)V

    return-object v0
.end method
