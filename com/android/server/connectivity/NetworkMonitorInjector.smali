.class Lcom/android/server/connectivity/NetworkMonitorInjector;
.super Ljava/lang/Object;
.source "NetworkMonitorInjector.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorInjector"

.field private static final sDefaultCandidates:[Ljava/lang/String;

.field private static final sGlobalCandidates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    const-string v0, "http://info.3g.qq.com/"

    const-string v1, "http://m.baidu.com/"

    const-string v2, "http://m.sohu.com/"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitorInjector;->sDefaultCandidates:[Ljava/lang/String;

    .line 22
    const-string v0, "http://www.google.com/"

    const-string v1, "http://www.facebook.com/"

    const-string v2, "http://www.youtube.com/"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitorInjector;->sGlobalCandidates:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static final getCaptivePortalPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/app/PendingIntent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "nm"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "finishedMessageCode"    # I

    .line 44
    if-eqz p3, :cond_46

    iget-object v0, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    if-eqz p1, :cond_46

    .line 45
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 46
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.intent.extra.CAPTIVE_PORTAL"

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitorInjector$1;

    invoke-direct {v2, p2, p4}, Lcom/android/server/connectivity/NetworkMonitorInjector$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "miui.intent.extra.NETWORK"

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "miui.intent.extra.EXPLICIT_SELECTED"

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    .line 57
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_46

    .line 59
    :cond_42
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_46
    :goto_46
    return-object p1
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "server"    # Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isHttps"    # Z

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "server":Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_11

    const-string v2, "https"

    goto :goto_13

    :cond_11
    const-string v2, "http"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_27
    return-object p1
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;

    .line 27
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static final sendHttpProbe(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/util/LocalLog;)I
    .registers 14
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "validationLogs"    # Landroid/util/LocalLog;

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 74
    .local v0, "index":I
    const/4 v1, 0x0

    .line 75
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x257

    .line 76
    .local v2, "httpResponseCode":I
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitorInjector;->sGlobalCandidates:[Ljava/lang/String;

    goto :goto_16

    :cond_14
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitorInjector;->sDefaultCandidates:[Ljava/lang/String;

    .line 78
    .local v3, "candidates":[Ljava/lang/String;
    :goto_16
    :try_start_16
    new-instance v4, Ljava/net/URL;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "url":Ljava/net/URL;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v5, v4}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v1, v5

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 81
    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 82
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 83
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 86
    .local v5, "requestTimestamp":J
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    move v2, v7

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 89
    .local v7, "responseTimestamp":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROBE_HTTP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " headers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-virtual {p1, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_75} :catch_be
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_75} :catch_7d
    .catchall {:try_start_16 .. :try_end_75} :catchall_7b

    .line 99
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "requestTimestamp":J
    .end local v7    # "responseTimestamp":J
    if-eqz v1, :cond_da

    .line 100
    :goto_77
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_da

    .line 99
    :catchall_7b
    move-exception v4

    goto :goto_e4

    .line 95
    :catch_7d
    move-exception v4

    .line 96
    .local v4, "e":Ljava/io/IOException;
    :try_start_7e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkMonitorInjector/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Probably not a portal: exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probably not a portal: exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_da

    goto :goto_77

    .line 93
    :catch_be
    move-exception v4

    .line 94
    .local v4, "e":Ljava/net/MalformedURLException;
    const-string v5, "NetworkMonitorInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid probe URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_7e .. :try_end_d7} :catchall_7b

    .line 99
    .end local v4    # "e":Ljava/net/MalformedURLException;
    if-eqz v1, :cond_da

    goto :goto_77

    .line 103
    :cond_da
    :goto_da
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_e1

    const/16 v4, 0xcc

    goto :goto_e3

    :cond_e1
    const/16 v4, 0x257

    :goto_e3
    return v4

    .line 99
    :goto_e4
    if-eqz v1, :cond_e9

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e9
    throw v4
.end method
