.class Lcom/android/server/NetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateServiceInjector.java"


# static fields
.field private static final CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateServiceInjector"

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
    .registers 4

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 24
    const-string v0, "2.android.pool.ntp.org"

    const-string/jumbo v1, "time.nist.gov"

    const-string v2, "2.centos.pool.ntp.org"

    const-string v3, "asia.pool.ntp.org"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    .line 31
    const-string v0, "hshh.org"

    const-string/jumbo v1, "t1.hshh.org"

    const-string v2, "cn.ntp.org.cn"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
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

    .line 44
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static handleNetworkChanged(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "event"    # I

    .line 124
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    .line 125
    const-string v0, "connectivity"

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 129
    :cond_e
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 130
    const-string v0, "NetworkTimeUpdateServiceInjector"

    const-string/jumbo v1, "network ok,send msg to sync time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1, p2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sendHandlerMessage(Landroid/os/Handler;I)V

    .line 133
    :cond_1f
    return-void
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trustedTime"    # Landroid/util/TrustedTime;

    .line 66
    sput-object p1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    .line 67
    const-string v0, "connectivity"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 69
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_52

    .line 71
    :try_start_12
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v1, "mServer"

    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2e
    if-ge v3, v1, :cond_3a

    aget-object v4, v0, v3

    .line 75
    .local v4, "ntpServer":Ljava/lang/String;
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v4    # "ntpServer":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 77
    :cond_3a
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_4d

    .line 78
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

    array-length v1, v0

    :goto_41
    if-ge v2, v1, :cond_4d

    aget-object v3, v0, v2

    .line 79
    .local v3, "ntpServer":Ljava/lang/String;
    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_4e

    .line 78
    .end local v3    # "ntpServer":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 84
    :cond_4d
    goto :goto_52

    .line 82
    :catch_4e
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
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

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 40
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    return-void
.end method

.method static isDataNetworkReady()Z
    .registers 1

    .line 101
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static isNetChangedEvent(II)Z
    .registers 3
    .param p0, "event"    # I
    .param p1, "netEvent"    # I

    .line 89
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static isNetworkConnected()Z
    .registers 3

    .line 105
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    :goto_c
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 108
    const/4 v1, 0x1

    return v1

    .line 110
    :cond_16
    const-string v1, "NetworkTimeUpdateServiceInjector"

    const-string/jumbo v2, "network isn\'t ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    return v1
.end method

.method static refreshNtpServer(I)Z
    .registers 5
    .param p0, "tryCounter"    # I

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p0, v0

    .line 54
    .local v0, "index":I
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v1, "NetworkTimeUpdateServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ntpServers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v3}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->forceSync()Z

    .line 57
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_48

    .line 58
    const/4 v1, 0x1

    return v1

    .line 59
    .end local v0    # "index":I
    :catch_48
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    return v1
.end method

.method static sendHandlerMessage(Landroid/os/Handler;I)V
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "event"    # I

    .line 116
    if-nez p0, :cond_a

    .line 117
    const-string v0, "NetworkTimeUpdateServiceInjector"

    const-string v1, "handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 119
    :cond_a
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    :goto_11
    return-void
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

    .line 48
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method static switchNtpServer(I)V
    .registers 2
    .param p0, "tryCounter"    # I

    .line 93
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_15

    .line 94
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 95
    :cond_10
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceSync()Z

    .line 98
    :cond_15
    return-void
.end method
