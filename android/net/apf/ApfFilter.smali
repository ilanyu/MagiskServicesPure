.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$InvalidRaException;,
        Landroid/net/apf/ApfFilter$ReceiveThread;,
        Landroid/net/apf/ApfFilter$Counter;,
        Landroid/net/apf/ApfFilter$ProcessRaResult;,
        Landroid/net/apf/ApfFilter$ApfConfiguration;
    }
.end annotation


# static fields
.field private static final APF_MAX_ETH_TYPE_BLACK_LIST_LEN:I = 0x14

.field private static final APF_PROGRAM_EVENT_LIFETIME_THRESHOLD:I = 0x2

.field private static final ARP_HEADER_OFFSET:I = 0xe

.field private static final ARP_IPV4_HEADER:[B

.field private static final ARP_OPCODE_OFFSET:I = 0x14

.field private static final ARP_OPCODE_REPLY:S = 0x2s

.field private static final ARP_OPCODE_REQUEST:S = 0x1s

.field private static final ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x26

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final ETH_TYPE_MAX:I = 0xffff

.field private static final ETH_TYPE_MIN:I = 0x600

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_ANY_HOST_ADDRESS:I = 0x0

.field private static final IPV4_BROADCAST_ADDRESS:I = -0x1

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_FLOW_LABEL_LEN:I = 0x3

.field private static final IPV6_FLOW_LABEL_OFFSET:I = 0xf

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final NBNS_CLIENT_PORT:I = 0x89

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z = false


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private final mContext:Landroid/content/Context;

.field private final mCountAndDropLabel:Ljava/lang/String;

.field private final mCountAndPassLabel:Ljava/lang/String;

.field private mDataSnapshot:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private final mDrop802_3Frames:Z

.field private final mEthTypeBlackList:[I

.field mHardwareAddress:[B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIPv4PrefixLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mInDozeMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mIpClientCallback:Landroid/net/ip/IpClient$Callback;

.field private mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumProgramUpdatesAllowingMulticast:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 257
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    .line 279
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_22

    sput-object v1, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    .line 299
    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    return-void

    nop

    :array_1a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

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

    :array_2e
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;Landroid/net/metrics/IpConnectivityLog;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/apf/ApfFilter$ApfConfiguration;
    .param p3, "ifParams"    # Landroid/net/util/InterfaceParams;
    .param p4, "ipClientCallback"    # Landroid/net/ip/IpClient$Callback;
    .param p5, "log"    # Landroid/net/metrics/IpConnectivityLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Landroid/net/apf/ApfFilter$1;

    invoke-direct {v0, p0}, Landroid/net/apf/ApfFilter$1;-><init>(Landroid/net/apf/ApfFilter;)V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 874
    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 355
    iget-object v0, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 356
    iput-object p4, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    .line 357
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 358
    iget-boolean v0, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->multicastFilter:Z

    iput-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 359
    iget-boolean v0, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->ieee802_3Filter:Z

    iput-boolean v0, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    .line 360
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    .line 362
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 363
    const-string v0, "countAndPass"

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    .line 364
    const-string v0, "countAndDrop"

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    goto :goto_41

    .line 368
    :cond_39
    const-string v0, "__PASS__"

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    .line 369
    const-string v0, "__DROP__"

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    .line 373
    :goto_41
    iget-object v0, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->ethTypeBlackList:[I

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->filterEthTypeBlackList([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mEthTypeBlackList:[I

    .line 375
    iput-object p5, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 378
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    .line 381
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method static synthetic access$000(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/apf/ApfFilter;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/apf/ApfFilter;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    return v0
.end method

.method static synthetic access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/apf/ApfFilter;J)V
    .registers 3
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;
    .param p1, "x1"    # J

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/apf/ApfFilter;)J
    .registers 3
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/net/apf/ApfFilter;Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V
    .registers 3
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;
    .param p1, "x1"    # Landroid/net/apf/ApfGenerator;
    .param p2, "x2"    # Landroid/net/apf/ApfFilter$Counter;

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/apf/ApfFilter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfFilter;

    .line 86
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    return-object v0
.end method

.method public static counterValue([BLandroid/net/apf/ApfFilter$Counter;)J
    .registers 10
    .param p0, "data"    # [B
    .param p1, "counter"    # Landroid/net/apf/ApfFilter$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$Counter;->offset()I

    move-result v0

    .line 1487
    .local v0, "offset":I
    if-gez v0, :cond_8

    .line 1488
    array-length v1, p0

    add-int/2addr v0, v1

    .line 1492
    :cond_8
    const-wide/16 v1, 0x0

    .line 1493
    .local v1, "value":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1e

    .line 1494
    const/16 v4, 0x8

    shl-long v4, v1, v4

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 1495
    add-int/lit8 v0, v0, 0x1

    .line 1493
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1497
    .end local v3    # "i":I
    :cond_1e
    return-wide v1
.end method

.method private emitEpilogue(Landroid/net/apf/ApfGenerator;)V
    .registers 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1219
    :cond_9
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1224
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1225
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1227
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1228
    const-string v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1231
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1232
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1233
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1234
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1235
    const-string v0, "__DROP__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1236
    return-void
.end method

.method private emitPrologueLocked()Landroid/net/apf/ApfGenerator;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1130
    new-instance v0, Landroid/net/apf/ApfGenerator;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v1, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator;-><init>(I)V

    .line 1132
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 1134
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->TOTAL_PACKETS:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1135
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1137
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1156
    :cond_25
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1158
    iget-boolean v1, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    if-eqz v1, :cond_3c

    .line 1160
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_802_3_FRAME:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1161
    const/16 v1, 0x600

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1165
    :cond_3c
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETHERTYPE_BLACKLISTED:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1166
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mEthTypeBlackList:[I

    array-length v3, v1

    move v4, v2

    :goto_45
    if-ge v4, v3, :cond_51

    aget v5, v1, v4

    .line 1167
    .local v5, "p":I
    iget-object v6, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1166
    .end local v5    # "p":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 1171
    :cond_51
    const-string/jumbo v1, "skipArpFilters"

    .line 1172
    .local v1, "skipArpFiltersLabel":Ljava/lang/String;
    sget v3, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1173
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1174
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1177
    const-string/jumbo v3, "skipIPv4Filters"

    .line 1181
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1182
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1183
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1189
    const-string v4, "IPv6Filters"

    .line 1190
    .local v4, "ipv6FilterLabel":Ljava/lang/String;
    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v5, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1193
    sget-object v5, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v5, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1194
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->PASSED_NON_IP_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1195
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v6, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1196
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETH_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1197
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1200
    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1201
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1202
    return-object v0
.end method

.method private static filterEthTypeBlackList([I)[I
    .registers 7
    .param p0, "ethTypeBlackList"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "bl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_5a

    aget v3, p0, v2

    .line 404
    .local v3, "p":I
    const/16 v4, 0x600

    if-lt v3, v4, :cond_57

    const v4, 0xffff

    if-le v3, v4, :cond_15

    .line 405
    goto :goto_57

    .line 409
    :cond_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 410
    goto :goto_57

    .line 414
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_50

    .line 415
    const-string v1, "ApfFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passed EthType Black List size too large ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") using top "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " protocols"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    goto :goto_5a

    .line 421
    :cond_50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v3    # "p":I
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 424
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/net/apf/-$$Lambda$ApfFilter$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/net/apf/-$$Lambda$ApfFilter$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private static findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;
    .registers 5
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 1456
    const/4 v0, 0x0

    .line 1457
    .local v0, "ipv4Address":Landroid/net/LinkAddress;
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1458
    .local v2, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-nez v3, :cond_1e

    .line 1459
    goto :goto_9

    .line 1461
    :cond_1e
    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1463
    const/4 v1, 0x0

    return-object v1

    .line 1465
    :cond_28
    move-object v0, v2

    .line 1466
    .end local v2    # "address":Landroid/net/LinkAddress;
    goto :goto_9

    .line 1467
    :cond_2a
    return-object v0
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 7
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 901
    const-string v0, "checkTargetIPv4"

    .line 904
    .local v0, "checkTargetIPv4":Ljava/lang/String;
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 905
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_NON_IPV4:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 906
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 909
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 910
    const-string v1, "checkTargetIPv4"

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 911
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNKNOWN:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 912
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 915
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 916
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNICAST_REPLY:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 917
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 920
    const-string v1, "checkTargetIPv4"

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 921
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const/16 v3, 0x26

    if-nez v1, :cond_5e

    .line 923
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v3}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 924
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_GARP_REPLY:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 925
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_71

    .line 929
    :cond_5e
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 930
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ARP_OTHER_HOST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 931
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 934
    :goto_71
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 935
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 936
    return-void
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 7
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 959
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v0, :cond_dc

    .line 960
    const-string/jumbo v0, "skip_dhcp_v4_filter"

    .line 962
    .local v0, "skipDhcpv4Filter":Ljava/lang/String;
    const-string/jumbo v1, "skip_nbns_and_dhcp_v4_filter"

    .line 966
    .local v1, "skipNbnsAndDhcpv4Filter":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x17

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 969
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v3, "skip_nbns_and_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 971
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 974
    const/16 v2, 0x1fff

    const-string/jumbo v3, "skip_nbns_and_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 976
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xd

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 977
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 978
    const/16 v2, 0x44

    const-string/jumbo v3, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 980
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 982
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    .line 985
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v4, "skip_nbns_and_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 986
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->PASSED_DHCP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 987
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 990
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 995
    const/16 v2, 0x89

    const-string/jumbo v3, "skip_nbns_and_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 996
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_NBNS:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 997
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1000
    const-string/jumbo v2, "skip_nbns_and_dhcp_v4_filter"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1003
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x1e

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1004
    const/16 v2, 0xf0

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    .line 1005
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1006
    const/16 v2, 0xe0

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1009
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_ADDR:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1010
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1011
    const/4 v2, -0x1

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1012
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v2, :cond_be

    iget v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_be

    .line 1013
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_NET:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1014
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->ipv4BroadcastAddress([BI)I

    move-result v2

    .line 1015
    .local v2, "broadcastAddr":I
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1020
    .end local v2    # "broadcastAddr":I
    :cond_be
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1021
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1022
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1023
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_L2_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1024
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1028
    .end local v0    # "skipDhcpv4Filter":Ljava/lang/String;
    .end local v1    # "skipNbnsAndDhcpv4Filter":Ljava/lang/String;
    :cond_dc
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1029
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1030
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 8
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1053
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1056
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    const/16 v1, 0x26

    const/16 v2, 0x36

    if-eqz v0, :cond_5c

    .line 1057
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    .line 1058
    .local v0, "skipIPv6MulticastFilterLabel":Ljava/lang/String;
    const-string v3, "dropAllIPv6Multicast"

    .line 1062
    .local v3, "dropAllIPv6MulticastsLabel":Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z

    if-eqz v4, :cond_2d

    .line 1064
    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string v5, "dropAllIPv6Multicast"

    invoke-virtual {p1, v4, v5}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1068
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v4, v2}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1069
    const/16 v4, 0x80

    const-string/jumbo v5, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v4, v5}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_35

    .line 1071
    :cond_2d
    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v5, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v4, v5}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1075
    :goto_35
    const-string v4, "dropAllIPv6Multicast"

    invoke-virtual {p1, v4}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1076
    sget-object v4, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_NON_ICMP_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v4}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1077
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v4, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1078
    const/16 v4, 0xff

    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1080
    sget-object v4, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_UNICAST_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v4}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1081
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1082
    const-string/jumbo v4, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v4}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1083
    .end local v0    # "skipIPv6MulticastFilterLabel":Ljava/lang/String;
    .end local v3    # "dropAllIPv6MulticastsLabel":Ljava/lang/String;
    goto :goto_68

    .line 1085
    :cond_5c
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1086
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1092
    :goto_68
    const-string/jumbo v0, "skipUnsolicitedMulticastNA"

    .line 1093
    .local v0, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v3, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1095
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_ROUTER_SOLICITATION:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1096
    const/16 v2, 0x85

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1098
    const/16 v2, 0x88

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1101
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1102
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1104
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_NA:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1105
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1106
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1107
    return-void
.end method

.method private getUniqueNumberLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 395
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public static ipv4BroadcastAddress([BI)I
    .registers 5
    .param p0, "addrBytes"    # [B
    .param p1, "prefixLength"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1572
    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v1

    ushr-long/2addr v1, p1

    long-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 390
    const-string v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v2, v2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private logApfProgramEventLocked(J)V
    .registers 8
    .param p1, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1307
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    if-nez v0, :cond_5

    .line 1308
    return-void

    .line 1310
    :cond_5
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1311
    .local v0, "ev":Landroid/net/metrics/ApfProgramEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1312
    iget-wide v1, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long v1, p1, v1

    iput-wide v1, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 1313
    iget-wide v1, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-gez v1, :cond_19

    .line 1314
    return-void

    .line 1316
    :cond_19
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v1, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 1317
    return-void
.end method

.method public static maybeCreate(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;)Landroid/net/apf/ApfFilter;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/apf/ApfFilter$ApfConfiguration;
    .param p2, "ifParams"    # Landroid/net/util/InterfaceParams;
    .param p3, "ipClientCallback"    # Landroid/net/ip/IpClient$Callback;

    .line 1407
    const/4 v0, 0x0

    if-eqz p0, :cond_69

    if-eqz p1, :cond_69

    if-nez p2, :cond_8

    goto :goto_69

    .line 1408
    :cond_8
    iget-object v1, p1, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 1409
    .local v1, "apfCapabilities":Landroid/net/apf/ApfCapabilities;
    if-nez v1, :cond_d

    return-object v0

    .line 1410
    :cond_d
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v2, :cond_12

    return-object v0

    .line 1411
    :cond_12
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v3, 0x200

    if-ge v2, v3, :cond_31

    .line 1412
    const-string v2, "ApfFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unacceptably small APF limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-object v0

    .line 1419
    :cond_31
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v3, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v2, v3, :cond_38

    return-object v0

    .line 1420
    :cond_38
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->supportsVersion(I)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1421
    const-string v2, "ApfFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported APF version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-object v0

    .line 1425
    :cond_59
    new-instance v0, Landroid/net/apf/ApfFilter;

    new-instance v9, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v9}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/net/apf/ApfFilter;-><init>(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;Landroid/net/metrics/IpConnectivityLog;)V

    return-object v0

    .line 1407
    .end local v1    # "apfCapabilities":Landroid/net/apf/ApfCapabilities;
    :cond_69
    :goto_69
    return-object v0
.end method

.method private maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V
    .registers 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .param p2, "c"    # Landroid/net/apf/ApfFilter$Counter;

    .line 162
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p2}, Landroid/net/apf/ApfFilter$Counter;->offset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 165
    :cond_11
    return-void
.end method

.method private purgeExpiredRasLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1334
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1338
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1341
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method private shouldInstallnewProgram()Z
    .registers 7

    .line 1323
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long/2addr v0, v2

    .line 1324
    .local v0, "expiry":J
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method


# virtual methods
.method protected currentTimeSeconds()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 15
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    monitor-enter p0

    .line 1501
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v1, :cond_28

    const-string v1, "RUNNING"

    goto :goto_2a

    :cond_28
    const-string v1, "STOPPED"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v1, :cond_45

    const-string v1, "DROP"

    goto :goto_47

    :cond_45
    const-string v1, "ALLOW"

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_1b2

    .line 1505
    :try_start_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPv4 address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/net/UnknownHostException; {:try_start_51 .. :try_end_6f} :catch_70
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_6f} :catch_70
    .catchall {:try_start_51 .. :try_end_6f} :catchall_1b2

    .line 1506
    goto :goto_71

    :catch_70
    move-exception v0

    .line 1508
    :goto_71
    :try_start_71
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_80

    .line 1509
    const-string v0, "No program installed."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_1b2

    .line 1510
    monitor-exit p0

    return-void

    .line 1512
    :cond_80
    :try_start_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Program updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    const-string v0, "Last program length %d, installed %ds ago, lifetime %ds"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v4, v4

    .line 1515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v1, v6

    iget-wide v7, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 1516
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v1, v7

    .line 1513
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    const-string v0, "RA filters:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1520
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    .line 1521
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1522
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1523
    const-string v4, "Seen: %d, last %ds ago"

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 1524
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1523
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    const-string v4, "Last match:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1528
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1532
    .end local v1    # "ra":Landroid/net/apf/ApfFilter$Ra;
    goto :goto_d1

    .line 1533
    :cond_119
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1536
    const-string v0, "Last program:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1538
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    invoke-static {v0, v5}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1542
    const-string v0, "APF packet counters: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1544
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-nez v0, :cond_146

    .line 1545
    const-string v0, "APF counters not supported"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ad

    .line 1546
    :cond_146
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B

    if-nez v0, :cond_150

    .line 1547
    const-string v0, "No last snapshot."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_80 .. :try_end_14f} :catchall_1b2

    goto :goto_1ad

    .line 1550
    :cond_150
    :try_start_150
    const-class v0, Landroid/net/apf/ApfFilter$Counter;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/apf/ApfFilter$Counter;

    .line 1551
    .local v0, "counters":[Landroid/net/apf/ApfFilter$Counter;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v4, v0

    invoke-interface {v1, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_197

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/apf/ApfFilter$Counter;

    .line 1552
    .local v4, "c":Landroid/net/apf/ApfFilter$Counter;
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B

    invoke-static {v5, v4}, Landroid/net/apf/ApfFilter;->counterValue([BLandroid/net/apf/ApfFilter$Counter;)J

    move-result-wide v5

    .line 1554
    .local v5, "value":J
    cmp-long v7, v5, v2

    if-eqz v7, :cond_196

    .line 1555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/apf/ApfFilter$Counter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_150 .. :try_end_196} :catch_198
    .catchall {:try_start_150 .. :try_end_196} :catchall_1b2

    .line 1557
    .end local v4    # "c":Landroid/net/apf/ApfFilter$Counter;
    .end local v5    # "value":J
    :cond_196
    goto :goto_165

    .line 1560
    .end local v0    # "counters":[Landroid/net/apf/ApfFilter$Counter;
    :cond_197
    goto :goto_1ad

    .line 1558
    :catch_198
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uh-oh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1ad
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_1b0
    .catchall {:try_start_199 .. :try_end_1b0} :catchall_1b2

    .line 1567
    monitor-exit p0

    return-void

    .line 1500
    .end local p1    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_1b2
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method installNewProgramLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1244
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v0, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1248
    .local v1, "programMinLifetime":J
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    int-to-long v3, v3

    .line 1249
    .local v3, "maximumApfProgramSize":J
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v5}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1251
    invoke-static {}, Landroid/net/apf/ApfFilter$Counter;->totalSize()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 1256
    :cond_20
    :try_start_20
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->emitPrologueLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v5

    .line 1260
    .local v5, "gen":Landroid/net/apf/ApfGenerator;
    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter;->emitEpilogue(Landroid/net/apf/ApfGenerator;)V

    .line 1263
    invoke-virtual {v5}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_47

    .line 1264
    const-string v6, "ApfFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Program exceeds maximum size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void

    .line 1268
    :cond_47
    iget-object v6, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/apf/ApfFilter$Ra;

    .line 1269
    .local v7, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v7, v5}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    .line 1271
    invoke-virtual {v5}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v3

    if-lez v8, :cond_66

    .end local v7    # "ra":Landroid/net/apf/ApfFilter$Ra;
    goto :goto_6a

    .line 1272
    .restart local v7    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_66
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    .end local v7    # "ra":Landroid/net/apf/ApfFilter$Ra;
    goto :goto_4d

    .line 1276
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->emitPrologueLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v6

    move-object v5, v6

    .line 1277
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/apf/ApfFilter$Ra;

    .line 1278
    .restart local v7    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v7, v5}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v1, v8

    .line 1279
    .end local v7    # "ra":Landroid/net/apf/ApfFilter$Ra;
    goto :goto_73

    .line 1280
    :cond_89
    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter;->emitEpilogue(Landroid/net/apf/ApfGenerator;)V

    .line 1281
    invoke-virtual {v5}, Landroid/net/apf/ApfGenerator;->generate()[B

    move-result-object v6
    :try_end_90
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_20 .. :try_end_90} :catch_de
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_90} :catch_de

    .end local v5    # "gen":Landroid/net/apf/ApfGenerator;
    move-object v5, v6

    .line 1285
    .local v5, "program":[B
    nop

    .line 1284
    nop

    .line 1286
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v6

    .line 1287
    .local v6, "now":J
    iput-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    .line 1288
    iput-wide v1, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 1289
    iput-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    .line 1290
    iget v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 1295
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v8, v5}, Landroid/net/ip/IpClient$Callback;->installPacketFilter([B)V

    .line 1296
    invoke-direct {p0, v6, v7}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    .line 1297
    new-instance v8, Landroid/net/metrics/ApfProgramEvent;

    invoke-direct {v8}, Landroid/net/metrics/ApfProgramEvent;-><init>()V

    iput-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1298
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iput-wide v1, v8, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 1299
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v8, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 1300
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v8, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 1301
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    array-length v10, v5

    iput v10, v8, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 1302
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v10, :cond_d4

    goto :goto_d5

    :cond_d4
    const/4 v9, 0x0

    :goto_d5
    iget-boolean v10, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-static {v9, v10}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v9

    iput v9, v8, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 1303
    return-void

    .line 1282
    .end local v5    # "program":[B
    .end local v6    # "now":J
    :catch_de
    move-exception v5

    .line 1283
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ApfFilter"

    const-string v7, "Failed to generate APF program."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    return-void
.end method

.method maybeStartFilter()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 435
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    .line 436
    monitor-enter p0
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_b} :catch_54
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_b} :catch_54

    .line 440
    :try_start_b
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 441
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v0, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    new-array v0, v0, [B

    .line 442
    .local v0, "zeroes":[B
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v1, v0}, Landroid/net/ip/IpClient$Callback;->installPacketFilter([B)V

    .line 446
    .end local v0    # "zeroes":[B
    :cond_1e
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 447
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_51

    .line 448
    :try_start_22
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 449
    .local v0, "socket":Ljava/io/FileDescriptor;
    new-instance v1, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v2, v2

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 451
    .local v1, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v0, v1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 452
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v2, v2, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_42
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_42} :catch_54
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_42} :catch_54

    .line 456
    .end local v1    # "addr":Landroid/system/PacketSocketAddress;
    nop

    .line 455
    nop

    .line 457
    new-instance v1, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v1, p0, v0}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 458
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    .line 459
    return-void

    .line 447
    .end local v0    # "socket":Ljava/io/FileDescriptor;
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_53 .. :try_end_54} :catch_54
    .catch Landroid/system/ErrnoException; {:try_start_53 .. :try_end_54} :catch_54

    .line 453
    :catch_54
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApfFilter"

    const-string v2, "Error starting filter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    return-void
.end method

.method declared-synchronized processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .registers 8
    .param p1, "packet"    # [B
    .param p2, "length"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1353
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 1354
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    .line 1355
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1358
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 1359
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 1360
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 1369
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1372
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->shouldInstallnewProgram()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1373
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1374
    sget-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_9a

    monitor-exit p0

    return-object v0

    .line 1376
    :cond_45
    :try_start_45
    sget-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_9a

    monitor-exit p0

    return-object v0

    .line 1353
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1379
    .end local v1    # "i":I
    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1381
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5d

    .line 1382
    sget-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_9a

    monitor-exit p0

    return-object v0

    .line 1386
    :cond_5d
    :try_start_5d
    new-instance v0, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_8e
    .catchall {:try_start_5d .. :try_end_62} :catchall_9a

    .line 1390
    .local v0, "ra":Landroid/net/apf/ApfFilter$Ra;
    nop

    .line 1389
    nop

    .line 1392
    :try_start_64
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1393
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_9a

    monitor-exit p0

    return-object v1

    .line 1395
    :cond_6e
    :try_start_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1398
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_9a

    monitor-exit p0

    return-object v1

    .line 1387
    .end local v0    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_8e
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v1, "ApfFilter"

    const-string v2, "Error parsing RA"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_9a

    monitor-exit p0

    return-object v1

    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "packet":[B
    .end local p2    # "length":I
    :catchall_9a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method public declared-synchronized setDataSnapshot([B)V
    .registers 2
    .param p1, "data"    # [B

    monitor-enter p0

    .line 386
    :try_start_1
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 387
    monitor-exit p0

    return-void

    .line 385
    .end local p1    # "data":[B
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method public declared-synchronized setDozeMode(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1449
    :try_start_1
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    .line 1450
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z

    .line 1451
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 1452
    monitor-exit p0

    return-void

    .line 1448
    .end local p1    # "isEnabled":Z
    :catchall_e
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;

    monitor-enter p0

    .line 1472
    :try_start_1
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 1473
    .local v0, "ipv4Address":Landroid/net/LinkAddress;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1474
    .local v1, "addr":[B
    :goto_11
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1475
    .local v2, "prefix":I
    :goto_19
    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    if-ne v2, v3, :cond_27

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_30

    if-eqz v3, :cond_27

    .line 1476
    monitor-exit p0

    return-void

    .line 1478
    :cond_27
    :try_start_27
    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    .line 1479
    iput v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    .line 1480
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_30

    .line 1481
    monitor-exit p0

    return-void

    .line 1471
    .end local v0    # "ipv4Address":Landroid/net/LinkAddress;
    .end local v1    # "addr":[B
    .end local v2    # "prefix":I
    .end local p1    # "lp":Landroid/net/LinkProperties;
    :catchall_30
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    monitor-enter p0

    .line 1439
    :try_start_1
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    .line 1440
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 1441
    if-nez p1, :cond_11

    .line 1442
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 1444
    :cond_11
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    .line 1445
    monitor-exit p0

    return-void

    .line 1438
    .end local p1    # "isEnabled":Z
    :catchall_16
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw p1
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    .line 1429
    :try_start_1
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_13

    .line 1430
    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 1434
    :cond_13
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1435
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 1436
    monitor-exit p0

    return-void

    .line 1428
    :catchall_21
    move-exception v0

    monitor-exit p0

    .line 1428
    .end local p0    # "this":Landroid/net/apf/ApfFilter;
    throw v0
.end method
