.class public Landroid/net/ip/IpClient$InitialConfiguration;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public gateway:Ljava/net/Inet4Address;

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 475
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    return-void
.end method

.method public static copy(Landroid/net/ip/IpClient$InitialConfiguration;)Landroid/net/ip/IpClient$InitialConfiguration;
    .registers 4
    .param p0, "config"    # Landroid/net/ip/IpClient$InitialConfiguration;

    .line 480
    if-nez p0, :cond_4

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_4
    new-instance v0, Landroid/net/ip/IpClient$InitialConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$InitialConfiguration;-><init>()V

    .line 484
    .local v0, "configCopy":Landroid/net/ip/IpClient$InitialConfiguration;
    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 487
    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .registers 2
    .param p0, "prefixLength"    # I

    .line 583
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x40

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .registers 3
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 571
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .registers 3
    .param p0, "prefix"    # Landroid/net/IpPrefix;

    .line 588
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .registers 2
    .param p0, "addr"    # Landroid/net/LinkAddress;

    .line 592
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .registers 2
    .param p0, "prefix"    # Landroid/net/IpPrefix;

    .line 579
    invoke-virtual {p0}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpClient$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .registers 2
    .param p0, "addr"    # Landroid/net/LinkAddress;

    .line 575
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpClient$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static synthetic lambda$-qxDAAo5wjq2G7x-F8gQeNSxIxY(Landroid/net/IpPrefix;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WB134Aq_hrEPp-6UsNJgWvtMzBM(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$guZQ276VyezHQuIEE0CG9osvUes(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$gxc5co5uJUOrlWJ8HYqcngxR5gI(Landroid/net/IpPrefix;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 3
    .param p0, "addr"    # Landroid/net/LinkAddress;
    .param p1, "addrSeen"    # Landroid/net/LinkAddress;

    .line 554
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .registers 3
    .param p0, "prefix"    # Landroid/net/IpPrefix;
    .param p1, "routeSeen"    # Landroid/net/RouteInfo;

    .line 561
    invoke-static {p1, p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .registers 3
    .param p0, "addr"    # Landroid/net/LinkAddress;
    .param p1, "p"    # Landroid/net/IpPrefix;

    .line 505
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "p"    # Landroid/net/IpPrefix;

    .line 511
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    .line 549
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 550
    return v1

    .line 553
    :cond_a
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 554
    .local v2, "addr":Landroid/net/LinkAddress;
    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {p1, v3}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 555
    return v1

    .line 557
    .end local v2    # "addr":Landroid/net/LinkAddress;
    :cond_28
    goto :goto_10

    .line 559
    :cond_29
    if-eqz p2, :cond_4a

    .line 560
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 561
    .local v2, "prefix":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;-><init>(Landroid/net/IpPrefix;)V

    invoke-static {p2, v3}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 562
    return v1

    .line 564
    .end local v2    # "prefix":Landroid/net/IpPrefix;
    :cond_49
    goto :goto_31

    .line 567
    :cond_4a
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .registers 7

    .line 499
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 500
    return v1

    .line 504
    :cond_a
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 505
    .local v2, "addr":Landroid/net/LinkAddress;
    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;

    invoke-direct {v4, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 506
    return v1

    .line 508
    .end local v2    # "addr":Landroid/net/LinkAddress;
    :cond_2a
    goto :goto_10

    .line 510
    :cond_2b
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 511
    .local v2, "addr":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Vb5KM9_T-c7Jv1Lqbet5CRNEyjU;

    invoke-direct {v4, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Vb5KM9_T-c7Jv1Lqbet5CRNEyjU;-><init>(Ljava/net/InetAddress;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 512
    return v1

    .line 514
    .end local v2    # "addr":Ljava/net/InetAddress;
    :cond_4b
    goto :goto_31

    .line 517
    :cond_4c
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8;

    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 518
    return v1

    .line 522
    :cond_5b
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$gxc5co5uJUOrlWJ8HYqcngxR5gI;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$gxc5co5uJUOrlWJ8HYqcngxR5gI;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$WB134Aq_hrEPp-6UsNJgWvtMzBM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$WB134Aq_hrEPp-6UsNJgWvtMzBM;

    .line 523
    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 524
    return v1

    .line 528
    :cond_74
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;

    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 529
    return v1

    .line 532
    :cond_83
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v2, Ljava/net/Inet4Address;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_a2

    .line 533
    return v1

    .line 536
    :cond_a2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 492
    const-string v0, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s}, v4 gateway: %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 494
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 495
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->gateway:Ljava/net/Inet4Address;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 492
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
