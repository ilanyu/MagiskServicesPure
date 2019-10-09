.class public Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyServiceSupport.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicySupport"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mUidObserver:Landroid/app/IUidObserver;

    .line 30
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mHandler:Landroid/os/Handler;

    .line 32
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mActivityManager:Landroid/app/IActivityManager;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    .line 20
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public enablePowerSave(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 46
    invoke-static {p1}, Landroid/net/wifi/MiuiWifiManager;->enablePowerSave(Z)V

    .line 47
    return-void
.end method

.method public registerUidObserver()V
    .registers 6

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 42
    goto :goto_c

    .line 40
    :catch_b
    move-exception v0

    .line 43
    :goto_c
    return-void
.end method

.method public updateIface(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 51
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 52
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 53
    .local v2, "lp":Landroid/net/LinkProperties;
    if-eqz v2, :cond_33

    .line 54
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "newIface":Ljava/lang/String;
    if-eqz v3, :cond_33

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 56
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/MiuiNetworkManagementService;->updateIface(Ljava/lang/String;)Z

    .line 57
    return-object v3

    .line 61
    .end local v3    # "newIface":Ljava/lang/String;
    :cond_33
    return-object p1
.end method
