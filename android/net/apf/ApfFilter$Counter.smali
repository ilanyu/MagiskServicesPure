.class final enum Landroid/net/apf/ApfFilter$Counter;
.super Ljava/lang/Enum;
.source "ApfFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Counter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/apf/ApfFilter$Counter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_802_3_FRAME:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_ARP_OTHER_HOST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_ETHERTYPE_BLACKLISTED:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_ETH_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_GARP_REPLY:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV4_BROADCAST_ADDR:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV4_BROADCAST_NET:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV4_L2_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV4_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV6_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV6_MULTICAST_NA:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV6_MULTICAST_PING:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV6_NON_ICMP_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_IPV6_ROUTER_SOLICITATION:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_NBNS:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum DROPPED_RA:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_ARP:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_ARP_NON_IPV4:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_ARP_UNICAST_REPLY:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_ARP_UNKNOWN:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_DHCP:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_IPV4:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_IPV4_UNICAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_IPV6_ICMP:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_IPV6_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_IPV6_UNICAST_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum PASSED_NON_IP_UNICAST:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum RESERVED_OOB:Landroid/net/apf/ApfFilter$Counter;

.field public static final enum TOTAL_PACKETS:Landroid/net/apf/ApfFilter$Counter;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 115
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "RESERVED_OOB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->RESERVED_OOB:Landroid/net/apf/ApfFilter$Counter;

    .line 116
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "TOTAL_PACKETS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->TOTAL_PACKETS:Landroid/net/apf/ApfFilter$Counter;

    .line 117
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_ARP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP:Landroid/net/apf/ApfFilter$Counter;

    .line 118
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_DHCP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_DHCP:Landroid/net/apf/ApfFilter$Counter;

    .line 119
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_IPV4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4:Landroid/net/apf/ApfFilter$Counter;

    .line 120
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_IPV6_NON_ICMP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    .line 121
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_IPV4_UNICAST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    .line 122
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_IPV6_ICMP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_ICMP:Landroid/net/apf/ApfFilter$Counter;

    .line 123
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_IPV6_UNICAST_NON_ICMP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_UNICAST_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    .line 124
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_ARP_NON_IPV4"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_NON_IPV4:Landroid/net/apf/ApfFilter$Counter;

    .line 125
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_ARP_UNKNOWN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNKNOWN:Landroid/net/apf/ApfFilter$Counter;

    .line 126
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_ARP_UNICAST_REPLY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNICAST_REPLY:Landroid/net/apf/ApfFilter$Counter;

    .line 127
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "PASSED_NON_IP_UNICAST"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_NON_IP_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    .line 129
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_NBNS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_NBNS:Landroid/net/apf/ApfFilter$Counter;

    .line 130
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_ETH_BROADCAST"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETH_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    .line 131
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_RA"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_RA:Landroid/net/apf/ApfFilter$Counter;

    .line 132
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_GARP_REPLY"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_GARP_REPLY:Landroid/net/apf/ApfFilter$Counter;

    .line 133
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_ARP_OTHER_HOST"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ARP_OTHER_HOST:Landroid/net/apf/ApfFilter$Counter;

    .line 134
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV4_L2_BROADCAST"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_L2_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    .line 135
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV4_BROADCAST_ADDR"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_ADDR:Landroid/net/apf/ApfFilter$Counter;

    .line 136
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV4_BROADCAST_NET"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_NET:Landroid/net/apf/ApfFilter$Counter;

    .line 137
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV4_MULTICAST"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    .line 138
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV6_ROUTER_SOLICITATION"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_ROUTER_SOLICITATION:Landroid/net/apf/ApfFilter$Counter;

    .line 139
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV6_MULTICAST_NA"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_NA:Landroid/net/apf/ApfFilter$Counter;

    .line 140
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV6_MULTICAST"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    .line 141
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV6_MULTICAST_PING"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_PING:Landroid/net/apf/ApfFilter$Counter;

    .line 142
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_IPV6_NON_ICMP_MULTICAST"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_NON_ICMP_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    .line 143
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_802_3_FRAME"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_802_3_FRAME:Landroid/net/apf/ApfFilter$Counter;

    .line 144
    new-instance v0, Landroid/net/apf/ApfFilter$Counter;

    const-string v1, "DROPPED_ETHERTYPE_BLACKLISTED"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Landroid/net/apf/ApfFilter$Counter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETHERTYPE_BLACKLISTED:Landroid/net/apf/ApfFilter$Counter;

    .line 113
    const/16 v0, 0x1d

    new-array v0, v0, [Landroid/net/apf/ApfFilter$Counter;

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->RESERVED_OOB:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->TOTAL_PACKETS:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_DHCP:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v8

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_ICMP:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v9

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_UNICAST_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v10

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_NON_IPV4:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v11

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNKNOWN:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v12

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNICAST_REPLY:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v13

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->PASSED_NON_IP_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    aput-object v1, v0, v14

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_NBNS:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETH_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_RA:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_GARP_REPLY:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ARP_OTHER_HOST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_L2_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_ADDR:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_NET:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_ROUTER_SOLICITATION:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_NA:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_PING:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_NON_ICMP_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_802_3_FRAME:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETHERTYPE_BLACKLISTED:Landroid/net/apf/ApfFilter$Counter;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/apf/ApfFilter$Counter;->$VALUES:[Landroid/net/apf/ApfFilter$Counter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static totalSize()I
    .registers 1

    .line 154
    const-class v0, Landroid/net/apf/ApfFilter$Counter;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/apf/ApfFilter$Counter;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfFilter$Counter;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 113
    const-class v0, Landroid/net/apf/ApfFilter$Counter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfFilter$Counter;

    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfFilter$Counter;
    .registers 1

    .line 113
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->$VALUES:[Landroid/net/apf/ApfFilter$Counter;

    invoke-virtual {v0}, [Landroid/net/apf/ApfFilter$Counter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/apf/ApfFilter$Counter;

    return-object v0
.end method


# virtual methods
.method public offset()I
    .registers 2

    .line 149
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Counter;->ordinal()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
