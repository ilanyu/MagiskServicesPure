.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;,
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mInterface:Landroid/net/util/InterfaceParams;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    .line 73
    const/16 v0, 0x85

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    .line 74
    const/16 v0, 0x86

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    return-void

    :array_22
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/net/util/InterfaceParams;)V
    .registers 5
    .param p1, "ifParams"    # Landroid/net/util/InterfaceParams;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    .line 108
    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    .line 226
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    .line 227
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v1, v1, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 228
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 229
    return-void
.end method

.method static synthetic access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$500()B
    .registers 1

    .line 71
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 71
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;

    .line 71
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 71
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static asByte(I)B
    .registers 2
    .param p0, "value"    # I

    .line 348
    int-to-byte v0, p0

    return v0
.end method

.method private static asShort(I)S
    .registers 2
    .param p0, "value"    # I

    .line 349
    int-to-short v0, p0

    return v0
.end method

.method private assembleRaLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 274
    .local v0, "ra":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    const/4 v1, 0x0

    move v2, v1

    .line 279
    .local v2, "shouldSendRA":Z
    :try_start_d
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-boolean v3, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    invoke-static {v0, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;Z)V

    .line 280
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v3, v3, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v3}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    .line 281
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 290
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v3, :cond_78

    .line 291
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget v3, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-static {v0, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    .line 292
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 294
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v3, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xe10

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 295
    .local v4, "ipp":Landroid/net/IpPrefix;
    invoke-static {v0, v4, v5, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 297
    const/4 v2, 0x1

    .line 298
    .end local v4    # "ipp":Landroid/net/IpPrefix;
    goto :goto_47

    .line 300
    :cond_60
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v3, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_78

    .line 301
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v3, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-static {v0, v3, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 302
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 303
    const/4 v2, 0x1

    .line 307
    :cond_78
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v3}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 308
    .restart local v4    # "ipp":Landroid/net/IpPrefix;
    invoke-static {v0, v4, v1, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 310
    const/4 v2, 0x1

    .line 311
    .end local v4    # "ipp":Landroid/net/IpPrefix;
    goto :goto_82

    .line 313
    :cond_99
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v3}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    move-result-object v3

    .line 314
    .local v3, "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_af

    .line 315
    invoke-static {v0, v3, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 316
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_ae
    .catch Ljava/nio/BufferOverflowException; {:try_start_d .. :try_end_ae} :catch_b0

    .line 317
    const/4 v2, 0x1

    .line 324
    .end local v3    # "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    :cond_af
    goto :goto_c7

    .line 319
    :catch_b0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/nio/BufferOverflowException;
    sget-object v4, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not construct new RA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v3    # "e":Ljava/nio/BufferOverflowException;
    :goto_c7
    if-nez v2, :cond_cb

    .line 328
    iput v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 330
    :cond_cb
    return-void
.end method

.method private closeSocket()V
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_b

    .line 596
    :try_start_4
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 597
    goto :goto_b

    :catch_a
    move-exception v0

    .line 599
    :cond_b
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 600
    return-void
.end method

.method private createSocket()Z
    .registers 8

    .line 572
    const/16 v0, 0x12c

    .line 574
    .local v0, "SEND_TIMEOUT_MS":I
    const/16 v1, -0xbd

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 576
    .local v1, "oldTag":I
    :try_start_8
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 578
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v5, 0x12c

    .line 579
    invoke-static {v5, v6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v5

    .line 578
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 580
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v5, v5, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 581
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 582
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_3e} :catch_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3e} :catch_46
    .catchall {:try_start_8 .. :try_end_3e} :catchall_44

    .line 587
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 588
    nop

    .line 590
    const/4 v2, 0x1

    return v2

    .line 587
    :catchall_44
    move-exception v2

    goto :goto_62

    .line 583
    :catch_46
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/Exception;
    :try_start_47
    sget-object v3, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create RA daemon socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_44

    .line 585
    const/4 v3, 0x0

    .line 587
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 585
    return v3

    .line 587
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v2
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .registers 5
    .param p0, "scopeId"    # I

    .line 341
    :try_start_0
    const-string v0, "ff02::1"

    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    invoke-static {v0, v1, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 342
    :catch_9
    move-exception v0

    .line 343
    .local v0, "uhe":Ljava/net/UnknownHostException;
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct ff02::1 InetAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSocketValid()Z
    .registers 3

    .line 603
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 604
    .local v0, "s":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .registers 6
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .line 608
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 609
    return v1

    .line 612
    :cond_a
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 613
    .local v0, "destip":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_26

    .line 614
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    .line 615
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    if-ne v2, v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 613
    :goto_27
    return v1
.end method

.method private maybeNotifyMulticastTransmitter()V
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 334
    .local v0, "m":Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
    if-eqz v0, :cond_7

    .line 335
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    .line 337
    :cond_7
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .registers 9
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .line 619
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 620
    :cond_8
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 624
    :cond_a
    :try_start_a
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_44
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_d} :catch_44

    .line 625
    :try_start_d
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_15

    .line 627
    monitor-exit v6

    return-void

    .line 629
    :cond_15
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    const/4 v2, 0x0

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 630
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_41

    .line 631
    :try_start_22
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RA sendto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_40} :catch_44
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_40} :catch_44

    .line 636
    goto :goto_62

    .line 630
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_43 .. :try_end_44} :catch_44
    .catch Ljava/net/SocketException; {:try_start_43 .. :try_end_44} :catch_44

    .line 632
    :catch_44
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 634
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    return-void
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;

    .line 415
    const/16 v0, 0x1a

    .line 416
    .local v0, "ND_OPTION_EFO":B
    const/4 v1, 0x1

    .line 418
    .local v1, "EFO_NUM_8OCTETS":B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 420
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 421
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 422
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "hasDefaultRoute"    # Z

    .line 369
    const/16 v0, 0x40

    .line 370
    .local v0, "DEFAULT_HOPLIMIT":B
    sget-byte v1, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 371
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 372
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 373
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 375
    if-eqz p1, :cond_28

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v3

    goto :goto_2c

    :cond_28
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v3

    :goto_2c
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 376
    if-eqz p1, :cond_39

    const/16 v3, 0xe10

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    goto :goto_3d

    :cond_39
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    :goto_3d
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 379
    return-void
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "mtu"    # I

    .line 436
    const/4 v0, 0x5

    .line 437
    .local v0, "ND_OPTION_MTU":B
    const/4 v1, 0x1

    .line 438
    .local v1, "MTU_NUM_8OCTETS":B
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 439
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 440
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 441
    const/16 v3, 0x500

    if-ge p1, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, p1

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 442
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .registers 10
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;
    .param p2, "validTime"    # I
    .param p3, "preferredTime"    # I

    .line 469
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 470
    .local v0, "prefixLength":I
    const/16 v1, 0x40

    if-eq v0, v1, :cond_9

    .line 471
    return-void

    .line 473
    :cond_9
    const/4 v1, 0x3

    .line 474
    .local v1, "ND_OPTION_PIO":B
    const/4 v2, 0x4

    .line 476
    .local v2, "PIO_NUM_8OCTETS":B
    if-gez p2, :cond_e

    const/4 p2, 0x0

    .line 477
    :cond_e
    if-gez p3, :cond_11

    const/4 p3, 0x0

    .line 478
    :cond_11
    if-le p3, p2, :cond_14

    move p3, p2

    .line 480
    :cond_14
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 481
    .local v3, "addr":[B
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x4

    .line 482
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 483
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0xc0

    .line 484
    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 485
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 486
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 487
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 488
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 489
    return-void
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .registers 9
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p2, "lifetime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    .line 545
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v0, "filteredDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 547
    .local v2, "dns":Ljava/net/Inet6Address;
    new-instance v3, Landroid/net/LinkAddress;

    const/16 v4, 0x40

    invoke-direct {v3, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 548
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_25
    goto :goto_9

    .line 551
    :cond_26
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    return-void

    .line 553
    :cond_2d
    const/16 v1, 0x19

    .line 554
    .local v1, "ND_OPTION_RDNSS":B
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    .line 555
    .local v2, "RDNSS_NUM_8OCTETS":B
    const/16 v3, 0x19

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 556
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    .line 557
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 558
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 560
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Inet6Address;

    .line 567
    .local v4, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 568
    .end local v4    # "dns":Ljava/net/Inet6Address;
    goto :goto_55

    .line 569
    :cond_69
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .registers 11
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;

    .line 507
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 508
    .local v0, "prefixLength":I
    const/16 v1, 0x40

    if-le v0, v1, :cond_9

    .line 509
    return-void

    .line 511
    :cond_9
    const/16 v2, 0x18

    .line 513
    .local v2, "ND_OPTION_RIO":B
    const/16 v3, 0x8

    if-nez v0, :cond_11

    const/4 v4, 0x1

    goto :goto_16

    :cond_11
    if-gt v0, v3, :cond_15

    const/4 v4, 0x2

    goto :goto_16

    :cond_15
    const/4 v4, 0x3

    .line 512
    :goto_16
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v4

    .line 515
    .local v4, "RIO_NUM_8OCTETS":B
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 516
    .local v5, "addr":[B
    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 517
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 518
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 519
    invoke-static {v6}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0xe10

    .line 520
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 523
    if-lez v0, :cond_4c

    .line 524
    const/4 v6, 0x0

    if-gt v0, v1, :cond_47

    goto :goto_49

    :cond_47
    const/16 v3, 0x10

    :goto_49
    invoke-virtual {p0, v5, v6, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 526
    :cond_4c
    return-void
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .registers 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "slla"    # [B

    .line 391
    if-eqz p1, :cond_16

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    goto :goto_16

    .line 395
    :cond_7
    const/4 v0, 0x1

    .line 396
    .local v0, "ND_OPTION_SLLA":B
    const/4 v1, 0x1

    .line 397
    .local v1, "SLLA_NUM_8OCTETS":B
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 398
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 399
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    return-void

    .line 393
    .end local v0    # "ND_OPTION_SLLA":B
    .end local v1    # "SLLA_NUM_8OCTETS":B
    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6
    .param p1, "deprecatedParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p2, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 232
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    if-eqz p1, :cond_16

    .line 234
    :try_start_5
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    .line 235
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    goto :goto_16

    .line 246
    :catchall_14
    move-exception v1

    goto :goto_30

    .line 238
    :cond_16
    :goto_16
    if-eqz p2, :cond_26

    .line 240
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    .line 241
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    .line 244
    :cond_26
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 245
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    .line 246
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_14

    .line 248
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 249
    return-void

    .line 246
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_14

    throw v1
.end method

.method public start()Z
    .registers 3

    .line 252
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    move-result v0

    if-nez v0, :cond_8

    .line 253
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_8
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 257
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->start()V

    .line 259
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 260
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->start()V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .registers 2

    .line 266
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 268
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 269
    return-void
.end method
