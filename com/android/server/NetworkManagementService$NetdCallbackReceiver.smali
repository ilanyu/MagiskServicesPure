.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 802
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 829
    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 805
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 810
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 811
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_2e

    .line 815
    :cond_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    :goto_2e
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 25
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 834
    move-object/from16 v4, p3

    const-string v0, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, "errorMessage":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mMiuiNms:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/MiuiNetworkManagementService;->filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 837
    return v5

    .line 840
    :cond_1f
    const/4 v0, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    packed-switch v2, :pswitch_data_23e

    const/4 v11, 0x6

    packed-switch v2, :pswitch_data_246

    goto :goto_42

    .line 999
    :pswitch_2b
    aget-object v0, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1000
    .local v5, "uid":I
    aget-object v0, v4, v10

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    .line 1002
    .local v8, "firstPacket":[B
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 1004
    goto :goto_42

    .line 1003
    :catch_40
    move-exception v0

    .line 1005
    nop

    .line 1008
    .end local v5    # "uid":I
    .end local v8    # "firstPacket":[B
    :goto_42
    return v7

    .line 962
    :pswitch_43
    aget-object v0, v4, v5

    const-string v7, "Route"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    array-length v0, v4

    if-lt v0, v11, :cond_b3

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "via":Ljava/lang/String;
    const/4 v7, 0x0

    .line 968
    .local v7, "dev":Ljava/lang/String;
    const/4 v11, 0x1

    .line 969
    .local v11, "valid":Z
    move-object v12, v7

    move-object v7, v0

    .line 969
    .end local v0    # "via":Ljava/lang/String;
    .local v7, "via":Ljava/lang/String;
    .local v8, "i":I
    .local v12, "dev":Ljava/lang/String;
    :goto_55
    move v0, v8

    .line 969
    .end local v8    # "i":I
    .local v0, "i":I
    add-int/lit8 v8, v0, 0x1

    array-length v13, v4

    if-ge v8, v13, :cond_8b

    if-eqz v11, :cond_8b

    .line 970
    aget-object v8, v4, v0

    const-string v13, "dev"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 971
    if-nez v12, :cond_6f

    .line 972
    add-int/lit8 v8, v0, 0x1

    aget-object v8, v4, v8

    .line 969
    .end local v12    # "dev":Ljava/lang/String;
    .local v8, "dev":Ljava/lang/String;
    move-object v12, v8

    goto :goto_88

    .line 974
    .end local v8    # "dev":Ljava/lang/String;
    .restart local v12    # "dev":Ljava/lang/String;
    :cond_6f
    const/4 v8, 0x0

    .line 969
    .end local v11    # "valid":Z
    .local v8, "valid":Z
    :goto_70
    move v11, v8

    goto :goto_88

    .line 976
    .end local v8    # "valid":Z
    .restart local v11    # "valid":Z
    :cond_72
    aget-object v8, v4, v0

    const-string/jumbo v13, "via"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 977
    if-nez v7, :cond_84

    .line 978
    add-int/lit8 v8, v0, 0x1

    aget-object v7, v4, v8

    goto :goto_88

    .line 980
    :cond_84
    const/4 v8, 0x0

    goto :goto_70

    .line 983
    :cond_86
    const/4 v8, 0x0

    goto :goto_70

    .line 969
    :goto_88
    add-int/lit8 v8, v0, 0x2

    .line 969
    .end local v0    # "i":I
    .local v8, "i":I
    goto :goto_55

    .line 986
    .end local v8    # "i":I
    :cond_8b
    if-eqz v11, :cond_ad

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "gateway":Ljava/net/InetAddress;
    if-eqz v7, :cond_98

    :try_start_90
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    move-object v0, v8

    goto :goto_98

    .line 994
    .end local v0    # "gateway":Ljava/net/InetAddress;
    :catch_96
    move-exception v0

    goto :goto_ac

    .line 991
    .restart local v0    # "gateway":Ljava/net/InetAddress;
    :cond_98
    :goto_98
    new-instance v8, Landroid/net/RouteInfo;

    new-instance v13, Landroid/net/IpPrefix;

    aget-object v9, v4, v9

    invoke-direct {v13, v9}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v13, v0, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 992
    .local v8, "route":Landroid/net/RouteInfo;
    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v10, v4, v10

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v9, v10, v8}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_ab} :catch_96

    .line 993
    return v5

    .line 994
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "route":Landroid/net/RouteInfo;
    :goto_ac
    nop

    .line 996
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    .end local v7    # "via":Ljava/lang/String;
    .end local v11    # "valid":Z
    .end local v12    # "dev":Ljava/lang/String;
    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :pswitch_b9
    array-length v7, v4

    if-ne v7, v11, :cond_f0

    aget-object v7, v4, v5

    const-string v11, "DnsInfo"

    .line 945
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f0

    aget-object v7, v4, v10

    const-string/jumbo v10, "servers"

    .line 946
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 948
    :try_start_d1
    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_d7} :catch_e9

    .line 951
    .local v7, "lifetime":J
    nop

    .line 950
    nop

    .line 952
    aget-object v0, v4, v0

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "servers":[Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v9, v4, v9

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v10, v9, v7, v8, v0}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 953
    .end local v0    # "servers":[Ljava/lang/String;
    .end local v7    # "lifetime":J
    goto :goto_f0

    .line 949
    :catch_e9
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 955
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_f0
    :goto_f0
    return v5

    .line 914
    :pswitch_f1
    array-length v7, v4

    const/4 v12, 0x7

    if-lt v7, v12, :cond_13c

    aget-object v7, v4, v5

    const-string v12, "Address"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 918
    aget-object v7, v4, v8

    .line 921
    .local v7, "iface":Ljava/lang/String;
    :try_start_101
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, "flags":I
    aget-object v8, v4, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 923
    .local v8, "scope":I
    new-instance v11, Landroid/net/LinkAddress;

    aget-object v9, v4, v9

    invoke-direct {v11, v9, v0, v8}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_114
    .catch Ljava/lang/NumberFormatException; {:try_start_101 .. :try_end_114} :catch_135
    .catch Ljava/lang/IllegalArgumentException; {:try_start_101 .. :try_end_114} :catch_12e

    .line 923
    .end local v0    # "flags":I
    .end local v8    # "scope":I
    move-object v0, v11

    .line 928
    .local v0, "address":Landroid/net/LinkAddress;
    nop

    .line 927
    nop

    .line 930
    aget-object v8, v4, v10

    const-string/jumbo v9, "updated"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    .line 931
    iget-object v8, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v8, v7, v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_12d

    .line 933
    :cond_128
    iget-object v8, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v8, v7, v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 935
    :goto_12d
    return v5

    .line 926
    .end local v0    # "address":Landroid/net/LinkAddress;
    :catch_12e
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 924
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_135
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 915
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "iface":Ljava/lang/String;
    :cond_13c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :pswitch_142
    array-length v7, v4

    if-lt v7, v8, :cond_18e

    aget-object v7, v4, v5

    const-string v12, "IfaceClass"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18e

    .line 889
    const-wide/16 v12, 0x0

    .line 890
    .local v12, "timestampNanos":J
    const/4 v7, -0x1

    .line 891
    .local v7, "processUid":I
    array-length v14, v4

    if-lt v14, v0, :cond_169

    .line 893
    :try_start_155
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide v12, v14

    .line 894
    array-length v8, v4

    if-ne v8, v11, :cond_166

    .line 895
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_165
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_165} :catch_167

    .line 897
    .end local v7    # "processUid":I
    .local v0, "processUid":I
    move v7, v0

    .line 897
    .end local v0    # "processUid":I
    .restart local v7    # "processUid":I
    :cond_166
    goto :goto_16d

    :catch_167
    move-exception v0

    goto :goto_16d

    .line 899
    :cond_169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    .line 901
    :goto_16d
    aget-object v0, v4, v10

    const-string v8, "active"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 902
    .local v0, "isActive":Z
    iget-object v14, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v8, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 903
    if-eqz v0, :cond_182

    .line 904
    move/from16 v16, v9

    goto :goto_184

    :cond_182
    move/from16 v16, v5

    :goto_184
    const/16 v20, 0x0

    .line 902
    move-wide/from16 v17, v12

    move/from16 v19, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V
    invoke-static/range {v14 .. v20}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 906
    return v5

    .line 887
    .end local v0    # "isActive":Z
    .end local v7    # "processUid":I
    .end local v12    # "timestampNanos":J
    :cond_18e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :pswitch_194
    array-length v7, v4

    if-lt v7, v0, :cond_1bc

    aget-object v0, v4, v5

    const-string/jumbo v7, "limit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 875
    aget-object v0, v4, v10

    const-string v7, "alert"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 876
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v7, v4, v9

    aget-object v8, v4, v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v8}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return v5

    .line 879
    :cond_1b6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1bc
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :pswitch_1c2
    array-length v7, v4

    if-lt v7, v8, :cond_237

    aget-object v7, v4, v5

    const-string v11, "Iface"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_237

    .line 852
    aget-object v7, v4, v10

    const-string v11, "added"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e1

    .line 853
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v7, v4, v9

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, v7}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 854
    return v5

    .line 855
    :cond_1e1
    aget-object v7, v4, v10

    const-string/jumbo v11, "removed"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    .line 856
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v7, v4, v9

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, v7}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 857
    return v5

    .line 858
    :cond_1f4
    aget-object v7, v4, v10

    const-string v11, "changed"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_212

    array-length v7, v4

    if-ne v7, v0, :cond_212

    .line 859
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v7, v4, v9

    aget-object v8, v4, v8

    const-string/jumbo v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v7, v8}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 860
    return v5

    .line 861
    :cond_212
    aget-object v7, v4, v10

    const-string/jumbo v10, "linkstate"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_231

    array-length v7, v4

    if-ne v7, v0, :cond_231

    .line 862
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v7, v4, v9

    aget-object v8, v4, v8

    const-string/jumbo v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v7, v8}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 863
    return v5

    .line 865
    :cond_231
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_237
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_23e
    .packed-switch 0x258
        :pswitch_1c2
        :pswitch_194
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x265
        :pswitch_142
        :pswitch_f1
        :pswitch_b9
        :pswitch_43
        :pswitch_2b
    .end packed-switch
.end method
