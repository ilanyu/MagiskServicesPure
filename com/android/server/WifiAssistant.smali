.class public Lcom/android/server/WifiAssistant;
.super Ljava/lang/Object;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiAssistant$WifiAssistantUtils;,
        Lcom/android/server/WifiAssistant$NetworkCandidate;
    }
.end annotation


# static fields
.field protected static final ACTION_NO_INTERNET_DETAIL:Ljava/lang/String; = "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

.field protected static final DEBUG:Z = true

.field protected static final EXTRA_NETWORK_ID:Ljava/lang/String; = "EXTRA_NETWORK_ID"

.field public static IS_CTS_MODE:Z = false

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field private static final MIN_RSSI_THRESHOLD:I = -0x43

.field private static final TAG:Ljava/lang/String; = "WifiAssistant"

.field protected static final VDEBUG:Z = false

.field private static sSelf:Lcom/android/server/WifiAssistant;


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationMap:Landroid/util/SparseIntArray;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidateHandledMap:Landroid/util/SparseBooleanArray;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Lcom/android/server/WifiAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiAssistant$2;-><init>(Lcom/android/server/WifiAssistant;)V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    .line 85
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    .line 88
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    .line 89
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    .line 90
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->registerNetworkReceiver()V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_55

    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->registerMiuiOptimizationObserver()V

    .line 94
    :cond_55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiAssistant;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiAssistant;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WifiAssistant;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WifiAssistant;

    .line 43
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->handleNetworkBlocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiAssistant;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiAssistant;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->handleClickNotification(I)V

    return-void
.end method

.method public static get()Lcom/android/server/WifiAssistant;
    .registers 2

    .line 101
    sget-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    if-eqz v0, :cond_7

    .line 102
    sget-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    return-object v0

    .line 104
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WifiAssistant not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 222
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 224
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_10

    if-eqz v1, :cond_4c

    .line 225
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 226
    .local v3, "network":Landroid/net/wifi/WifiConfiguration;
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_4b

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAssociatedWifiConfiguration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 229
    return-object v3

    .line 231
    .end local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_4b
    goto :goto_14

    .line 232
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssociatedWifiConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 234
    return-object v3
.end method

.method private handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z
    .registers 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "candidate"    # Lcom/android/server/WifiAssistant$NetworkCandidate;
    .param p3, "notify"    # Z
    .param p4, "dialog"    # Z

    .line 325
    invoke-virtual {p0}, Lcom/android/server/WifiAssistant;->isWifiAssistantEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    .line 326
    const-string v0, "handleAutoConnect: auto conn and assistant enabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_1c

    .line 328
    if-eqz p3, :cond_1b

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v2, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 329
    :cond_1b
    return v1

    .line 331
    :cond_1c
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_22

    .line 333
    return v2

    .line 335
    :cond_22
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_53

    .line 336
    if-eqz p3, :cond_31

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v3, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 337
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/WifiAssistant;->isDataWifiRoamWarningEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 338
    const-string v0, "handleAutoConnect: assistant prompt data enabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 339
    if-eqz p4, :cond_45

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/WifiAssistant;->showNotValidatedDialog(IZI)V

    .line 340
    :cond_45
    return v1

    .line 342
    :cond_46
    const-string v0, "handleAutoConnect: assistant prompt data disabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 344
    return v2

    .line 347
    :cond_53
    return v1

    .line 349
    :cond_54
    const-string v0, "handleAutoConnect: auto conn and assistant disabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 350
    if-eqz p3, :cond_64

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v2, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 351
    :cond_64
    return v1
.end method

.method private handleClickNotification(I)V
    .registers 7
    .param p1, "networkId"    # I

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClickNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 480
    :try_start_14
    new-instance v0, Landroid/net/Network;

    invoke-direct {v0, p1}, Landroid/net/Network;-><init>(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_50

    .line 484
    .local v0, "network":Landroid/net/Network;
    nop

    .line 483
    nop

    .line 485
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 486
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_34

    .line 490
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v2

    .line 491
    .local v2, "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    .line 492
    return-void

    .line 487
    .end local v2    # "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    :cond_34
    :goto_34
    const-string v2, "WifiAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClickNotification: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 481
    .end local v0    # "network":Landroid/net/Network;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_50
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiAssistant"

    const-string v2, "handleClickNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    return-void
.end method

.method private handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z
    .registers 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "candidate"    # Lcom/android/server/WifiAssistant$NetworkCandidate;
    .param p3, "notify"    # Z
    .param p4, "dialog"    # Z

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleExplicitlySelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1d

    .line 305
    const/4 v0, -0x1

    .local v0, "type":I
    :goto_1c
    goto :goto_29

    .line 306
    .end local v0    # "type":I
    :cond_1d
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_23

    .line 307
    const/4 v0, 0x1

    goto :goto_1c

    .line 308
    :cond_23
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_3c

    .line 309
    const/4 v0, 0x0

    goto :goto_1c

    .line 311
    .restart local v0    # "type":I
    :goto_29
    nop

    .line 313
    if-eqz p4, :cond_31

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/WifiAssistant;->showNotValidatedDialog(IZI)V

    .line 314
    :cond_31
    if-eqz p3, :cond_3b

    iget v2, p1, Landroid/net/Network;->netId:I

    iget v3, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 315
    :cond_3b
    return v1

    .line 311
    .end local v0    # "type":I
    :cond_3c
    return v1
.end method

.method private handleNetworkBlocked()V
    .registers 5

    .line 466
    const-string v0, "handleNetworkBlocked"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 468
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_22

    .line 469
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 470
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_22

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 471
    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 474
    .end local v1    # "nc":Landroid/net/NetworkCapabilities;
    :cond_22
    return-void
.end method

.method private isAutoConnectDisabledByUser(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ssid"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 239
    .local v0, "ssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isNetworkNoInternetExpected(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 218
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 118
    const-string v0, "WifiAssistant"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/WifiAssistant;

    invoke-direct {v0, p0}, Lcom/android/server/WifiAssistant;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    .line 98
    return-void
.end method

.method private maybeClearNoInternetAccessFeature(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maybeClearNoInternetAccessFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 211
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2c

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v1, :cond_2c

    .line 212
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 214
    :cond_2c
    return-void
.end method

.method private notificationTagFor(I)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I

    .line 205
    const-string v0, "WifiAssistant:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerMiuiOptimizationObserver()V
    .registers 6

    .line 136
    new-instance v0, Lcom/android/server/WifiAssistant$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/WifiAssistant$1;-><init>(Lcom/android/server/WifiAssistant;Landroid/os/Handler;)V

    .line 143
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->MIUI_OPTIMIZATION:Ljava/lang/String;

    .line 144
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 143
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 147
    return-void
.end method

.method private registerNetworkReceiver()V
    .registers 4

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;
    .registers 13

    .line 253
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 258
    .local v2, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_12d

    if-nez v1, :cond_18

    goto/16 :goto_12d

    .line 262
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select network start for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logv(Ljava/lang/String;)V

    .line 265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 266
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 267
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4, v7}, Lcom/android/server/WifiAssistant$WifiAssistantUtils;->isScanResultMatchNetwork(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Select network: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x1

    if-eq v9, v10, :cond_96

    move v9, v11

    goto :goto_97

    :cond_96
    move v9, v5

    :goto_97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    xor-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 273
    invoke-direct {p0, v9}, Lcom/android/server/WifiAssistant;->isAutoConnectDisabledByUser(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    invoke-direct {p0, v8}, Lcom/android/server/WifiAssistant;->logv(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v8, v9, :cond_102

    .line 275
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v8

    if-eqz v8, :cond_102

    iget-boolean v8, v7, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-nez v8, :cond_102

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 277
    invoke-direct {p0, v8}, Lcom/android/server/WifiAssistant;->isAutoConnectDisabledByUser(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_102

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select WIFI for available: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 279
    sget-object v3, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v3

    .line 282
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_102
    goto/16 :goto_51

    .line 285
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_104
    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_125

    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 286
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_125

    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 287
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 288
    const-string v3, "Select DATA for data is enabled"

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 289
    sget-object v3, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v3

    .line 291
    :cond_125
    const-string v3, "Select NONE for no available network"

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 292
    sget-object v3, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v3

    .line 259
    :cond_12d
    :goto_12d
    const-string v3, "Select SELF for current wi or scan result is null"

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 260
    sget-object v3, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v3
.end method

.method private showNotValidatedDialog(IZI)V
    .registers 8
    .param p1, "currentNetwork"    # I
    .param p2, "explicitlySelected"    # Z
    .param p3, "candidateType"    # I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNotValidatedDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v1, "candidate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v1, "explicitlySelected"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiAssistantDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :try_start_48
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 179
    goto :goto_57

    .line 177
    :catch_4e
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiAssistant"

    const-string/jumbo v3, "showNotValidatedDialog failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private showValidationNotification(IIZ)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "eventId"    # I
    .param p3, "alert"    # Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showValidationNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->notificationTagFor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/WifiAssistantCompat;->showValidationNotification(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 186
    return-void
.end method

.method private validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 243
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 244
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1a

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    .line 245
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 243
    :goto_1b
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 109
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 110
    const-string v0, "WifiAssistant: "

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 112
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 115
    return-void
.end method

.method public enableDataWifiRoamWarning(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 158
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_assistant_data_prompt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    return-void
.end method

.method public enableWifiAssistant(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 150
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void
.end method

.method public handleNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkNoInternet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v0, :cond_25

    goto/16 :goto_ab

    .line 440
    :cond_25
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v0, :cond_5c

    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->isNetworkNoInternetExpected(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkNoInternet: user preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 445
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    iget v1, v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 446
    return v2

    .line 448
    :cond_5c
    sget-boolean v0, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    if-nez v0, :cond_8d

    .line 449
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 450
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_8d

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_8d

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is created by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bail out."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 453
    return v2

    .line 456
    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v0

    .line 457
    .local v0, "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v3, v3, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v3, :cond_9d

    .line 458
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    goto :goto_aa

    .line 459
    :cond_9d
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/server/WifiAssistant;->handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 460
    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v3, v4, v2, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 462
    :cond_aa
    :goto_aa
    return v2

    .line 438
    .end local v0    # "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    :cond_ab
    :goto_ab
    return v1
.end method

.method public handleNetworkValidationResult(Lcom/android/server/connectivity/NetworkAgentInfo;Z)Z
    .registers 11
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "valid"    # Z

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 362
    return p2

    .line 364
    :cond_3b
    const/4 v0, 0x0

    if-eqz p2, :cond_72

    .line 365
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v1}, Lcom/android/server/WifiAssistant;->maybeClearNotification(I)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->maybeClearNoInternetAccessFeature(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 367
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 368
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 370
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: abort for validated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 371
    return p2

    .line 373
    :cond_72
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v1, :cond_7c

    .line 374
    const-string v0, "handleNetworkValidationResult: abort for portal network"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 375
    return p2

    .line 378
    :cond_7c
    sget-boolean v1, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9c

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v1, :cond_9c

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: abort for everValidated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 381
    return v2

    .line 383
    :cond_9c
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v1, :cond_b7

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: abort for lastValidated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 386
    return p2

    .line 388
    :cond_b7
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: abort for already handled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 391
    return p2

    .line 393
    :cond_ee
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 394
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_127

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v1, :cond_127

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkValidationResult: user preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 397
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    iget v1, v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    .line 398
    return p2

    .line 400
    :cond_127
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 402
    .local v3, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_191

    if-nez v1, :cond_138

    goto :goto_191

    .line 406
    :cond_138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_172

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 407
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_171

    .line 408
    iget v4, v5, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, -0x43

    if-ge v4, v6, :cond_172

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNetworkValidationResult: rssi limit "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 412
    return v2

    .line 416
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_171
    goto :goto_13c

    .line 417
    :cond_172
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v4

    .line 419
    .local v4, "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v5, v5, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v5, :cond_183

    .line 420
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v5, v4, v2, v2}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v5

    .local v5, "expectedValid":Z
    goto :goto_187

    .line 422
    .end local v5    # "expectedValid":Z
    :cond_183
    invoke-direct {p0, p1, v4, v2, v2}, Lcom/android/server/WifiAssistant;->handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v5

    .line 424
    .restart local v5    # "expectedValid":Z
    :goto_187
    if-eqz v5, :cond_190

    .line 427
    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v6, v7, v2, v0}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 429
    :cond_190
    return p2

    .line 403
    .end local v4    # "candidate":Lcom/android/server/WifiAssistant$NetworkCandidate;
    .end local v5    # "expectedValid":Z
    :cond_191
    :goto_191
    const-string v0, "handleNetworkValidationResult: wi or scan result is null"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 404
    return v2
.end method

.method public isDataWifiRoamWarningEnabled()Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_assistant_data_prompt"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public isWifiAssistantEnabled()Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_assistant"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public maybeClearNotification(I)V
    .registers 6
    .param p1, "netId"    # I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maybeClearNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 191
    .local v0, "eventId":I
    if-ne v0, v1, :cond_34

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeClearNotification: no eventId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    .line 193
    return-void

    .line 196
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 197
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->notificationTagFor(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_48} :catch_49

    .line 200
    .end local v1    # "nm":Landroid/app/NotificationManager;
    goto :goto_52

    .line 198
    :catch_49
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiAssistant"

    const-string/jumbo v3, "maybeClearNotification failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_52
    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 202
    return-void
.end method
