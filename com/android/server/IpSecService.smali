.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$UidFdTagger;,
        Lcom/android/server/IpSecService$EncapSocketRecord;,
        Lcom/android/server/IpSecService$TunnelInterfaceRecord;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$RefcountedResourceArray;,
        Lcom/android/server/IpSecService$OwnedResourceRecord;,
        Lcom/android/server/IpSecService$UserResourceTracker;,
        Lcom/android/server/IpSecService$UserRecord;,
        Lcom/android/server/IpSecService$ResourceTracker;,
        Lcom/android/server/IpSecService$RefcountedResource;,
        Lcom/android/server/IpSecService$IResource;,
        Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field private static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT_MS:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field static final TUN_INTF_NETID_RANGE:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TUN_INTF_NETID_START:I = 0xfc00
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WILDCARD_ADDRESSES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextResourceId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "IpSecService.this"
    .end annotation
.end field

.field private mNextTunnelNetIdIndex:I

.field private final mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

.field private final mTunnelNetIds:Landroid/util/SparseBooleanArray;

.field final mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

.field final mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    const-string v0, "IpSecService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/IpSecService;->DBG:Z

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    .line 94
    const-string v0, "0.0.0.0"

    const-string v1, "::"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x4

    :try_start_1c
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_1c .. :try_end_27} :catch_29

    .line 105
    nop

    .line 106
    return-void

    .line 103
    :catch_29
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_30
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 970
    sget-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V

    .line 971
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 989
    sget-object v0, Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;->INSTANCE:Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V

    .line 1000
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .param p3, "uidFdTagger"    # Lcom/android/server/IpSecService$UidFdTagger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1005
    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    .line 469
    new-instance v0, Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-direct {v0}, Lcom/android/server/IpSecService$UserResourceTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    .line 751
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 1006
    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    .line 1007
    iput-object p2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1008
    iput-object p3, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    .line 1009
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/IpSecService;

    .line 87
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 87
    sget-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .registers 1

    .line 87
    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)I
    .registers 8
    .param p1, "sockFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1144
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_4d

    .line 1146
    :try_start_4
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1147
    .local v1, "probeSocket":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 1148
    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 1149
    .local v2, "port":I
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 1150
    const-string v3, "IpSecService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget-object v3, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v3, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_3c} :catch_3d

    .line 1152
    return v2

    .line 1153
    .end local v1    # "probeSocket":Ljava/io/FileDescriptor;
    .end local v2    # "port":I
    :catch_3d
    move-exception v1

    .line 1155
    .local v1, "e":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_48

    .line 1156
    nop

    .line 1144
    .end local v1    # "e":Landroid/system/ErrnoException;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1158
    .restart local v1    # "e":Landroid/system/ErrnoException;
    :cond_48
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1161
    .end local v0    # "i":I
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed 10 attempts to bind to a port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkDirection(I)V
    .registers 4
    .param p0, "direction"    # I

    .line 1064
    packed-switch p0, :pswitch_data_1c

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :pswitch_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static checkInetAddress(Ljava/lang/String;)V
    .registers 5
    .param p0, "inetAddress"    # Ljava/lang/String;

    .line 1048
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1052
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1054
    .local v0, "checkAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1057
    return-void

    .line 1055
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inappropriate wildcard address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    .end local v0    # "checkAddr":Ljava/net/InetAddress;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unspecified address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIpSecConfig(Landroid/net/IpSecConfig;)V
    .registers 7
    .param p1, "config"    # Landroid/net/IpSecConfig;

    .line 1425
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1427
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    .line 1442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encap Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1433
    :pswitch_2c
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1434
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v2

    .line 1433
    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    .line 1436
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    .line 1437
    .local v1, "port":I
    if-lez v1, :cond_41

    const v2, 0xffff

    if-gt v1, v2, :cond_41

    .end local v1    # "port":I
    goto :goto_59

    .line 1438
    .restart local v1    # "port":I
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remote UDP port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1429
    .end local v1    # "port":I
    :pswitch_58
    nop

    .line 1445
    :goto_59
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService;->validateAlgorithms(Landroid/net/IpSecConfig;)V

    .line 1448
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    .line 1451
    .local v1, "s":Lcom/android/server/IpSecService$SpiRecord;
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getOwnedByTransform()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 1456
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1457
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setDestinationAddress(Ljava/lang/String;)V

    .line 1461
    :cond_7f
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1468
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_da

    .line 1479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IpSecTransform.mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1477
    :pswitch_bd
    goto :goto_bf

    .line 1475
    :pswitch_be
    nop

    .line 1482
    :goto_bf
    return-void

    .line 1462
    :cond_c0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mismatched remote addresseses."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1452
    :cond_c8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SPI already in use; cannot be used in new Transforms"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_be
        :pswitch_bd
    .end packed-switch
.end method

.method private connectNativeNetdService()V
    .registers 2

    .line 1021
    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    .line 1028
    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    .line 1029
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 974
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    .line 975
    .local v0, "service":Lcom/android/server/IpSecService;
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 976
    return-object v0
.end method

.method private createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .registers 34
    .param p1, "c"    # Landroid/net/IpSecConfig;
    .param p2, "resourceId"    # I
    .param p3, "spiRecord"    # Lcom/android/server/IpSecService$SpiRecord;
    .param p4, "socketRecord"    # Lcom/android/server/IpSecService$EncapSocketRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v21

    .local v21, "encapType":I
    const/4 v0, 0x0

    .local v0, "encapLocalPort":I
    const/4 v1, 0x0

    .line 1505
    .local v1, "encapRemotePort":I
    if-eqz v21, :cond_10

    .line 1506
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/IpSecService$EncapSocketRecord;->getPort()I

    move-result v0

    .line 1507
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    .line 1510
    .end local v0    # "encapLocalPort":I
    .end local v1    # "encapRemotePort":I
    .local v22, "encapLocalPort":I
    .local v23, "encapRemotePort":I
    :cond_10
    move/from16 v22, v0

    move/from16 v23, v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v15

    .line 1511
    .local v15, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v14

    .line 1512
    .local v14, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v13

    .line 1515
    .local v13, "authCrypt":Landroid/net/IpSecAlgorithm;
    if-nez v14, :cond_2a

    .line 1516
    if-nez v13, :cond_27

    const-string v0, "ecb(cipher_null)"

    goto :goto_29

    :cond_27
    const-string v0, ""

    .local v0, "cryptName":Ljava/lang/String;
    :goto_29
    goto :goto_2e

    .line 1518
    .end local v0    # "cryptName":Ljava/lang/String;
    :cond_2a
    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    .local v12, "cryptName":Ljava/lang/String;
    :goto_2e
    move-object v12, v0

    .line 1521
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1522
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 1525
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v2

    .line 1526
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    .line 1528
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_52

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v1

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 1529
    move v6, v1

    goto :goto_54

    .line 1528
    :cond_52
    nop

    .line 1529
    move v6, v5

    :goto_54
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v7

    .line 1530
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v8

    .line 1531
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v9

    .line 1532
    if-eqz v15, :cond_68

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1533
    :goto_66
    move-object v10, v1

    goto :goto_6b

    .line 1532
    :cond_68
    const-string v1, ""

    goto :goto_66

    .line 1533
    :goto_6b
    if-eqz v15, :cond_74

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    .line 1534
    :goto_71
    move-object/from16 v16, v1

    goto :goto_77

    .line 1533
    :cond_74
    new-array v1, v5, [B

    goto :goto_71

    .line 1534
    :goto_77
    if-eqz v15, :cond_80

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    .line 1536
    move/from16 v17, v1

    goto :goto_83

    .line 1534
    :cond_80
    nop

    .line 1536
    move/from16 v17, v5

    :goto_83
    if-eqz v14, :cond_8c

    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    .line 1537
    :goto_89
    move-object/from16 v18, v1

    goto :goto_8f

    .line 1536
    :cond_8c
    new-array v1, v5, [B

    goto :goto_89

    .line 1537
    :goto_8f
    if-eqz v14, :cond_98

    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    .line 1538
    move/from16 v19, v1

    goto :goto_9b

    .line 1537
    :cond_98
    nop

    .line 1538
    move/from16 v19, v5

    :goto_9b
    if-eqz v13, :cond_a4

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1539
    :goto_a1
    move-object/from16 v20, v1

    goto :goto_a7

    .line 1538
    :cond_a4
    const-string v1, ""

    goto :goto_a1

    .line 1539
    :goto_a7
    if-eqz v13, :cond_b0

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    .line 1540
    :goto_ad
    move-object/from16 v24, v1

    goto :goto_b3

    .line 1539
    :cond_b0
    new-array v1, v5, [B

    goto :goto_ad

    .line 1540
    :goto_b3
    if-eqz v13, :cond_bc

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    .line 1523
    move/from16 v25, v1

    goto :goto_bf

    .line 1540
    :cond_bc
    nop

    .line 1523
    move/from16 v25, v5

    :goto_bf
    move/from16 v1, p2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v26, v13

    move-object/from16 v13, v18

    .end local v13    # "authCrypt":Landroid/net/IpSecAlgorithm;
    .local v26, "authCrypt":Landroid/net/IpSecAlgorithm;
    move-object/from16 v27, v14

    move/from16 v14, v19

    .end local v14    # "crypt":Landroid/net/IpSecAlgorithm;
    .local v27, "crypt":Landroid/net/IpSecAlgorithm;
    move-object/from16 v28, v15

    move-object/from16 v15, v20

    .end local v15    # "auth":Landroid/net/IpSecAlgorithm;
    .local v28, "auth":Landroid/net/IpSecAlgorithm;
    move-object/from16 v16, v24

    move/from16 v17, v25

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-interface/range {v0 .. v20}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 1544
    return-void
.end method

.method private enforceTunnelPermissions(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1485
    const-string v0, "Null calling package cannot create IpSec tunnels"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-direct {p0}, Lcom/android/server/IpSecService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    .line 1488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1486
    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1490
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    nop

    .line 1498
    return-void

    .line 1496
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Request to ignore AppOps for non-legacy API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_2b
    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 4

    .line 981
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 982
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz v0, :cond_d

    .line 983
    return-object v0

    .line 982
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System Server couldn\'t get AppOps"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$new$0(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 995
    invoke-static {p0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 997
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 998
    nop

    .line 999
    return-void

    .line 997
    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    throw v0
.end method

.method private releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    .registers 4
    .param p1, "resArray"    # Lcom/android/server/IpSecService$RefcountedResourceArray;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V

    .line 1120
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 10
    .param p1, "tunnelResourceId"    # I
    .param p2, "localAddr"    # Landroid/net/LinkAddress;
    .param p3, "callingPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 1333
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1338
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1339
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1344
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_16
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1345
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1347
    # getter for: Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1348
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1349
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1346
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1352
    nop

    .line 1353
    monitor-exit p0

    return-void

    .line 1350
    :catch_32
    move-exception v2

    .line 1351
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1332
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "localAddr":Landroid/net/LinkAddress;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_38
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .registers 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "requestedSpi"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    monitor-enter p0

    .line 1076
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1078
    if-lez v8, :cond_19

    const/16 v0, 0x100

    if-lt v8, v0, :cond_11

    goto :goto_19

    .line 1079
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ESP SPI must not be in the range of 0-255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_19
    :goto_19
    const-string v0, "Null Binder passed to allocateSecurityParameterIndex"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    iget-object v0, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v10, v0

    .line 1084
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v0, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_b2

    move v11, v0

    .line 1086
    .local v11, "resourceId":I
    const/4 v0, 0x0

    move v1, v0

    .line 1088
    .local v1, "spi":I
    const/4 v12, -0x1

    :try_start_33
    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v2}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_43

    .line 1089
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v12, v1}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_41
    .catch Landroid/os/ServiceSpecificException; {:try_start_33 .. :try_end_41} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_95
    .catchall {:try_start_33 .. :try_end_41} :catchall_b2

    monitor-exit p0

    return-object v0

    .line 1093
    :cond_43
    :try_start_43
    iget-object v2, v7, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1095
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    const-string v3, ""
    :try_end_4b
    .catch Landroid/os/ServiceSpecificException; {:try_start_43 .. :try_end_4b} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4b} :catch_95
    .catchall {:try_start_43 .. :try_end_4b} :catchall_b2

    .line 1096
    move-object/from16 v13, p1

    :try_start_4d
    invoke-interface {v2, v11, v3, v13, v8}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_51
    .catch Landroid/os/ServiceSpecificException; {:try_start_4d .. :try_end_51} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_51} :catch_91
    .catchall {:try_start_4d .. :try_end_51} :catchall_b2

    move v14, v2

    .line 1097
    .end local v1    # "spi":I
    .local v14, "spi":I
    :try_start_52
    const-string v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocated SPI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v15, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v5, Lcom/android/server/IpSecService$SpiRecord;

    const-string v4, ""

    move-object v1, v5

    move-object v2, v7

    move v3, v11

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v16, v6

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V

    new-array v1, v0, [Lcom/android/server/IpSecService$RefcountedResource;

    move-object/from16 v2, v16

    invoke-direct {v2, v7, v12, v9, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v15, v11, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_85
    .catch Landroid/os/ServiceSpecificException; {:try_start_52 .. :try_end_85} :catch_8f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_85} :catch_8d
    .catchall {:try_start_52 .. :try_end_85} :catchall_b2

    .line 1110
    nop

    .line 1111
    :try_start_86
    new-instance v1, Landroid/net/IpSecSpiResponse;

    invoke-direct {v1, v0, v11, v14}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_b2

    monitor-exit p0

    return-object v1

    .line 1108
    :catch_8d
    move-exception v0

    goto :goto_99

    .line 1102
    :catch_8f
    move-exception v0

    goto :goto_a2

    .line 1108
    .end local v14    # "spi":I
    .restart local v1    # "spi":I
    :catch_91
    move-exception v0

    goto :goto_98

    .line 1102
    :catch_93
    move-exception v0

    goto :goto_a1

    .line 1108
    :catch_95
    move-exception v0

    move-object/from16 v13, p1

    .end local v1    # "spi":I
    .restart local v14    # "spi":I
    :goto_98
    move v14, v1

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1102
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "spi":I
    .restart local v1    # "spi":I
    :catch_9e
    move-exception v0

    move-object/from16 v13, p1

    .end local v1    # "spi":I
    .restart local v14    # "spi":I
    :goto_a1
    move v14, v1

    .line 1103
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :goto_a2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    if-ne v1, v2, :cond_b1

    .line 1104
    new-instance v1, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v14}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_af
    .catchall {:try_start_99 .. :try_end_af} :catchall_b2

    monitor-exit p0

    return-object v1

    .line 1107
    :cond_b1
    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 1075
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v11    # "resourceId":I
    .end local v14    # "spi":I
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "requestedSpi":I
    .end local p3    # "binder":Landroid/os/IBinder;
    :catchall_b2
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw v0
.end method

.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    .registers 15
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "direction"    # I
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1615
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1616
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-static {p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1618
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TransformRecord;

    .line 1621
    .local v1, "info":Lcom/android/server/IpSecService$TransformRecord;
    iget v2, v1, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v3

    if-ne v2, v3, :cond_5a

    iget v2, v1, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_5a

    .line 1626
    invoke-virtual {v1}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v2

    .line 1627
    .local v2, "c":Landroid/net/IpSecConfig;
    nop

    .line 1628
    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getMode()I

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    const-string v4, "Transform mode was not Transport mode; cannot be applied to a socket"

    .line 1627
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1631
    iget-object v3, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1632
    invoke-interface {v3}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v4

    .line 1634
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1637
    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v8

    .line 1638
    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v9

    .line 1639
    invoke-virtual {v1}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v10

    .line 1633
    move v6, p3

    move v7, p2

    invoke-interface/range {v4 .. v10}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_62

    .line 1640
    monitor-exit p0

    return-void

    .line 1622
    .end local v2    # "c":Landroid/net/IpSecConfig;
    :cond_5a
    :try_start_5a
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    .line 1614
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1    # "info":Lcom/android/server/IpSecService$TransformRecord;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "direction":I
    .end local p3    # "resourceId":I
    :catchall_62
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized applyTunnelModeTransform(IIILjava/lang/String;)V
    .registers 29
    .param p1, "tunnelResourceId"    # I
    .param p2, "direction"    # I
    .param p3, "transformResourceId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p2

    move/from16 v11, p3

    monitor-enter p0

    .line 1664
    move-object/from16 v12, p4

    :try_start_9
    invoke-direct {v1, v12}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    .line 1665
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1667
    iget-object v0, v1, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v13, v0

    .line 1670
    .local v13, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1671
    invoke-virtual {v0, v11}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    move-object v14, v0

    .line 1675
    .local v14, "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1676
    move/from16 v15, p1

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    move-object v9, v0

    .line 1679
    .local v9, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v0

    move-object v8, v0

    .line 1680
    .local v8, "c":Landroid/net/IpSecConfig;
    nop

    .line 1681
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    const-string v4, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface"

    .line 1680
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1684
    const/4 v0, 0x0

    .line 1685
    .local v0, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v4

    if-eqz v4, :cond_58

    .line 1686
    iget-object v4, v13, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1687
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v4

    check-cast v4, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v0, v4

    .line 1689
    .end local v0    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v7, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :cond_58
    move-object v7, v0

    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$SpiRecord;

    move-object v6, v0

    .line 1692
    .local v6, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    if-nez v10, :cond_6d

    .line 1693
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIkey()I

    move-result v0

    goto :goto_71

    .line 1694
    :cond_6d
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getOkey()I

    move-result v0
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_10a

    :goto_71
    move v4, v0

    .line 1697
    .local v4, "mark":I
    :try_start_72
    invoke-virtual {v8, v4}, Landroid/net/IpSecConfig;->setMarkValue(I)V

    .line 1698
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/net/IpSecConfig;->setMarkMask(I)V
    :try_end_79
    .catch Landroid/os/ServiceSpecificException; {:try_start_72 .. :try_end_79} :catch_f1
    .catchall {:try_start_72 .. :try_end_79} :catchall_10a

    .line 1700
    if-ne v10, v3, :cond_d9

    .line 1702
    :try_start_7b
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/IpSecConfig;->setNetwork(Landroid/net/Network;)V

    .line 1705
    sget-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    array-length v3, v0

    :goto_85
    if-ge v2, v3, :cond_d9

    aget-object v5, v0, v2

    .line 1706
    .local v5, "wildcardAddr":Ljava/lang/String;
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1707
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    const/16 v17, 0x0

    .line 1713
    move/from16 v18, v2

    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v19
    :try_end_9d
    .catch Landroid/os/ServiceSpecificException; {:try_start_7b .. :try_end_9d} :catch_d0
    .catchall {:try_start_7b .. :try_end_9d} :catchall_10a

    const/16 v20, -0x1

    .line 1708
    move-object v2, v0

    move v0, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move v4, v10

    .end local v4    # "mark":I
    .local v17, "mark":I
    move-object/from16 v21, v6

    move-object v6, v5

    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v21, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v22, v7

    move/from16 v7, v19

    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v22, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    move-object/from16 v23, v8

    move/from16 v8, v17

    .end local v8    # "c":Landroid/net/IpSecConfig;
    .local v23, "c":Landroid/net/IpSecConfig;
    move-object/from16 v19, v9

    move/from16 v9, v20

    .end local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .local v19, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_b5
    invoke-interface/range {v2 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_b8
    .catch Landroid/os/ServiceSpecificException; {:try_start_b5 .. :try_end_b8} :catch_c8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_10a

    .line 1705
    .end local v5    # "wildcardAddr":Ljava/lang/String;
    add-int/lit8 v2, v18, 0x1

    move v3, v0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto :goto_85

    .line 1721
    :catch_c8
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    goto :goto_f9

    .end local v17    # "mark":I
    .end local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v21    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v22    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v23    # "c":Landroid/net/IpSecConfig;
    .restart local v4    # "mark":I
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :catch_d0
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v19, v9

    move-object v3, v6

    move-object v4, v7

    move-object v2, v8

    .end local v4    # "mark":I
    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .restart local v17    # "mark":I
    .restart local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .restart local v21    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v22    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v23    # "c":Landroid/net/IpSecConfig;
    goto :goto_f9

    .line 1720
    .end local v17    # "mark":I
    .end local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v21    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v22    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v23    # "c":Landroid/net/IpSecConfig;
    .restart local v4    # "mark":I
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :cond_d9
    move/from16 v17, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    .end local v4    # "mark":I
    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .restart local v17    # "mark":I
    .restart local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .restart local v21    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v22    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v23    # "c":Landroid/net/IpSecConfig;
    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    :try_start_e9
    invoke-direct {v1, v2, v11, v3, v4}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    :try_end_ec
    .catch Landroid/os/ServiceSpecificException; {:try_start_e9 .. :try_end_ec} :catch_ef
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_10a

    .line 1727
    .end local v21    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v22    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v23    # "c":Landroid/net/IpSecConfig;
    .local v2, "c":Landroid/net/IpSecConfig;
    .local v3, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v4, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    nop

    .line 1728
    monitor-exit p0

    return-void

    .line 1721
    :catch_ef
    move-exception v0

    goto :goto_f9

    .end local v2    # "c":Landroid/net/IpSecConfig;
    .end local v3    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v17    # "mark":I
    .end local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .local v4, "mark":I
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :catch_f1
    move-exception v0

    move/from16 v17, v4

    move-object v3, v6

    move-object v4, v7

    move-object v2, v8

    move-object/from16 v19, v9

    .line 1722
    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v9    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "c":Landroid/net/IpSecConfig;
    .restart local v3    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v4, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v17    # "mark":I
    .restart local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :goto_f9
    :try_start_f9
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v6, Landroid/system/OsConstants;->EINVAL:I

    if-ne v5, v6, :cond_109

    .line 1723
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1725
    :cond_109
    throw v0
    :try_end_10a
    .catchall {:try_start_f9 .. :try_end_10a} :catchall_10a

    .line 1663
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "c":Landroid/net/IpSecConfig;
    .end local v3    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v4    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v14    # "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    .end local v17    # "mark":I
    .end local v19    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "direction":I
    .end local p3    # "transformResourceId":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    :catchall_10a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw v0
.end method

.method public declared-synchronized closeUdpEncapsulationSocket(I)V
    .registers 4
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1242
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1243
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1244
    monitor-exit p0

    return-void

    .line 1241
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .registers 22
    .param p1, "c"    # Landroid/net/IpSecConfig;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1555
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 1557
    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    goto :goto_17

    .line 1559
    :cond_15
    move-object/from16 v8, p3

    :goto_17
    invoke-direct/range {p0 .. p1}, Lcom/android/server/IpSecService;->checkIpSecConfig(Landroid/net/IpSecConfig;)V

    .line 1560
    const-string v1, "Null Binder passed to createTransform"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    iget v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v1

    .line 1563
    .local v9, "resourceId":I
    iget-object v1, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v10, v1

    .line 1564
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 1566
    .local v11, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_46

    .line 1567
    new-instance v1, Landroid/net/IpSecTransformResponse;

    invoke-direct {v1, v2}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_ac

    monitor-exit p0

    return-object v1

    .line 1570
    :cond_46
    const/4 v1, 0x0

    .line 1571
    .local v1, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v2

    if-eqz v2, :cond_61

    .line 1572
    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1574
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    .line 1573
    invoke-virtual {v2, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v2

    .line 1575
    .local v2, "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    invoke-virtual {v2}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    check-cast v3, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v1, v3

    .line 1579
    .end local v1    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v2    # "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    .local v12, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :cond_61
    move-object v12, v1

    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1580
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    move-object v13, v1

    .line 1581
    .local v13, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    invoke-virtual {v13}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    move-object v14, v1

    .line 1584
    .local v14, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v15, p1

    invoke-direct {v7, v15, v9, v14, v12}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1587
    iget-object v6, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v5, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v4, Lcom/android/server/IpSecService$TransformRecord;

    move-object v1, v4

    move-object v2, v7

    move v3, v9

    move-object v8, v4

    move-object v4, v15

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v14

    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v16, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move-object/from16 v17, v13

    move-object v13, v6

    move-object v6, v12

    .end local v13    # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .local v17, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1592
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v10, v7, v8, v0, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    .line 1587
    invoke-virtual {v13, v9, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1593
    new-instance v1, Landroid/net/IpSecTransformResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_aa
    .catchall {:try_start_47 .. :try_end_aa} :catchall_ac

    monitor-exit p0

    return-object v1

    .line 1554
    .end local v9    # "resourceId":I
    .end local v11    # "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    .end local v12    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v14    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v17    # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .end local p1    # "c":Landroid/net/IpSecConfig;
    .end local p2    # "binder":Landroid/os/IBinder;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_ac
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw v0
.end method

.method public declared-synchronized createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;
    .registers 34
    .param p1, "localAddr"    # Ljava/lang/String;
    .param p2, "remoteAddr"    # Ljava/lang/String;
    .param p3, "underlyingNetwork"    # Landroid/net/Network;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    monitor-enter p0

    .line 1255
    move-object/from16 v12, p5

    :try_start_7
    invoke-direct {v10, v12}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    .line 1256
    const-string v0, "Null Binder passed to createTunnelInterface"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v0, "No underlying network was specified"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1259
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1264
    iget-object v0, v10, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v14, v0

    .line 1265
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v14, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_37

    .line 1266
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;

    invoke-direct {v0, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(I)V
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_134

    monitor-exit p0

    return-object v0

    .line 1269
    :cond_37
    :try_start_37
    iget v0, v10, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v10, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v15, v0

    .line 1270
    .local v15, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v9, v0

    .line 1271
    .local v9, "ikey":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v8, v0

    .line 1272
    .local v8, "okey":I
    const-string v0, "%s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ipsec"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_134

    move-object v6, v0

    .line 1279
    .local v6, "intfName":Ljava/lang/String;
    :try_start_5d
    iget-object v0, v10, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_5f} :catch_123
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5f} :catch_113
    .catchall {:try_start_5d .. :try_end_5f} :catchall_134

    .line 1280
    :try_start_5f
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_63} :catch_10c
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_63} :catch_113
    .catchall {:try_start_5f .. :try_end_63} :catchall_134

    .line 1281
    move-object v3, v6

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move v6, v9

    .end local v6    # "intfName":Ljava/lang/String;
    .local v16, "intfName":Ljava/lang/String;
    move v0, v7

    move v7, v8

    :try_start_6d
    invoke-interface/range {v2 .. v7}, Landroid/net/INetd;->addVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1283
    sget-object v2, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    array-length v3, v2
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_73} :catch_104
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_73} :catch_fb
    .catchall {:try_start_6d .. :try_end_73} :catchall_134

    move v4, v0

    :goto_74
    if-ge v4, v3, :cond_bb

    :try_start_76
    aget-object v20, v2, v4

    .line 1284
    .local v20, "wildcardAddr":Ljava/lang/String;
    sget-object v5, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    array-length v6, v5

    move v7, v0

    :goto_7c
    if-ge v7, v6, :cond_a3

    aget v17, v5, v7

    move/from16 v25, v17

    .line 1285
    .local v25, "direction":I
    move/from16 v0, v25

    if-ne v0, v1, :cond_89

    .end local v25    # "direction":I
    .local v0, "direction":I
    move/from16 v23, v8

    goto :goto_8b

    :cond_89
    move/from16 v23, v9

    .line 1287
    .local v23, "mark":I
    :goto_8b
    iget-object v1, v10, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1288
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    .line 1289
    move/from16 v19, v0

    move-object/from16 v21, v20

    invoke-interface/range {v17 .. v24}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_9e} :catch_b2
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_9e} :catch_a8
    .catchall {:try_start_76 .. :try_end_9e} :catchall_134

    .line 1284
    .end local v0    # "direction":I
    .end local v23    # "mark":I
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_7c

    .line 1283
    .end local v20    # "wildcardAddr":Ljava/lang/String;
    :cond_a3
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_74

    .line 1318
    :catch_a8
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    goto/16 :goto_11a

    .line 1313
    :catch_b2
    move-exception v0

    move v2, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    goto/16 :goto_129

    .line 1300
    :cond_bb
    :try_start_bb
    iget-object v0, v14, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v7, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v6, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_c1} :catch_104
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c1} :catch_fb
    .catchall {:try_start_bb .. :try_end_c1} :catchall_134

    move-object v1, v6

    move-object v2, v10

    move v3, v15

    move-object/from16 v4, v16

    move-object v5, v13

    move-object v12, v6

    move-object/from16 v6, p1

    move-object v13, v7

    move-object/from16 v7, p2

    move/from16 v26, v8

    move v8, v9

    .end local v8    # "okey":I
    .local v26, "okey":I
    move-object/from16 v27, v14

    move v14, v9

    move/from16 v9, v26

    .end local v9    # "ikey":I
    .local v14, "ikey":I
    .local v27, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :try_start_d5
    invoke-direct/range {v1 .. v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v13, v10, v12, v11, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v15, v13}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1312
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_e3} :catch_f5
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_e3} :catch_f1
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_134

    move-object/from16 v1, v16

    const/4 v2, 0x0

    :try_start_e6
    invoke-direct {v0, v2, v15, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(IILjava/lang/String;)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e9} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_e9} :catch_eb
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_134

    .end local v16    # "intfName":Ljava/lang/String;
    .local v1, "intfName":Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 1318
    :catch_eb
    move-exception v0

    goto :goto_11a

    .line 1313
    :catch_ed
    move-exception v0

    move/from16 v2, v26

    goto :goto_129

    .line 1318
    .end local v1    # "intfName":Ljava/lang/String;
    .restart local v16    # "intfName":Ljava/lang/String;
    :catch_f1
    move-exception v0

    move-object/from16 v1, v16

    .end local v16    # "intfName":Ljava/lang/String;
    .restart local v1    # "intfName":Ljava/lang/String;
    goto :goto_11a

    .line 1313
    .end local v1    # "intfName":Ljava/lang/String;
    .restart local v16    # "intfName":Ljava/lang/String;
    :catch_f5
    move-exception v0

    move-object/from16 v1, v16

    move/from16 v2, v26

    .end local v16    # "intfName":Ljava/lang/String;
    .restart local v1    # "intfName":Ljava/lang/String;
    goto :goto_129

    .line 1318
    .end local v1    # "intfName":Ljava/lang/String;
    .end local v26    # "okey":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v8    # "okey":I
    .restart local v9    # "ikey":I
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v16    # "intfName":Ljava/lang/String;
    :catch_fb
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    .end local v8    # "okey":I
    .end local v9    # "ikey":I
    .end local v16    # "intfName":Ljava/lang/String;
    .restart local v1    # "intfName":Ljava/lang/String;
    .local v14, "ikey":I
    .restart local v26    # "okey":I
    .restart local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_11a

    .line 1313
    .end local v1    # "intfName":Ljava/lang/String;
    .end local v26    # "okey":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v8    # "okey":I
    .restart local v9    # "ikey":I
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v16    # "intfName":Ljava/lang/String;
    :catch_104
    move-exception v0

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    move v2, v8

    .end local v8    # "okey":I
    .end local v9    # "ikey":I
    .end local v16    # "intfName":Ljava/lang/String;
    .restart local v1    # "intfName":Ljava/lang/String;
    .local v14, "ikey":I
    .restart local v26    # "okey":I
    .restart local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_129

    .end local v1    # "intfName":Ljava/lang/String;
    .end local v26    # "okey":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v6    # "intfName":Ljava/lang/String;
    .restart local v8    # "okey":I
    .restart local v9    # "ikey":I
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_10c
    move-exception v0

    move-object v1, v6

    move-object/from16 v27, v14

    move v14, v9

    move v2, v8

    .end local v6    # "intfName":Ljava/lang/String;
    .end local v8    # "okey":I
    .end local v9    # "ikey":I
    .restart local v1    # "intfName":Ljava/lang/String;
    .local v14, "ikey":I
    .restart local v26    # "okey":I
    .restart local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_129

    .line 1318
    .end local v1    # "intfName":Ljava/lang/String;
    .end local v26    # "okey":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v6    # "intfName":Ljava/lang/String;
    .restart local v8    # "okey":I
    .restart local v9    # "ikey":I
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_113
    move-exception v0

    move-object v1, v6

    move/from16 v26, v8

    move-object/from16 v27, v14

    move v14, v9

    .line 1320
    .end local v6    # "intfName":Ljava/lang/String;
    .end local v8    # "okey":I
    .end local v9    # "ikey":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "intfName":Ljava/lang/String;
    .local v14, "ikey":I
    .restart local v26    # "okey":I
    .restart local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :goto_11a
    :try_start_11a
    invoke-virtual {v10, v14}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1321
    move/from16 v2, v26

    invoke-virtual {v10, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1322
    .end local v26    # "okey":I
    .local v2, "okey":I
    throw v0

    .line 1313
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "intfName":Ljava/lang/String;
    .end local v2    # "okey":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v6    # "intfName":Ljava/lang/String;
    .restart local v8    # "okey":I
    .restart local v9    # "ikey":I
    .local v14, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_123
    move-exception v0

    move-object v1, v6

    move v2, v8

    move-object/from16 v27, v14

    move v14, v9

    .line 1315
    .end local v6    # "intfName":Ljava/lang/String;
    .end local v8    # "okey":I
    .end local v9    # "ikey":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "intfName":Ljava/lang/String;
    .restart local v2    # "okey":I
    .local v14, "ikey":I
    .restart local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :goto_129
    invoke-virtual {v10, v14}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1316
    invoke-virtual {v10, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1317
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_134
    .catchall {:try_start_11a .. :try_end_134} :catchall_134

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intfName":Ljava/lang/String;
    .end local v2    # "okey":I
    .end local v14    # "ikey":I
    .end local v15    # "resourceId":I
    .end local v27    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "localAddr":Ljava/lang/String;
    .end local p2    # "remoteAddr":Ljava/lang/String;
    .end local p3    # "underlyingNetwork":Landroid/net/Network;
    .end local p4    # "binder":Landroid/os/IBinder;
    .end local p5    # "callingPackage":Ljava/lang/String;
    :catchall_134
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw v0
.end method

.method public declared-synchronized deleteTransform(I)V
    .registers 4
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1604
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1605
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1606
    monitor-exit p0

    return-void

    .line 1603
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized deleteTunnelInterface(ILjava/lang/String;)V
    .registers 5
    .param p1, "resourceId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1391
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1393
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1394
    monitor-exit p0

    return-void

    .line 1390
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "resourceId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :catchall_15
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 1732
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v0, "IpSecService dump:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "alive"

    goto :goto_24

    :cond_22
    const-string v1, "dead"

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1738
    const-string/jumbo v0, "mUserResourceTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 1740
    monitor-exit p0

    return-void

    .line 1731
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    .line 1731
    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method declared-synchronized isNetdAlive()Z
    .registers 4

    monitor-enter p0

    .line 1033
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_15
    .catchall {:try_start_2 .. :try_end_8} :catchall_12

    .line 1034
    .local v1, "netd":Landroid/net/INetd;
    if-nez v1, :cond_c

    .line 1035
    monitor-exit p0

    return v0

    .line 1037
    :cond_c
    :try_start_c
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_15
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return v2

    .line 1032
    .end local v1    # "netd":Landroid/net/INetd;
    :catchall_12
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw v0

    .line 1038
    .restart local p0    # "this":Lcom/android/server/IpSecService;
    :catch_15
    move-exception v1

    .line 1039
    .local v1, "re":Landroid/os/RemoteException;
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .registers 13
    .param p1, "port"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1193
    if-eqz p1, :cond_15

    const/16 v0, 0x400

    if-lt p1, v0, :cond_d

    const v0, 0xffff

    if-gt p1, v0, :cond_d

    goto :goto_15

    .line 1194
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_15
    :goto_15
    const-string v0, "Null Binder passed to openUdpEncapsulationSocket"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1200
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    .line 1201
    .local v1, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_a4

    .line 1202
    .local v2, "resourceId":I
    const/4 v3, 0x0

    .line 1204
    .local v3, "sockFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    :try_start_2c
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v5}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1205
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_99
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_39} :catch_99
    .catchall {:try_start_2c .. :try_end_39} :catchall_a4

    monitor-exit p0

    return-object v5

    .line 1208
    :cond_3b
    :try_start_3b
    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v3, v5

    .line 1209
    iget-object v5, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    invoke-interface {v5, v3, v0}, Lcom/android/server/IpSecService$UidFdTagger;->tag(Ljava/io/FileDescriptor;I)V

    .line 1212
    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    sget v6, Landroid/system/OsConstants;->UDP_ENCAP:I

    sget v7, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    invoke-static {v3, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 1218
    iget-object v5, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v5}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Ljava/io/FileDescriptor;I)V

    .line 1219
    if-eqz p1, :cond_7b

    .line 1220
    const-string v5, "IpSecService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    sget-object v5, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v3, v5, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    goto :goto_80

    .line 1223
    :cond_7b
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)I

    move-result v5

    move p1, v5

    .line 1226
    :goto_80
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v7, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/android/server/IpSecService$EncapSocketRecord;-><init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v6, p0, v7, p2, v9}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1230
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v8, v2, p1, v3}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_97} :catch_99
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_97} :catch_99
    .catchall {:try_start_3b .. :try_end_97} :catchall_a4

    monitor-exit p0

    return-object v5

    .line 1231
    :catch_99
    move-exception v5

    .line 1232
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1236
    .end local v5    # "e":Ljava/lang/Exception;
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_a4

    monitor-exit p0

    return-object v5

    .line 1192
    .end local v0    # "callingUid":I
    .end local v1    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v2    # "resourceId":I
    .end local v3    # "sockFd":Ljava/io/FileDescriptor;
    .end local p1    # "port":I
    .end local p2    # "binder":Landroid/os/IBinder;
    :catchall_a4
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method releaseNetId(I)V
    .registers 4
    .param p1, "netId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 782
    :try_start_3
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 783
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public declared-synchronized releaseSecurityParameterIndex(I)V
    .registers 4
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1126
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1127
    monitor-exit p0

    return-void

    .line 1124
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 10
    .param p1, "tunnelResourceId"    # I
    .param p2, "localAddr"    # Landroid/net/LinkAddress;
    .param p3, "callingPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 1362
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1367
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1368
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1373
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_16
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1374
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1376
    # getter for: Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1377
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1378
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1375
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1381
    nop

    .line 1382
    monitor-exit p0

    return-void

    .line 1379
    :catch_32
    move-exception v2

    .line 1380
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1361
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "localAddr":Landroid/net/LinkAddress;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_38
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method public declared-synchronized removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1651
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1652
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 1653
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1654
    monitor-exit p0

    return-void

    .line 1650
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    :catchall_10
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    throw p1
.end method

.method reserveNetId()I
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 766
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_5
    const/16 v3, 0x400

    if-ge v2, v3, :cond_2d

    .line 767
    :try_start_9
    iget v4, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 768
    .local v4, "index":I
    const v5, 0xfc00

    add-int/2addr v5, v4

    .line 769
    .local v5, "netId":I
    iget v6, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    if-lt v6, v3, :cond_19

    iput v1, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 770
    :cond_19
    iget-object v3, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 771
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 772
    monitor-exit v0

    return v5

    .line 766
    .end local v4    # "index":I
    .end local v5    # "netId":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 775
    .end local v2    # "i":I
    :catchall_2b
    move-exception v1

    goto :goto_36

    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2b

    .line 776
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds to allocate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2b

    throw v1
.end method

.method public systemReady()V
    .registers 3

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1013
    const-string v0, "IpSecService"

    const-string v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1015
    :cond_e
    const-string v0, "IpSecService"

    const-string v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :goto_15
    return-void
.end method

.method validateAlgorithms(Landroid/net/IpSecConfig;)V
    .registers 9
    .param p1, "config"    # Landroid/net/IpSecConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v0

    .line 1399
    .local v0, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 1400
    .local v1, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v2

    .line 1403
    .local v2, "aead":Landroid/net/IpSecAlgorithm;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_17

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v5, v4

    goto :goto_18

    :cond_17
    :goto_17
    move v5, v3

    :goto_18
    const-string v6, "No Encryption or Authentication algorithms specified"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1406
    if-eqz v0, :cond_28

    .line 1407
    invoke-virtual {v0}, Landroid/net/IpSecAlgorithm;->isAuthentication()Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_28

    :cond_26
    move v5, v4

    goto :goto_29

    :cond_28
    :goto_28
    move v5, v3

    :goto_29
    const-string v6, "Unsupported algorithm for Authentication"

    .line 1406
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1409
    if-eqz v1, :cond_39

    .line 1410
    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->isEncryption()Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_39

    :cond_37
    move v5, v4

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v3

    :goto_3a
    const-string v6, "Unsupported algorithm for Encryption"

    .line 1409
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1411
    if-eqz v2, :cond_4a

    .line 1412
    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->isAead()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_4a

    :cond_48
    move v5, v4

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v5, v3

    :goto_4b
    const-string v6, "Unsupported algorithm for Authenticated Encryption"

    .line 1411
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1414
    if-eqz v2, :cond_59

    if-nez v0, :cond_57

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    move v3, v4

    nop

    :cond_59
    :goto_59
    const-string v4, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1418
    return-void
.end method
