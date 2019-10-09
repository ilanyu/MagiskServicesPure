.class public Landroid/net/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# instance fields
.field public final defaultMtu:I

.field public final index:I

.field public final macAddr:Landroid/net/MacAddress;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;

    .line 62
    const/16 v0, 0x5dc

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;
    .param p4, "defaultMtu"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "impossible interface name"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    if-lez p2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v0, "invalid interface index"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iput-object p1, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    .line 69
    iput p2, p0, Landroid/net/util/InterfaceParams;->index:I

    .line 70
    if-eqz p3, :cond_1f

    move-object v0, p3

    goto :goto_21

    :cond_1f
    sget-object v0, Landroid/net/MacAddress;->ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

    :goto_21
    iput-object v0, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 71
    const/16 v0, 0x500

    if-le p4, v0, :cond_29

    move v0, p4

    nop

    :cond_29
    iput v0, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    .line 72
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Landroid/net/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 49
    .local v0, "netif":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 52
    :cond_8
    invoke-static {v0}, Landroid/net/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 55
    .local v2, "macAddr":Landroid/net/MacAddress;
    :try_start_c
    new-instance v3, Landroid/net/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v5

    invoke-direct {v3, p0, v4, v2, v5}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v3

    .line 56
    :catch_1a
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .registers 3
    .param p0, "netif"    # Ljava/net/NetworkInterface;

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 90
    :catch_9
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 82
    :catch_5
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 76
    const-string v0, "%s/%d/%s/%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
