.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private mBringupStartTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .line 1912
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1913
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1884
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1887
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 1892
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1914
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1915
    const-string/jumbo v0, "racoon"

    const-string/jumbo v1, "mtpd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1917
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p4, v0, v2

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1918
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1926
    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1928
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1929
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1930
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    :goto_55
    if-ge v1, v3, :cond_7d

    aget-object v4, v2, v1

    .line 1931
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 1932
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_7a

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1933
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1934
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_7a

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1930
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1939
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_7d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1940
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1941
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1942
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1877
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1877
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private bringup()V
    .registers 18

    .line 2001
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    .line 2004
    .local v3, "initFinished":Z
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2007
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v0

    move v5, v2

    :goto_e
    const/4 v6, 0x1

    if-ge v5, v4, :cond_20

    aget-object v7, v0, v5

    .line 2008
    .local v7, "daemon":Ljava/lang/String;
    :goto_13
    invoke-static {v7}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 2009
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_13

    .line 2007
    .end local v7    # "daemon":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 2014
    :cond_20
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/vpn/state"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2015
    .local v4, "state":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2016
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d0

    .line 2019
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/misc/vpn/abort"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2020
    const/4 v3, 0x1

    .line 2023
    const/4 v0, 0x0

    .line 2024
    .local v0, "restart":Z
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v7, v5

    move v8, v0

    move v0, v2

    .end local v0    # "restart":Z
    .local v8, "restart":Z
    :goto_42
    if-ge v0, v7, :cond_52

    aget-object v9, v5, v0

    .line 2025
    .local v9, "arguments":[Ljava/lang/String;
    if-nez v8, :cond_4d

    if-eqz v9, :cond_4b

    goto :goto_4d

    :cond_4b
    move v10, v2

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v10, v6

    :goto_4e
    move v8, v10

    .line 2024
    .end local v9    # "arguments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 2027
    :cond_52
    if-nez v8, :cond_5a

    .line 2028
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2029
    return-void

    .line 2031
    :cond_5a
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v7, "execute"

    invoke-virtual {v0, v5, v7}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2034
    move v0, v2

    .local v0, "i":I
    :goto_64
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    if-ge v5, v0, :cond_10f

    .line 2035
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v5

    move-object v9, v0

    .line 2036
    .restart local v9    # "arguments":[Ljava/lang/String;
    if-nez v9, :cond_73

    .line 2037
    goto/16 :goto_fa

    .line 2041
    :cond_73
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v5

    move-object v10, v0

    .line 2042
    .local v10, "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2045
    :goto_7b
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 2046
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_7b

    .line 2050
    :cond_85
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    aput-object v11, v0, v5

    .line 2051
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_95} :catch_2d8

    .local v0, "address":Landroid/net/LocalSocketAddress;
    :goto_95
    move-object v11, v0

    .line 2057
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .local v11, "address":Landroid/net/LocalSocketAddress;
    :try_start_96
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_107

    .line 2058
    nop

    .line 2064
    :try_start_9e
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    const/16 v12, 0x1f4

    invoke-virtual {v0, v12}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2067
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v12, v0

    .line 2068
    .local v12, "out":Ljava/io/OutputStream;
    array-length v0, v9

    move v13, v2

    :goto_b2
    if-ge v13, v0, :cond_de

    aget-object v14, v9, v13

    .line 2069
    .local v14, "argument":Ljava/lang/String;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    .line 2070
    .local v15, "bytes":[B
    array-length v6, v15

    const v7, 0xffff

    if-ge v6, v7, :cond_d6

    .line 2073
    array-length v6, v15

    shr-int/lit8 v6, v6, 0x8

    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2074
    array-length v6, v15

    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2075
    invoke-virtual {v12, v15}, Ljava/io/OutputStream;->write([B)V

    .line 2076
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2068
    .end local v14    # "argument":Ljava/lang/String;
    .end local v15    # "bytes":[B
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_b2

    .line 2071
    .restart local v14    # "argument":Ljava/lang/String;
    .restart local v15    # "bytes":[B
    :cond_d6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is too large"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    .end local v14    # "argument":Ljava/lang/String;
    .end local v15    # "bytes":[B
    :cond_de
    const/16 v0, 0xff

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2079
    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2080
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 2083
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_f1} :catch_2d8

    .local v0, "in":Ljava/io/InputStream;
    :goto_f1
    move-object v6, v0

    .line 2086
    .end local v0    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_f2
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f6} :catch_100

    const/4 v7, -0x1

    if-ne v0, v7, :cond_ff

    .line 2087
    nop

    .line 2034
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "arguments":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v11    # "address":Landroid/net/LocalSocketAddress;
    .end local v12    # "out":Ljava/io/OutputStream;
    :goto_fa
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "i":I
    .local v0, "i":I
    const/4 v6, 0x1

    goto/16 :goto_64

    .line 2091
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "arguments":[Ljava/lang/String;
    .restart local v10    # "daemon":Ljava/lang/String;
    .restart local v11    # "address":Landroid/net/LocalSocketAddress;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :cond_ff
    goto :goto_101

    .line 2089
    :catch_100
    move-exception v0

    .line 2092
    :goto_101
    const/4 v7, 0x1

    :try_start_102
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2083
    move-object v0, v6

    goto :goto_f1

    .line 2059
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    :catch_107
    move-exception v0

    .line 2062
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2051
    move-object v0, v11

    const/4 v6, 0x1

    goto :goto_95

    .line 2097
    .end local v5    # "i":I
    .end local v9    # "arguments":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v11    # "address":Landroid/net/LocalSocketAddress;
    :cond_10f
    :goto_10f
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14b

    .line 2099
    move v0, v2

    .restart local v0    # "i":I
    :goto_116
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_146

    .line 2100
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 2101
    .local v5, "daemon":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_143

    invoke-static {v5}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12c

    .end local v5    # "daemon":Ljava/lang/String;
    goto :goto_143

    .line 2102
    .restart local v5    # "daemon":Ljava/lang/String;
    :cond_12c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is dead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2099
    .end local v5    # "daemon":Ljava/lang/String;
    :cond_143
    :goto_143
    add-int/lit8 v0, v0, 0x1

    goto :goto_116

    .line 2105
    .end local v0    # "i":I
    :cond_146
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_10f

    .line 2109
    :cond_14b
    const/4 v0, 0x0

    invoke-static {v4, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\n"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2110
    .local v5, "parameters":[Ljava/lang/String;
    array-length v0, v5

    const/4 v6, 0x7

    if-ne v0, v6, :cond_2c8

    .line 2115
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2117
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2119
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v0, :cond_186

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 2120
    :cond_186
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2124
    :cond_190
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_1a4

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c1

    .line 2125
    :cond_1a4
    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, "dnsServers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c1

    .line 2127
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2132
    .end local v0    # "dnsServers":Ljava/lang/String;
    :cond_1c1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_1d5

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f2

    .line 2133
    :cond_1d5
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2134
    .local v0, "searchDomains":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f2

    .line 2135
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2140
    .end local v0    # "searchDomains":Ljava/lang/String;
    :cond_1f2
    const/4 v0, 0x5

    aget-object v0, v5, v0

    move-object v6, v0

    .line 2141
    .local v6, "endpoint":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_1fa} :catch_2d8

    if-nez v0, :cond_26c

    .line 2143
    :try_start_1fc
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2144
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    const/16 v9, 0x9

    if-eqz v7, :cond_21c

    .line 2145
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x20

    invoke-direct {v11, v0, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24c

    .line 2146
    :cond_21c
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_236

    .line 2147
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x80

    invoke-direct {v11, v0, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24c

    .line 2149
    :cond_236
    const-string v7, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fc .. :try_end_24c} :catch_24d
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_24c} :catch_2d8

    .line 2153
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_24c
    goto :goto_26c

    .line 2151
    :catch_24d
    move-exception v0

    .line 2152
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_24e
    const-string v7, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing throw route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_26c
    :goto_26c
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v7
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_26f} :catch_2d8

    .line 2159
    :try_start_26f
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2162
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2165
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a8

    .line 2170
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2171
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)V

    .line 2173
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 2175
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    monitor-exit v7

    .line 2181
    .end local v4    # "state":Ljava/io/File;
    .end local v5    # "parameters":[Ljava/lang/String;
    .end local v6    # "endpoint":Ljava/lang/String;
    .end local v8    # "restart":Z
    goto :goto_2ee

    .line 2166
    .restart local v4    # "state":Ljava/io/File;
    .restart local v5    # "parameters":[Ljava/lang/String;
    .restart local v6    # "endpoint":Ljava/lang/String;
    .restart local v8    # "restart":Z
    :cond_2a8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is gone"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2176
    :catchall_2c5
    move-exception v0

    monitor-exit v7
    :try_end_2c7
    .catchall {:try_start_26f .. :try_end_2c7} :catchall_2c5

    :try_start_2c7
    throw v0

    .line 2111
    .end local v6    # "endpoint":Ljava/lang/String;
    :cond_2c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot parse the state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2017
    .end local v5    # "parameters":[Ljava/lang/String;
    .end local v8    # "restart":Z
    :cond_2d0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot delete the state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2d8} :catch_2d8

    .line 2177
    .end local v4    # "state":Ljava/io/File;
    :catch_2d8
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Aborting"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2ee
    return-void
.end method

.method private checkInterruptAndDelay(Z)V
    .registers 8
    .param p1, "sleepLonger"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1991
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 1992
    if-eqz p1, :cond_14

    const-wide/16 v2, 0xc8

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x1

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1997
    return-void

    .line 1994
    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1995
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private waitForDaemonsToStop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2190
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2191
    return-void

    .line 2194
    :cond_d
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 2196
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2197
    return-void

    .line 2195
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 1945
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1946
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1949
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 3

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1954
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 1956
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_13} :catch_14

    .line 1957
    goto :goto_15

    :catch_14
    move-exception v0

    .line 1958
    :goto_15
    return-void
.end method

.method public run()V
    .registers 10

    .line 1963
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0

    .line 1965
    :try_start_a
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_88

    .line 1967
    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    :try_start_14
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup()V

    .line 1968
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 1969
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1d} :catch_5f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    .line 1972
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_21
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 1973
    .local v7, "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_88

    .line 1972
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1978
    :cond_2b
    :try_start_2b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_88

    .line 1980
    goto :goto_30

    .line 1979
    :catch_2f
    move-exception v1

    .line 1981
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_33
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 1982
    .local v4, "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1981
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1972
    :catchall_3d
    move-exception v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v6, v5

    move v7, v3

    :goto_42
    if-ge v7, v6, :cond_4c

    aget-object v8, v5, v7

    .line 1973
    .local v8, "socket":Landroid/net/LocalSocket;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_88

    .line 1972
    .end local v8    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 1978
    :cond_4c
    :try_start_4c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_88

    .line 1980
    goto :goto_51

    .line 1979
    :catch_50
    move-exception v1

    .line 1981
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_54
    if-ge v3, v2, :cond_5e

    aget-object v5, v1, v3

    .line 1982
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1981
    .end local v5    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_5e
    throw v4

    .line 1970
    :catch_5f
    move-exception v4

    .line 1972
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_64
    if-ge v6, v5, :cond_6e

    aget-object v7, v4, v6

    .line 1973
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_88

    .line 1972
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 1978
    :cond_6e
    :try_start_6e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_88

    .line 1980
    goto :goto_73

    .line 1979
    :catch_72
    move-exception v1

    .line 1981
    :goto_73
    :try_start_73
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_76
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 1982
    .restart local v4    # "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1981
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 1984
    :cond_80
    nop

    .line 1985
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 1986
    monitor-exit v0

    .line 1987
    return-void

    .line 1986
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_88

    throw v1
.end method
