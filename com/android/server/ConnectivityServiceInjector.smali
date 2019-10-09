.class Lcom/android/server/ConnectivityServiceInjector;
.super Ljava/lang/Object;
.source "ConnectivityServiceInjector.java"


# static fields
.field private static final DEFAULT_DNSV6_ABROAD:Ljava/lang/String; = "2001:4860:4860::8888"

.field private static final DEFAULT_DNSV6_DOMESTIC:Ljava/lang/String; = "240c::6666"

.field private static final DEFAULT_DNS_ABROAD:Ljava/lang/String; = "8.8.8.8"

.field private static final DEFAULT_DNS_DOMESTIC:Ljava/lang/String; = "114.114.114.114"

.field private static final TAG:Ljava/lang/String; = "ConnectivityServiceInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addDnsIfNeeded(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 60
    .local p0, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz p0, :cond_7a

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_7a

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 62
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "114.114.114.114"

    goto :goto_1a

    :cond_18
    const-string v0, "8.8.8.8"

    .line 63
    .local v0, "dns":Ljava/lang/String;
    :goto_1a
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "240c::6666"

    goto :goto_25

    :cond_23
    const-string v1, "2001:4860:4860::8888"

    .line 64
    .local v1, "dnsv6":Ljava/lang/String;
    :goto_25
    const/4 v2, 0x0

    .line 65
    .local v2, "hasIpV6":Z
    const/4 v3, 0x0

    .line 67
    .local v3, "hasIpV4":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 68
    .local v5, "ia":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3d

    .line 69
    const/4 v3, 0x1

    goto :goto_42

    .line 70
    :cond_3d
    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_42

    .line 71
    const/4 v2, 0x1

    .line 72
    .end local v5    # "ia":Ljava/net/InetAddress;
    :cond_42
    :goto_42
    goto :goto_2b

    .line 76
    :cond_43
    if-eqz v2, :cond_4f

    .line 77
    :try_start_45
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 78
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_4f

    .line 85
    :catch_4d
    move-exception v4

    goto :goto_59

    .line 81
    :cond_4f
    :goto_4f
    if-eqz v3, :cond_79

    .line 82
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 83
    .restart local v4    # "inetAddress":Ljava/net/InetAddress;
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_58} :catch_4d

    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_79

    .line 85
    :goto_59
    nop

    .line 86
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "ConnectivityServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting dns using "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "dns":Ljava/lang/String;
    .end local v1    # "dnsv6":Ljava/lang/String;
    .end local v2    # "hasIpV6":Z
    .end local v3    # "hasIpV4":Z
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7a

    .line 87
    .restart local v0    # "dns":Ljava/lang/String;
    .restart local v1    # "dnsv6":Ljava/lang/String;
    .restart local v2    # "hasIpV6":Z
    .restart local v3    # "hasIpV4":Z
    :cond_79
    :goto_79
    nop

    .line 89
    .end local v0    # "dns":Ljava/lang/String;
    .end local v1    # "dnsv6":Ljava/lang/String;
    .end local v2    # "hasIpV6":Z
    .end local v3    # "hasIpV4":Z
    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ssid"    # Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "wifi"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 31
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 33
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v2, "loginIntent":Landroid/content/Intent;
    const-string v3, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v3, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 38
    const-string/jumbo v3, "miui.intent.extra.BSSID"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_46
    const-string/jumbo v3, "miui.intent.extra.CAPTIVE_PORTAL"

    const-string/jumbo v4, "miui.intent.extra.CAPTIVE_PORTAL"

    .line 41
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v3, "miui.intent.extra.NETWORK"

    const-string/jumbo v4, "miui.intent.extra.NETWORK"

    .line 43
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v3, "miui.intent.extra.EXPLICIT_SELECTED"

    const-string/jumbo v4, "miui.intent.extra.EXPLICIT_SELECTED"

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 50
    .local v3, "cacheIntent":Landroid/content/Intent;
    const-string/jumbo v4, "miui.intent.CACHE_OPENWIFI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
