.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .registers 16
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "packet"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfFilter$InvalidRaException;
        }
    .end annotation

    .line 621
    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 622
    const/16 v1, 0x46

    if-lt p3, v1, :cond_14b

    .line 626
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 627
    invoke-virtual {p1}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 631
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    if-ne v2, v3, :cond_143

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    .line 632
    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v2

    sget v3, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v2, v3, :cond_143

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0x36

    .line 633
    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v2

    const/16 v3, 0x86

    if-ne v2, v3, :cond_143

    .line 638
    new-instance v2, Landroid/net/metrics/RaEvent$Builder;

    invoke-direct {v2}, Landroid/net/metrics/RaEvent$Builder;-><init>()V

    .line 641
    .local v2, "builder":Landroid/net/metrics/RaEvent$Builder;
    const/16 v3, 0xf

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, v4}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    .line 646
    .local v3, "lastNonLifetimeStart":I
    const/16 v5, 0x38

    const/4 v6, 0x2

    invoke-direct {p0, v3, v5, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    .line 651
    const/16 v5, 0x3c

    invoke-direct {p0, v3, v5, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    .line 654
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v7, v5}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/net/metrics/RaEvent$Builder;->updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 657
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 658
    :goto_7d
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 659
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 660
    .local v1, "position":I
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v5, v1}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 661
    .local v5, "optionType":I
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v7

    const/16 v8, 0x8

    mul-int/2addr v7, v8

    .line 663
    .local v7, "optionLength":I
    if-eq v5, v4, :cond_df

    const/16 v8, 0x1f

    if-eq v5, v8, :cond_cf

    packed-switch v5, :pswitch_data_154

    goto :goto_108

    .line 684
    :pswitch_a6
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    .line 686
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    .line 687
    .local v8, "lifetime":J
    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 688
    goto :goto_108

    .line 690
    .end local v8    # "lifetime":J
    :pswitch_bf
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    .line 691
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    .line 692
    .restart local v8    # "lifetime":J
    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 693
    goto :goto_108

    .line 695
    .end local v8    # "lifetime":J
    :cond_cf
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    .line 696
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    .line 697
    .restart local v8    # "lifetime":J
    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 698
    goto :goto_108

    .line 666
    .end local v8    # "lifetime":J
    :cond_df
    const/4 v9, 0x4

    invoke-direct {p0, v3, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    .line 669
    iget-object v10, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v1, 0x4

    invoke-static {v10, v11}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v10

    .line 671
    .local v10, "lifetime":J
    invoke-virtual {v2, v10, v11}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 673
    invoke-direct {p0, v3, v8, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    .line 676
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x8

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    .line 678
    .end local v10    # "lifetime":J
    .restart local v8    # "lifetime":J
    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 679
    iget-object v10, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    nop

    .line 704
    .end local v8    # "lifetime":J
    :goto_108
    if-lez v7, :cond_113

    .line 708
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 709
    .end local v1    # "position":I
    .end local v5    # "optionType":I
    .end local v7    # "optionLength":I
    goto/16 :goto_7d

    .line 705
    .restart local v1    # "position":I
    .restart local v5    # "optionType":I
    .restart local v7    # "optionLength":I
    :cond_113
    new-instance v4, Landroid/net/apf/ApfFilter$InvalidRaException;

    new-array v6, v6, [Ljava/lang/Object;

    .line 706
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    .line 705
    const-string v0, "Invalid option length opt=%d len=%d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 711
    .end local v1    # "position":I
    .end local v5    # "optionType":I
    .end local v7    # "optionLength":I
    :cond_12e
    invoke-direct {p0, v3, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    .line 712
    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 713
    # getter for: Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/metrics/RaEvent$Builder;->build()Landroid/net/metrics/RaEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 714
    return-void

    .line 634
    .end local v2    # "builder":Landroid/net/metrics/RaEvent$Builder;
    .end local v3    # "lastNonLifetimeStart":I
    :cond_143
    new-instance v0, Landroid/net/apf/ApfFilter$InvalidRaException;

    const-string v1, "Not an ICMP6 router advertisement"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_14b
    new-instance v0, Landroid/net/apf/ApfFilter$InvalidRaException;

    const-string v1, "Not an ICMP6 router advertisement"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_154
    .packed-switch 0x18
        :pswitch_bf
        :pswitch_a6
    .end packed-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .registers 6
    .param p1, "pos"    # I

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 538
    .local v0, "array":[B
    if-ltz p1, :cond_23

    add-int/lit8 v1, p1, 0x10

    array-length v2, v0

    if-gt v1, v2, :cond_23

    add-int/lit8 v1, p1, 0x10

    if-ge v1, p1, :cond_12

    goto :goto_23

    .line 541
    :cond_12
    add-int/lit8 v1, p1, 0x10

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 542
    .local v1, "addressBytes":[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 543
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 539
    .end local v1    # "addressBytes":[B
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_23
    :goto_23
    const-string v1, "???"
    :try_end_25
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_25} :catch_2a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v1

    .line 547
    .end local v0    # "array":[B
    :catch_26
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "???"

    return-object v1

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "???"

    return-object v1
.end method

.method private addNonLifetime(III)I
    .registers 8
    .param p1, "lastNonLifetimeStart"    # I
    .param p2, "lifetimeOffset"    # I
    .param p3, "lifetimeLength"    # I

    .line 606
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    .line 607
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int v3, p2, p1

    .line 608
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    add-int v0, p2, p3

    return v0
.end method

.method private addNonLifetimeU32(I)I
    .registers 3
    .param p1, "lastNonLifetimeStart"    # I

    .line 613
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    return v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .registers 13
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .line 556
    add-int/lit8 v0, p2, 0x10

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 558
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p2, 0x4

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 559
    .local v2, "valid":J
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, p2, 0x8

    invoke-static {v4, v5}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    .line 560
    .local v4, "preferred":J
    const-string v6, "%s/%d %ds/%ds "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .registers 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .line 564
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 565
    .local v0, "optLen":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_f

    return-void

    .line 566
    :cond_f
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    .line 567
    .local v1, "lifetime":J
    add-int/lit8 v3, v0, -0x8

    const/16 v4, 0x10

    div-int/2addr v3, v4

    .line 568
    .local v3, "numServers":I
    const-string v5, "DNS "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "s"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    const/4 v5, 0x0

    .line 569
    .local v5, "server":I
    :goto_2b
    if-ge v5, v3, :cond_41

    .line 570
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, p2, 0x8

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 572
    .end local v5    # "server":I
    :cond_41
    return-void
.end method


# virtual methods
.method currentLifetime()J
    .registers 7

    .line 767
    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-virtual {v2}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .registers 12
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    # invokes: Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J
    invoke-static {v1}, Landroid/net/apf/ApfFilter;->access$600(Landroid/net/apf/ApfFilter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "nextFilterLabel":Ljava/lang/String;
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 783
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 784
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v1

    const-wide/16 v3, 0x6

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 786
    .local v1, "filterLifetime":I
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 787
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 788
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_ee

    .line 790
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 795
    .local v4, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_89

    .line 796
    sget-object v5, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 797
    sget-object v5, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 798
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 799
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    .line 798
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 797
    invoke-virtual {p1, v5, v6, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 803
    :cond_89
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_ea

    .line 804
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 805
    .local v5, "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    .line 808
    .local v6, "offset":I
    if-ne v6, v3, :cond_b1

    .line 809
    goto :goto_ea

    .line 812
    :cond_b1
    const/16 v7, 0x38

    if-ne v6, v7, :cond_b6

    .line 813
    goto :goto_ea

    .line 815
    :cond_b6
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v6

    .line 816
    .local v7, "length":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_e2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_cb

    .line 817
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v8, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    goto :goto_e7

    .line 819
    :cond_cb
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bogus lifetime size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 818
    :cond_e2
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v8, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 821
    :goto_e7
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 788
    .end local v4    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    .end local v7    # "length":I
    :cond_ea
    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    .line 824
    .end local v2    # "i":I
    :cond_ee
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    sget-object v3, Landroid/net/apf/ApfFilter$Counter;->DROPPED_RA:Landroid/net/apf/ApfFilter$Counter;

    # invokes: Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V
    invoke-static {v2, p1, v3}, Landroid/net/apf/ApfFilter;->access$700(Landroid/net/apf/ApfFilter;Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 825
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    # getter for: Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/apf/ApfFilter;->access$800(Landroid/net/apf/ApfFilter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 826
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 827
    int-to-long v2, v1

    return-wide v2
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .registers 4

    .line 527
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .registers 5

    .line 773
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method matches([BI)Z
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .line 718
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_a

    return v1

    .line 719
    :cond_a
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 720
    .local v0, "referencePacket":[B
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 721
    .local v3, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "i":I
    :goto_2a
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_47

    .line 722
    aget-byte v5, p1, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_44

    return v1

    .line 721
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 724
    .end local v3    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_47
    goto :goto_16

    .line 725
    :cond_48
    const/4 v1, 0x1

    return v1
.end method

.method minLifetime([BI)J
    .registers 12
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .line 731
    const-wide v0, 0x7fffffffffffffffL

    .line 733
    .local v0, "minLifetime":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 734
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_82

    .line 735
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 738
    .local v4, "offset":I
    const/16 v5, 0xf

    if-ne v4, v5, :cond_3a

    .line 739
    goto :goto_7f

    .line 743
    :cond_3a
    const/16 v5, 0x38

    if-ne v4, v5, :cond_3f

    .line 744
    goto :goto_7f

    .line 747
    :cond_3f
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v4

    .line 749
    .local v5, "lifetimeLength":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_74

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5d

    .line 754
    invoke-static {v2, v4}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    .line 755
    .local v6, "optionLifetime":J
    goto :goto_7a

    .line 757
    .end local v6    # "optionLifetime":J
    :cond_5d
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bogus lifetime size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 751
    :cond_74
    invoke-static {v2, v4}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    int-to-long v6, v6

    .line 752
    .restart local v6    # "optionLifetime":J
    nop

    .line 757
    :goto_7a
    nop

    .line 759
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 734
    .end local v4    # "offset":I
    .end local v5    # "lifetimeLength":I
    .end local v6    # "optionLifetime":J
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 761
    .end local v3    # "i":I
    :cond_82
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 576
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "RA %s -> %s %ds "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x16

    .line 578
    invoke-direct {p0, v4}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x26

    .line 579
    invoke-direct {p0, v4}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v5, 0x3c

    .line 580
    invoke-static {v4, v5}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 577
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 582
    .local v2, "i":I
    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V

    .line 583
    .end local v2    # "i":I
    goto :goto_38

    .line 584
    :cond_4c
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 585
    .restart local v2    # "i":I
    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    .line 586
    .end local v2    # "i":I
    goto :goto_52

    .line 587
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6a} :catch_6b

    return-object v1

    .line 588
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :catch_6b
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "<Malformed RA>"

    return-object v1
.end method
