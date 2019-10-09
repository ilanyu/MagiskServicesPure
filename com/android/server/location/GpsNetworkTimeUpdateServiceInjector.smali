.class Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GpsNetworkTimeUpdateServiceInjector"

.field private static final hasServerField:Z = true

.field private static sConnManager:Landroid/net/ConnectivityManager;

.field private static sDefaultNtpServer:Ljava/lang/String;

.field private static sNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServerField:Ljava/lang/reflect/Field;

.field private static sTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 33
    const-string v1, "cn,ntp.org.cn"

    const-string/jumbo v2, "time5.aliyun.com"

    const-string/jumbo v3, "time6.aliyun.com"

    const-string/jumbo v4, "ntp-sz.chl.la"

    const-string/jumbo v5, "time4.aliyun.com"

    const-string v6, "2.android.pool.ntp.org"

    const-string/jumbo v7, "tw.ntp.org.cn"

    const-string/jumbo v8, "ntp1.aliyun.com"

    const-string v9, "clock.via.org"

    const-string v10, "dns.sjtu.edu.cn"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trustedTime"    # Landroid/util/TrustedTime;

    .line 74
    sput-object p1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    .line 75
    const-string v0, "connectivity"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 77
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_3e

    .line 79
    :try_start_12
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v1, "mServer"

    invoke-static {v0, v1}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v0}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 83
    .local v3, "ntpServer":Ljava/lang/String;
    sget-object v4, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_3a

    .line 82
    .end local v3    # "ntpServer":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 87
    :cond_39
    goto :goto_3e

    .line 85
    :catch_3a
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method static initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 48
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    return-void
.end method

.method static refreshNtpServer(I)Z
    .registers 5
    .param p0, "tryCounter"    # I

    .line 61
    :try_start_0
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p0, v0

    .line 62
    .local v0, "index":I
    sget-object v1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v1, "GpsNetworkTimeUpdateServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ntpServers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v3}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 65
    sget-object v1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_48

    .line 66
    const/4 v1, 0x1

    return v1

    .line 67
    .end local v0    # "index":I
    :catch_48
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v1, 0x0

    return v1
.end method

.method static setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method static switchNtpServer(I)V
    .registers 2
    .param p0, "tryCounter"    # I

    .line 92
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_15

    .line 93
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 94
    :cond_10
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 97
    :cond_15
    return-void
.end method
