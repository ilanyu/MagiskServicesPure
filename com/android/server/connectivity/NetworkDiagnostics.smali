.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mExplicitSourceIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 90
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    .line 171
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 172
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    .line 174
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    .line 175
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    .line 176
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    .line 183
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 189
    :cond_48
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 190
    :cond_58
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 193
    :cond_5f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 194
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 195
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 196
    .local v2, "gateway":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 197
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 198
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V

    .line 201
    .end local v1    # "route":Landroid/net/RouteInfo;
    .end local v2    # "gateway":Ljava/net/InetAddress;
    :cond_8b
    goto :goto_69

    .line 202
    :cond_8c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 203
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 204
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    .line 205
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    goto :goto_96

    .line 207
    :cond_a9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 209
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifaces{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} index{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} nethandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 214
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 86
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    .line 86
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 86
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 86
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 86
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    return-wide v0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "ifname"    # Ljava/lang/String;

    .line 219
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 220
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 221
    .end local v0    # "ni":Ljava/net/NetworkInterface;
    :catch_d
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static final now()J
    .registers 2

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .line 249
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 250
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 251
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 252
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1e
    return-void
.end method

.method private prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "target"    # Ljava/net/InetAddress;

    .line 235
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 236
    .local v1, "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 237
    .local v2, "source":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_47

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 238
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .local v3, "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 240
    new-instance v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 241
    .local v4, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v6, p0, v2, p1, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 242
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v1    # "l":Landroid/net/LinkAddress;
    .end local v2    # "source":Ljava/net/InetAddress;
    .end local v3    # "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    .end local v4    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_47
    goto :goto_a

    .line 246
    :cond_48
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .line 227
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 228
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 229
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 230
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1e
    return-void
.end method

.method private startMeasurements()V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 262
    .local v1, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 263
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    goto :goto_a

    .line 264
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 265
    .restart local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 266
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    goto :goto_26

    .line 267
    :cond_38
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 268
    .restart local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 269
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    goto :goto_42

    .line 270
    :cond_54
    return-void
.end method

.method private totalMeasurementCount()I
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkDiagnostics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 326
    .local v0, "unfinished":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: countdown wait incomplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " unfinished measurements"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_3b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 336
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->getMeasurements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 337
    .local v3, "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->checkSucceeded()Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v4, "."

    goto :goto_5d

    :cond_5b
    const-string v4, "F"

    .line 338
    .local v4, "prefix":Ljava/lang/String;
    :goto_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .end local v3    # "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    goto :goto_46

    .line 341
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_79
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 342
    return-void
.end method

.method public getMeasurements()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v0, "measurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 286
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_30

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_30
    goto :goto_13

    .line 291
    :cond_31
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 292
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_5c

    .line 293
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_5c
    goto :goto_3b

    .line 296
    :cond_5d
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_84

    .line 298
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_84
    goto :goto_67

    .line 303
    :cond_85
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_ac

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_ac
    goto :goto_8f

    .line 309
    :cond_ad
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 310
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_d8

    .line 311
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_d8
    goto :goto_b7

    .line 314
    :cond_d9
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 315
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_100

    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_100
    goto :goto_e3

    .line 320
    :cond_101
    return-object v0
.end method

.method public waitForMeasurements()V
    .registers 6

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 275
    goto :goto_10

    :catch_f
    move-exception v0

    .line 276
    :goto_10
    return-void
.end method
