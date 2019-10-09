.class public Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;,
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x3

.field private static final CALLBACK_TRACK_DEFAULT:I = 0x2

.field private static final DBG:Z = false

.field public static final EVENT_ON_AVAILABLE:I = 0x1

.field public static final EVENT_ON_CAPABILITIES:I = 0x2

.field public static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field public static final EVENT_ON_LOST:I = 0x4

.field public static final NOTIFY_LOCAL_PREFIXES:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultInternetNetwork:Landroid/net/Network;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDunRequired:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mLocalPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lcom/android/internal/util/StateMachine;

.field private mTetheringUpstreamNetwork:Landroid/net/Network;

.field private final mWhat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tgt"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    .line 107
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    .line 108
    sget-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 109
    iput p4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "tgt"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    .line 117
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Landroid/net/NetworkCapabilities;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 72
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(ILandroid/net/Network;)V

    return-void
.end method

.method private static allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 506
    .local p0, "netStates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/NetworkState;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 508
    .local v0, "prefixSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    .line 509
    .local v2, "ns":Landroid/net/NetworkState;
    iget-object v3, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 510
    .local v3, "lp":Landroid/net/LinkProperties;
    if-nez v3, :cond_1a

    .end local v2    # "ns":Landroid/net/NetworkState;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    goto :goto_9

    .line 511
    .restart local v2    # "ns":Landroid/net/NetworkState;
    .restart local v3    # "lp":Landroid/net/LinkProperties;
    :cond_1a
    invoke-static {v3}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 512
    .end local v2    # "ns":Landroid/net/NetworkState;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    goto :goto_9

    .line 514
    :cond_22
    return-object v0
.end method

.method private cm()Landroid/net/ConnectivityManager;
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 400
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 402
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;"
        }
    .end annotation

    .line 469
    .local p1, "netStates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/NetworkState;>;"
    .local p2, "preferredTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$1;)V

    .line 471
    .local v0, "result":Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 474
    .local v2, "type":I
    :try_start_1a
    invoke-static {v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1e} :catch_64

    .line 479
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    nop

    .line 478
    nop

    .line 480
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 482
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    .line 489
    .local v5, "value":Landroid/net/NetworkState;
    const/4 v6, 0x4

    if-eq v2, v6, :cond_4b

    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v2, v6, :cond_58

    goto :goto_4b

    .line 495
    :catch_49
    move-exception v6

    goto :goto_5a

    .line 489
    :cond_4b
    :goto_4b
    iget-object v6, v5, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 490
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 491
    iput v2, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    .line 492
    iput-object v5, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_57} :catch_49

    .line 493
    return-object v0

    .line 498
    :cond_58
    nop

    .line 499
    .end local v5    # "value":Landroid/net/NetworkState;
    goto :goto_2b

    .line 495
    .restart local v5    # "value":Landroid/net/NetworkState;
    :goto_5a
    nop

    .line 496
    .local v6, "npe":Ljava/lang/NullPointerException;
    sget-object v7, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v8, "Null pointer exception in getActiveNetworkInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    goto :goto_2b

    .line 500
    .end local v2    # "type":I
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v5    # "value":Landroid/net/NetworkState;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_63
    goto :goto_a

    .line 475
    .restart local v2    # "type":I
    :catch_64
    move-exception v3

    .line 476
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No NetworkCapabilities mapping for legacy type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    goto :goto_a

    .line 502
    .end local v2    # "type":I
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_80
    return-object v0
.end method

.method private static getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 2
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 518
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 519
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_12
    :goto_12
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private handleAvailable(ILandroid/net/Network;)V
    .registers 12
    .param p1, "callbackType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 239
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v8, Landroid/net/NetworkState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_19
    packed-switch p1, :pswitch_data_30

    goto :goto_2b

    .line 267
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_2b

    .line 274
    return-void

    .line 252
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_27

    .line 261
    return-void

    .line 263
    :cond_27
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    .line 264
    goto :goto_2b

    .line 249
    :pswitch_2a
    nop

    .line 298
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 299
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 331
    .local v0, "prev":Landroid/net/NetworkState;
    if-eqz v0, :cond_2a

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    .line 343
    :cond_13
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 348
    return-void

    .line 335
    :cond_2a
    :goto_2a
    return-void
.end method

.method private handleLost(ILandroid/net/Network;)V
    .registers 5
    .param p1, "callbackType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 363
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    .line 369
    return-void

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 376
    return-void

    .line 385
    :cond_10
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 386
    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 302
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 303
    .local v0, "prev":Landroid/net/NetworkState;
    if-eqz v0, :cond_56

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_56

    .line 316
    :cond_13
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 317
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 318
    .local v1, "newSignal":I
    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "prevSignal":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "upstream network signal strength: %s -> %s"

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/net/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .end local v1    # "newSignal":I
    .end local v3    # "prevSignal":Ljava/lang/String;
    :cond_40
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v10, Landroid/net/NetworkState;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 327
    return-void

    .line 307
    :cond_56
    :goto_56
    return-void
.end method

.method private handleResumed(ILandroid/net/Network;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 357
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 359
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESUMED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private handleSuspended(ILandroid/net/Network;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 351
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 353
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSPENDED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private notifyTarget(ILandroid/net/Network;)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 456
    return-void
.end method

.method private notifyTarget(ILjava/lang/Object;)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 460
    return-void
.end method

.method private recomputeLocalPrefixes()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 390
    .local v0, "localPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 391
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 392
    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 394
    :cond_1d
    return-void
.end method

.method private releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 451
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 452
    :cond_9
    return-void
.end method


# virtual methods
.method public getLocalPrefixes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public mobileNetworkRequested()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public registerMobileNetworkRequest()V
    .registers 9

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() already registered"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 162
    return-void

    .line 168
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    goto :goto_14

    :cond_13
    const/4 v0, 0x5

    .line 170
    .local v0, "legacyType":I
    :goto_14
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 171
    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    .line 176
    .local v7, "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 181
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting mobile upstream network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    move-object v2, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 184
    return-void
.end method

.method public releaseMobileNetworkRequest()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_5

    return-void

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 191
    return-void
.end method

.method public selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    .line 201
    .local p1, "preferredTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 202
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    move-result-object v0

    .line 204
    .local v0, "typeStatePair":Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred upstream type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    invoke-static {v3}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 206
    iget v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    packed-switch v1, :pswitch_data_3c

    .line 221
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    goto :goto_38

    .line 210
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 211
    goto :goto_38

    .line 213
    :cond_37
    nop

    .line 225
    :goto_38
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    return-object v1

    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public setCurrentUpstream(Landroid/net/Network;)V
    .registers 2
    .param p1, "upstream"    # Landroid/net/Network;

    .line 229
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 230
    return-void
.end method

.method public start()V
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    .line 123
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 124
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 125
    .local v0, "listenAllRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 126
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 128
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 130
    return-void
.end method

.method public stop()V
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 137
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    .line 139
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 140
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 142
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    return-void
.end method

.method public updateMobileRequiresDun(Z)V
    .registers 4
    .param p1, "dunRequired"    # Z

    .line 147
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 148
    .local v0, "valueChanged":Z
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    .line 149
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mobileNetworkRequested()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 150
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 153
    :cond_17
    return-void
.end method
