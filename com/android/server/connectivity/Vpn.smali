.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L


# instance fields
.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 146
    const/16 v0, 0x55

    .line 148
    .local v0, "howManyPercentIsMost":I
    const-wide v1, 0x100000000L

    .line 149
    .local v1, "twoPower32":J
    const-wide v3, 0xd9999999L

    sput-wide v3, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 150
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 151
    .local v3, "twoPower128":Ljava/math/BigInteger;
    nop

    .line 152
    const-wide/16 v4, 0x55

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 153
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 154
    .end local v0    # "howManyPercentIsMost":I
    .end local v1    # "twoPower32":J
    .end local v3    # "twoPower128":Ljava/math/BigInteger;
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .line 250
    new-instance v5, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V

    .line 251
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I
    .param p5, "systemServices"    # Lcom/android/server/connectivity/Vpn$SystemServices;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 196
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 203
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 210
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 1412
    new-instance v1, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 256
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 257
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 258
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 259
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 260
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 262
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 266
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 269
    goto :goto_48

    .line 267
    :catch_40
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_48
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x11

    const-string v3, "VPN"

    const-string v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 273
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 275
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 276
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities()V

    .line 278
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method private agentConnect()V
    .registers 19

    .line 945
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 947
    .local v12, "lp":Landroid/net/LinkProperties;
    invoke-static {v12}, Lcom/android/server/connectivity/Vpn;->providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_14

    .line 948
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_19

    .line 950
    :cond_14
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 953
    :goto_19
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    move-object v13, v0

    .line 956
    .local v13, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_34

    iget-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_34

    move v0, v14

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput-boolean v0, v13, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 958
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setEstablishingVpnAppUid(I)V

    .line 959
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v2, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v11, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    .line 963
    .local v9, "token":J
    :try_start_58
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v11, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v11, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_89

    const/16 v15, 0x65

    move-object v1, v0

    move-object v2, v11

    move-object v8, v12

    move-wide/from16 v16, v9

    move v9, v15

    .end local v9    # "token":J
    .local v16, "token":J
    move-object v10, v13

    :try_start_6d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_85

    .line 972
    move-wide/from16 v1, v16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    .end local v16    # "token":J
    .local v1, "token":J
    nop

    .line 974
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v14}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 975
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "agentConnect"

    invoke-virtual {v11, v0, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 976
    return-void

    .line 972
    .end local v1    # "token":J
    .restart local v16    # "token":J
    :catchall_85
    move-exception v0

    move-wide/from16 v1, v16

    .end local v16    # "token":J
    .restart local v1    # "token":J
    goto :goto_8b

    .end local v1    # "token":J
    .restart local v9    # "token":J
    :catchall_89
    move-exception v0

    move-wide v1, v9

    .end local v9    # "token":J
    .restart local v1    # "token":J
    :goto_8b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    .line 997
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 998
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 999
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1002
    :cond_18
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .line 988
    if-eqz p1, :cond_16

    .line 989
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 990
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 991
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 994
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_16
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 981
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    return v2

    .line 983
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .line 1444
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .line 1450
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 1455
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 1669
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1671
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_23

    .line 1672
    return-object v1

    .line 1674
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    goto :goto_8

    .line 1676
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find IPv4 default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 792
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 793
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 795
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 798
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 802
    .local v1, "token":J
    :try_start_17
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1b} :catch_24
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 808
    .local v3, "result":I
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    goto :goto_27

    .line 808
    .end local v3    # "result":I
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 803
    :catch_24
    move-exception v3

    .line 804
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .local v3, "result":I
    goto :goto_1b

    .line 808
    :goto_27
    nop

    .line 811
    return v3
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1142
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1143
    .local v0, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1145
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1146
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_23
    goto :goto_9

    .line 1147
    :cond_24
    return-object v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 700
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 500
    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isRunningLocked()Z
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 784
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 787
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadAlwaysOnPackage()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 562
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v6, 0x1

    nop

    :cond_1d
    move v3, v6

    .line 566
    .local v3, "alwaysOnLockdown":Z
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_26

    .line 568
    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "alwaysOnLockdown":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    nop

    .line 570
    return-void

    .line 568
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 9

    .line 823
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 824
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 826
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 828
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 830
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 831
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 832
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 833
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 834
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 835
    .end local v4    # "address":Landroid/net/LinkAddress;
    goto :goto_20

    .line 838
    :cond_3e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 839
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 840
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 841
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 842
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 843
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 844
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_4c

    .line 847
    :cond_6a
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_92

    .line 848
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 849
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 850
    .restart local v5    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 851
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 852
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 853
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_78

    .line 856
    :cond_92
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_a5

    .line 857
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 859
    :cond_a5
    if-nez v1, :cond_b6

    .line 860
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 864
    :cond_b6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_de

    .line 866
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 867
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 868
    .end local v5    # "domain":Ljava/lang/String;
    goto :goto_c9

    .line 870
    :cond_de
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 874
    return-object v2
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 512
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 514
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 517
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 523
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 524
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 523
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 526
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_35
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 9
    .param p1, "newPackage"    # Ljava/lang/String;

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 708
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 709
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 710
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 711
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 712
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 713
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 717
    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_d6

    if-eqz v2, :cond_3b

    .line 719
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$Connection;->access$100(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v2

    const v4, 0xffffff

    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x1

    .line 719
    invoke-interface {v2, v4, v5, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2f} :catch_30
    .catchall {:try_start_1e .. :try_end_2f} :catchall_d6

    .line 723
    goto :goto_31

    .line 721
    :catch_30
    move-exception v2

    .line 724
    :goto_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 725
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    goto :goto_46

    .line 726
    :cond_3b
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v2, :cond_46

    .line 727
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 728
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_d6

    .line 732
    :cond_46
    :goto_46
    :try_start_46
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_d6

    .line 735
    goto :goto_6f

    .line 733
    :catch_4e
    move-exception v2

    .line 734
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to disallow UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to call protect() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6f
    const-string v2, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switched from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 739
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_99
    .catchall {:try_start_4f .. :try_end_99} :catchall_d6

    .line 741
    :try_start_99
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a0} :catch_a1
    .catchall {:try_start_99 .. :try_end_a0} :catchall_d6

    .line 744
    goto :goto_c2

    .line 742
    :catch_a1
    move-exception v2

    .line 743
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to allow UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to call protect() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c2
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 747
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "prepare"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 748
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_d1
    .catchall {:try_start_a2 .. :try_end_d1} :catchall_d6

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_d6
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private prepareStatusIntent()V
    .registers 4

    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1476
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    nop

    .line 1480
    return-void

    .line 1478
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z
    .registers 10
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 888
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 889
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x96

    if-le v1, v3, :cond_e

    return v2

    .line 890
    :cond_e
    invoke-static {}, Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 891
    .local v1, "prefixLengthComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/IpPrefix;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 892
    .local v3, "ipv4Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 893
    .local v4, "ipv6Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 894
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    .line 895
    .local v7, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v7}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 896
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 898
    :cond_3a
    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 900
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "destination":Landroid/net/IpPrefix;
    :goto_3d
    goto :goto_20

    .line 901
    :cond_3e
    invoke-static {v3}, Landroid/net/NetworkUtils;->routedIPv4AddressCount(Ljava/util/TreeSet;)J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_49

    .line 902
    return v2

    .line 904
    :cond_49
    invoke-static {v4}, Landroid/net/NetworkUtils;->routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 905
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_56

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    .line 904
    :goto_57
    return v2
.end method

.method private saveAlwaysOnPackage()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 546
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 547
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 546
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 548
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 549
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 548
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2a

    .line 551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    nop

    .line 553
    return-void

    .line 551
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 8
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 1376
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1377
    return v1

    .line 1379
    :cond_8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1381
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_28

    .line 1386
    nop

    .line 1387
    if-eqz p1, :cond_22

    .line 1388
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1390
    :cond_22
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1392
    :goto_27
    return v1

    .line 1382
    :catch_28
    move-exception v1

    .line 1383
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1383
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1385
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 471
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 472
    const-string v0, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting legacy VPN \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v1

    .line 476
    :cond_25
    const/4 v0, 0x1

    if-eqz p1, :cond_32

    .line 478
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 479
    return v1

    .line 481
    :cond_2f
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_36

    .line 483
    :cond_32
    const-string p1, "[Legacy VPN]"

    .line 484
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 487
    :goto_36
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_3e

    if-eqz p2, :cond_3e

    move v1, v0

    nop

    :cond_3e
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 489
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_53

    .line 492
    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 494
    :goto_53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    .line 495
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 496
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .registers 10
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1336
    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1338
    .local v2, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 1339
    .local v3, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v4, 0x1

    if-eqz p1, :cond_53

    .line 1340
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {p0, v5, v1, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 1347
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UidRange;

    .line 1348
    .local v5, "range":Landroid/net/UidRange;
    iget v6, v5, Landroid/net/UidRange;->start:I

    if-nez v6, :cond_4a

    .line 1349
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1350
    iget v6, v5, Landroid/net/UidRange;->stop:I

    if-eqz v6, :cond_4a

    .line 1351
    new-instance v6, Landroid/net/UidRange;

    iget v7, v5, Landroid/net/UidRange;->stop:I

    invoke-direct {v6, v4, v7}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1354
    .end local v5    # "range":Landroid/net/UidRange;
    :cond_4a
    goto :goto_29

    .line 1356
    :cond_4b
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1357
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1360
    :cond_53
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1361
    invoke-direct {p0, v4, v3}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1362
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    monitor-enter p0

    .line 1813
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1816
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1817
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1820
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1821
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1822
    monitor-exit p0

    return-void

    .line 1812
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local p2    # "racoon":[Ljava/lang/String;
    .end local p3    # "mtpd":[Ljava/lang/String;
    :catchall_1f
    move-exception p1

    monitor-exit p0

    .line 1812
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 7
    .param p0, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1249
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1250
    .local v0, "userRange":Landroid/net/UidRange;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1252
    .local v3, "range":Landroid/net/UidRange;
    invoke-virtual {v0, v3}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1253
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v3    # "range":Landroid/net/UidRange;
    :cond_22
    goto :goto_d

    .line 1256
    :cond_23
    return-object v1
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .registers 3

    .line 504
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 505
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 508
    :cond_e
    return-void
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 14
    .param p1, "networkState"    # Landroid/net/NetworkInfo$DetailedState;

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1576
    .local v0, "visible":Z
    :goto_c
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1577
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1579
    .local v3, "token":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    .line 1580
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    if-nez v0, :cond_29

    .line 1581
    const-string v1, "Vpn"

    invoke-virtual {v5, v1, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_ab

    .line 1604
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    return-void

    .line 1584
    :cond_29
    :try_start_29
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1585
    .local v7, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v9, 0x1040134

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1587
    const-string/jumbo v8, "lockdown"

    iget-boolean v9, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1588
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1589
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v9, 0xc000000

    invoke-virtual {v8, v7, v9, v2}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1591
    .local v8, "configIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x10808c0

    .line 1593
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x1040707

    .line 1594
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x1040704

    .line 1595
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1596
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string/jumbo v10, "sys"

    .line 1597
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1598
    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1599
    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x106016f

    .line 1600
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1601
    .local v1, "builder":Landroid/app/Notification$Builder;
    const-string v9, "Vpn"

    .line 1602
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1601
    invoke-virtual {v5, v9, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_a6
    .catchall {:try_start_29 .. :try_end_a6} :catchall_ab

    .line 1604
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1604
    :catchall_ab
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static updateCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 20
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "underlyingNetworks"    # [Landroid/net/Network;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p1

    .line 316
    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 317
    .local v3, "transportTypes":[I
    const/4 v5, 0x0

    .line 318
    .local v5, "downKbps":I
    const/4 v6, 0x0

    .line 319
    .local v6, "upKbps":I
    const/4 v7, 0x0

    .line 320
    .local v7, "metered":Z
    const/4 v8, 0x0

    .line 321
    .local v8, "roaming":Z
    const/4 v9, 0x0

    .line 323
    .local v9, "congested":Z
    const/4 v10, 0x0

    .line 324
    .local v10, "hadUnderlyingNetworks":Z
    if-eqz v0, :cond_76

    .line 325
    array-length v14, v0

    move v15, v6

    move v6, v5

    move-object v5, v3

    move v3, v4

    .end local v3    # "transportTypes":[I
    .local v5, "transportTypes":[I
    .local v6, "downKbps":I
    .local v15, "upKbps":I
    :goto_18
    if-ge v3, v14, :cond_71

    aget-object v4, v0, v3

    .line 326
    .local v4, "underlying":Landroid/net/Network;
    move-object/from16 v11, p0

    invoke-virtual {v11, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    .line 327
    .local v12, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v12, :cond_25

    .end local v4    # "underlying":Landroid/net/Network;
    .end local v12    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    goto :goto_6b

    .line 328
    .restart local v4    # "underlying":Landroid/net/Network;
    .restart local v12    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    :cond_25
    const/4 v10, 0x1

    .line 329
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    array-length v13, v2

    move-object v0, v5

    const/4 v5, 0x0

    .end local v5    # "transportTypes":[I
    .local v0, "transportTypes":[I
    :goto_2d
    if-ge v5, v13, :cond_3c

    move-object/from16 v16, v4

    aget v4, v2, v5

    .line 330
    .local v4, "underlyingType":I
    .local v16, "underlying":Landroid/net/Network;
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 329
    .end local v4    # "underlyingType":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    goto :goto_2d

    .line 335
    .end local v16    # "underlying":Landroid/net/Network;
    .local v4, "underlying":Landroid/net/Network;
    :cond_3c
    move-object/from16 v16, v4

    .line 336
    .end local v4    # "underlying":Landroid/net/Network;
    .restart local v16    # "underlying":Landroid/net/Network;
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    .line 335
    invoke-static {v6, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v6

    .line 337
    nop

    .line 338
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    .line 337
    invoke-static {v15, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v15

    .line 339
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    or-int/2addr v7, v4

    .line 340
    const/16 v4, 0x12

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v8, v4

    .line 341
    const/16 v4, 0x14

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v9, v4

    .line 325
    .end local v12    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v16    # "underlying":Landroid/net/Network;
    move-object v5, v0

    .end local v0    # "transportTypes":[I
    .restart local v5    # "transportTypes":[I
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    const/4 v4, 0x0

    goto :goto_18

    .line 344
    :cond_71
    move-object/from16 v11, p0

    move-object v3, v5

    move v5, v6

    goto :goto_79

    .end local v15    # "upKbps":I
    .restart local v3    # "transportTypes":[I
    .local v5, "downKbps":I
    .local v6, "upKbps":I
    :cond_76
    move-object/from16 v11, p0

    move v15, v6

    .end local v6    # "upKbps":I
    .restart local v15    # "upKbps":I
    :goto_79
    if-nez v10, :cond_7e

    .line 346
    const/4 v7, 0x1

    .line 347
    const/4 v8, 0x0

    .line 348
    const/4 v9, 0x0

    .line 351
    :cond_7e
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 352
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 353
    invoke-virtual {v1, v15}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 354
    if-nez v7, :cond_8b

    move v0, v2

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 355
    if-nez v8, :cond_95

    move v0, v2

    goto :goto_96

    :cond_95
    const/4 v0, 0x0

    :goto_96
    const/16 v4, 0x12

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 356
    if-nez v9, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v2, 0x0

    :goto_9f
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 357
    return-void
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 9
    .param p1, "agent"    # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"    # Lcom/android/internal/net/VpnConfig;

    .line 915
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    .line 916
    const-string v0, "Vpn"

    const-string v1, "Handover not possible due to changes to allowBypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return v2

    .line 922
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 923
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_49

    .line 928
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 929
    .local v0, "lp":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 931
    .local v1, "hadInternetCapability":Z
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z

    move-result v3

    .line 932
    .local v3, "willHaveInternetCapability":Z
    if-eq v1, v3, :cond_44

    .line 936
    const-string v4, "Vpn"

    const-string v5, "Handover not possible due to changes to INTERNET capability"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return v2

    .line 940
    :cond_44
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 941
    const/4 v2, 0x1

    return v2

    .line 924
    .end local v0    # "lp":Landroid/net/LinkProperties;
    .end local v1    # "hadInternetCapability":Z
    .end local v3    # "willHaveInternetCapability":Z
    :cond_49
    :goto_49
    const-string v0, "Vpn"

    const-string v1, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v2
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1483
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1484
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1486
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1487
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1488
    monitor-exit p0

    return v0

    .line 1482
    .end local v0    # "success":Z
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 11
    .param p2, "userHandle"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1212
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_3b

    .line 1214
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 1215
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1216
    .local v3, "uid":I
    if-ne v0, v4, :cond_21

    .line 1217
    move v0, v3

    goto :goto_2e

    .line 1218
    :cond_21
    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_2e

    .line 1219
    new-instance v4, Landroid/net/UidRange;

    invoke-direct {v4, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1220
    move v0, v3

    .line 1222
    :cond_2e
    :goto_2e
    move v1, v3

    .line 1223
    .end local v3    # "uid":I
    goto :goto_c

    .line 1224
    :cond_30
    if-eq v0, v4, :cond_3a

    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_3a
    goto :goto_84

    :cond_3b
    if-eqz p4, :cond_7d

    .line 1227
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1228
    .local v0, "userRange":Landroid/net/UidRange;
    iget v1, v0, Landroid/net/UidRange;->start:I

    .line 1229
    .local v1, "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1230
    .restart local v3    # "uid":I
    if-ne v3, v1, :cond_60

    .line 1231
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 1233
    :cond_60
    new-instance v4, Landroid/net/UidRange;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v1, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1234
    add-int/lit8 v3, v3, 0x1

    .line 1236
    .end local v1    # "start":I
    .local v3, "start":I
    move v1, v3

    .end local v3    # "start":I
    .restart local v1    # "start":I
    :goto_6d
    goto :goto_4b

    .line 1237
    :cond_6e
    iget v2, v0, Landroid/net/UidRange;->stop:I

    if-gt v1, v2, :cond_7c

    new-instance v2, Landroid/net/UidRange;

    iget v3, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v2, v1, v3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v0    # "userRange":Landroid/net/UidRange;
    .end local v1    # "start":I
    :cond_7c
    goto :goto_84

    .line 1240
    :cond_7d
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1242
    :goto_84
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1543
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-nez v0, :cond_a

    .line 1544
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1546
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 1542
    .end local p1    # "uid":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .param p1, "userHandle"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1167
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1170
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1173
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1177
    .local v1, "token":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_4c

    .line 1179
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    nop

    .line 1179
    nop

    .line 1181
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1185
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, p1, v7}, Lcom/android/server/connectivity/VpnInjector;->isSpecialUser(Landroid/content/Context;II)Z

    move-result v6

    if-nez v6, :cond_46

    .line 1186
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_4b

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_4b

    .line 1188
    :cond_46
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1190
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_4b
    goto :goto_26

    .line 1179
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_4c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1192
    .end local v1    # "token":J
    :cond_51
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 24
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1014
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move-object v3, v0

    .line 1015
    .local v3, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v4, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_234

    const/4 v5, 0x0

    if-eq v0, v4, :cond_17

    .line 1016
    monitor-exit p0

    return-object v5

    .line 1019
    :cond_17
    :try_start_17
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_234

    if-nez v0, :cond_21

    .line 1020
    monitor-exit p0

    return-object v5

    .line 1023
    :cond_21
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1024
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_234

    .line 1028
    .local v6, "token":J
    :try_start_34
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1029
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_1fd

    .line 1033
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-interface {v8, v4, v5, v9, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1035
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_1e0

    .line 1038
    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_57} :catch_211
    .catchall {:try_start_34 .. :try_end_57} :catchall_20b

    if-eqz v9, :cond_1be

    .line 1044
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_59
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    nop

    .line 1048
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v8, v0

    .line 1049
    .local v8, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object v9, v0

    .line 1050
    .local v9, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object v10, v0

    .line 1051
    .local v10, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v11, v0

    .line 1052
    .local v11, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v12, v0

    .line 1055
    .local v12, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_234

    move-object v13, v0

    .line 1057
    .local v13, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_7b
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1060
    .local v14, "interfaze":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 1061
    .local v15, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_94} :catch_1a5
    .catchall {:try_start_7b .. :try_end_94} :catchall_234

    if-eqz v16, :cond_c2

    :try_start_96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    move-object/from16 v17, v16

    .line 1062
    .local v17, "address":Landroid/net/LinkAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v17    # "address":Landroid/net/LinkAddress;
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b6
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_b6} :catch_bb
    .catchall {:try_start_96 .. :try_end_b6} :catchall_234

    .line 1063
    .end local v0    # "address":Landroid/net/LinkAddress;
    nop

    .line 1061
    move-object/from16 v0, v18

    const/4 v5, 0x0

    goto :goto_90

    .line 1114
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    :catch_bb
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    goto/16 :goto_1aa

    .line 1064
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    :cond_c2
    :try_start_c2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-lt v0, v5, :cond_195

    .line 1067
    new-instance v0, Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    move-object v5, v0

    .line 1068
    .local v5, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    :try_end_d6
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_d6} :catch_1a5
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_234

    move-object/from16 v19, v3

    .end local v3    # "mgr":Landroid/os/UserManager;
    .local v19, "mgr":Landroid/os/UserManager;
    :try_start_d8
    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v20, v15

    iget v15, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .local v20, "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const v15, 0x4000001

    invoke-virtual {v0, v4, v5, v15, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 1074
    iput-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1075
    iput-object v14, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1078
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1079
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_f6} :catch_191
    .catchall {:try_start_d8 .. :try_end_f6} :catchall_234

    .line 1080
    move-object/from16 v21, v4

    :try_start_f8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .end local v4    # "intent":Landroid/content/Intent;
    .local v21, "intent":Landroid/content/Intent;
    iput-wide v3, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1081
    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1086
    if-eqz v8, :cond_10b

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1087
    invoke-direct {v1, v0, v8}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_10b

    goto :goto_11b

    .line 1090
    :cond_10b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1091
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "establish"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1097
    invoke-direct {v1, v11}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1100
    :goto_11b
    if-eqz v10, :cond_122

    .line 1101
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1104
    :cond_122
    if-eqz v9, :cond_12d

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    .line 1105
    invoke-direct {v1, v9}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/RuntimeException; {:try_start_f8 .. :try_end_12d} :catch_1a3
    .catchall {:try_start_f8 .. :try_end_12d} :catchall_234

    .line 1109
    :cond_12d
    :try_start_12d
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_136} :catch_15c
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_136} :catch_1a3
    .catchall {:try_start_12d .. :try_end_136} :catchall_234

    .line 1113
    nop

    .line 1124
    .end local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    nop

    .line 1125
    :try_start_138
    const-string v0, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Established by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_138 .. :try_end_15a} :catchall_234

    .line 1126
    monitor-exit p0

    return-object v13

    .line 1110
    .restart local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v20    # "builder":Ljava/lang/StringBuilder;
    :catch_15c
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/io/IOException;
    :try_start_15d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1071
    .end local v0    # "e":Ljava/io/IOException;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_176
    move-object/from16 v21, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    .end local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_191
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    goto :goto_1aa

    .line 1065
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    :cond_195
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v15

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "builder":Ljava/lang/StringBuilder;
    .restart local v21    # "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one address must be specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a3
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_1a3} :catch_1a3
    .catchall {:try_start_15d .. :try_end_1a3} :catchall_234

    .line 1114
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    :catch_1a3
    move-exception v0

    goto :goto_1aa

    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1a5
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .line 1115
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    :goto_1aa
    :try_start_1aa
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1118
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1119
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1120
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v12}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1121
    iput-object v11, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1122
    iput-object v9, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1123
    throw v0
    :try_end_1be
    .catchall {:try_start_1aa .. :try_end_1be} :catchall_234

    .line 1039
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .local v0, "user":Landroid/content/pm/UserInfo;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    :cond_1be
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    :try_start_1c2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1036
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1e0
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1030
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1fd
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_209
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_209} :catch_209
    .catchall {:try_start_1c2 .. :try_end_209} :catchall_22f

    .line 1041
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :catch_209
    move-exception v0

    goto :goto_216

    .line 1044
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_20b
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    goto :goto_230

    .line 1041
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_211
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    .line 1042
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v21    # "intent":Landroid/content/Intent;
    :goto_216
    :try_start_216
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_22f
    .catchall {:try_start_216 .. :try_end_22f} :catchall_22f

    .line 1044
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22f
    move-exception v0

    :goto_230
    :try_start_230
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_234
    .catchall {:try_start_230 .. :try_end_234} :catchall_234

    .line 1013
    .end local v6    # "token":J
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_234
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 535
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 536
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    .line 534
    :catchall_e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1863
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 1864
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 1866
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 1842
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 1841
    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 1851
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1853
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1854
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1855
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1856
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1857
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 1859
    :cond_27
    monitor-exit p0

    return-object v0

    .line 1850
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_29
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public getNetId()I
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    monitor-enter p0

    .line 1521
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_a

    .line 1522
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1524
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1520
    :catchall_10
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1399
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1400
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    monitor-enter p0

    .line 1532
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-nez v0, :cond_a

    .line 1533
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1536
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1537
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1538
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    .line 1539
    monitor-exit p0

    return-object v0

    .line 1531
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_19
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1406
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 1409
    goto :goto_b

    .line 1405
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "up":Z
    :catchall_7
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1

    .line 1407
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "up":Z
    :catch_a
    move-exception v0

    .line 1410
    :goto_b
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 399
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 400
    return v0

    .line 403
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 404
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 406
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_e
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_16

    move-object v2, v3

    .line 409
    goto :goto_32

    .line 407
    :catch_16
    move-exception v3

    .line 408
    .local v3, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" when checking always-on support"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v3    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_32
    if-eqz v2, :cond_79

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_3b

    goto :goto_79

    .line 414
    :cond_3b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 417
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 418
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_78

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56

    goto :goto_78

    .line 422
    :cond_56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 423
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 424
    .local v8, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_76

    const-string v9, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    .line 425
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_76

    .line 426
    return v0

    .line 428
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "metaData":Landroid/os/Bundle;
    :cond_76
    goto :goto_5a

    .line 430
    :cond_77
    return v7

    .line 419
    :cond_78
    :goto_78
    return v0

    .line 411
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_79
    :goto_79
    return v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 7
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1557
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1558
    monitor-exit p0

    return v1

    .line 1561
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_35

    xor-int/2addr v0, v2

    monitor-exit p0

    return v0

    .line 1564
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1565
    .local v3, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v3, p1}, Landroid/net/UidRange;->contains(I)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_35

    if-eqz v4, :cond_32

    .line 1566
    monitor-exit p0

    return v2

    .line 1568
    .end local v3    # "uidRange":Landroid/net/UidRange;
    :cond_32
    goto :goto_1e

    .line 1569
    :cond_33
    monitor-exit p0

    return v1

    .line 1556
    .end local p1    # "uid":I
    :catchall_35
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1137
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onUserAdded(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 1261
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1262
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_45

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_45

    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_17
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42

    .line 1265
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_3b

    .line 1267
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1269
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_33
    .catchall {:try_start_1f .. :try_end_32} :catchall_42

    .line 1273
    goto :goto_3b

    .line 1271
    :catch_33
    move-exception v2

    .line 1272
    .local v2, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1275
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3b
    :goto_3b
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1276
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_45

    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw v1

    .line 1278
    :cond_45
    :goto_45
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 1282
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1283
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_42

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_42

    .line 1284
    monitor-enter p0

    .line 1285
    :try_start_17
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3f

    .line 1286
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_38

    .line 1288
    nop

    .line 1289
    :try_start_20
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1290
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1291
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_30
    .catchall {:try_start_20 .. :try_end_2f} :catchall_3f

    .line 1295
    .end local v2    # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    goto :goto_38

    .line 1293
    :catch_30
    move-exception v2

    .line 1294
    .local v2, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1298
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_42

    :catchall_3f
    move-exception v1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v1

    .line 1300
    :cond_42
    :goto_42
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    monitor-enter p0

    .line 1307
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 1308
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1310
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 1312
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1313
    monitor-exit p0

    return-void

    .line 1306
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 656
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 658
    :try_start_5
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_41

    if-nez v2, :cond_11

    .line 659
    monitor-exit p0

    return v1

    .line 663
    :cond_11
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 666
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_41

    .line 668
    monitor-exit p0

    return v0

    .line 670
    :cond_2a
    monitor-exit p0

    return v1

    .line 671
    :cond_2c
    :try_start_2c
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 674
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_41

    .line 675
    monitor-exit p0

    return v1

    .line 655
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    :catchall_41
    move-exception p1

    goto :goto_68

    .line 680
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    :cond_43
    if-eqz p2, :cond_6a

    :try_start_45
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 681
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_6a

    .line 686
    :cond_54
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 689
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_63

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_41

    if-nez v2, :cond_63

    .line 690
    monitor-exit p0

    return v1

    .line 693
    :cond_63
    :try_start_63
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_41

    .line 694
    monitor-exit p0

    return v0

    .line 655
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    :goto_68
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1

    .line 682
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    :cond_6a
    :goto_6a
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1492
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1493
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1495
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1496
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1497
    monitor-exit p0

    return v0

    .line 1491
    .end local v0    # "success":Z
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    monitor-enter p0

    .line 450
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 453
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 454
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 456
    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 449
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "lockdown":Z
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .line 287
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 288
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 3
    .param p1, "lockdown"    # Z

    monitor-enter p0

    .line 371
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 374
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 378
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_10

    .line 379
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 381
    :cond_10
    monitor-exit p0

    return-void

    .line 370
    .end local p1    # "lockdown":Z
    :catchall_12
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .line 759
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 761
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 762
    .local v0, "uid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5c

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5c

    .line 767
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 769
    .local v2, "token":J
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 770
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 771
    .local v4, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2f

    .line 772
    nop

    .line 771
    xor-int/lit8 v6, p2, 0x1

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_34
    .catchall {:try_start_1a .. :try_end_2c} :catchall_32

    .line 773
    nop

    .line 777
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    const/4 v1, 0x1

    return v1

    .line 777
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    :catchall_32
    move-exception v1

    goto :goto_58

    .line 774
    :catch_34
    move-exception v4

    .line 775
    .local v4, "e":Ljava/lang/Exception;
    :try_start_35
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_32

    .line 777
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    nop

    .line 779
    return v1

    .line 777
    :goto_58
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 764
    .end local v2    # "token":J
    :cond_5c
    :goto_5c
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 7
    .param p1, "networks"    # [Landroid/net/Network;

    monitor-enter p0

    .line 1501
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_40

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1502
    monitor-exit p0

    return v1

    .line 1504
    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 1505
    :try_start_d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_3a

    .line 1507
    :cond_12
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v3, p1

    new-array v3, v3, [Landroid/net/Network;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1508
    nop

    .local v1, "i":I
    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 1509
    aget-object v2, p1, v1

    if-nez v2, :cond_28

    .line 1510
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_37

    .line 1512
    :cond_28
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v3, Landroid/net/Network;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-direct {v3, v4}, Landroid/net/Network;-><init>(I)V

    aput-object v3, v2, v1

    .line 1508
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1516
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities()V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_40

    .line 1517
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1500
    .end local p1    # "networks":[Landroid/net/Network;
    :catchall_40
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw p1
.end method

.method public startAlwaysOnVpn()Z
    .registers 14

    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_a

    .line 582
    monitor-exit p0

    return v9

    .line 585
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_17

    .line 586
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    .line 587
    monitor-exit p0

    return v10

    .line 592
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 593
    monitor-exit p0

    return v9

    .line 595
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_86

    .line 599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v11, v1

    .line 601
    .local v11, "oldId":J
    :try_start_29
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 602
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 603
    .local v1, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v7, 0x0

    const-string/jumbo v8, "vpn"

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 607
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_81

    .line 610
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_58} :catch_60
    .catchall {:try_start_4c .. :try_end_58} :catchall_81

    if-eqz v3, :cond_5b

    goto :goto_5c

    .line 616
    :cond_5b
    move v9, v10

    :goto_5c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    return v9

    .line 611
    :catch_60
    move-exception v3

    .line 612
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_61
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_61 .. :try_end_7c} :catchall_81

    .line 613
    nop

    .line 616
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    return v10

    .line 616
    .end local v1    # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_81
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 595
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v11    # "oldId":J
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 1688
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1691
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 1693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1694
    nop

    .line 1695
    return-void

    .line 1693
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 30
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1705
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1706
    .local v3, "mgr":Landroid/os/UserManager;
    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1707
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_2fe

    const-string/jumbo v5, "no_config_vpn"

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_2fe

    .line 1712
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 1713
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1714
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1717
    .local v7, "iface":Ljava/lang/String;
    const-string v8, ""

    .line 1718
    .local v8, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 1719
    .local v9, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1720
    .local v10, "caCert":Ljava/lang/String;
    const-string v11, ""

    .line 1721
    .local v11, "serverCert":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_7f

    .line 1722
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1723
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1724
    .local v12, "value":[B
    if-nez v12, :cond_77

    move-object v14, v13

    goto :goto_7e

    :cond_77
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_7e
    move-object v9, v14

    .line 1726
    .end local v12    # "value":[B
    :cond_7f
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_aa

    .line 1727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1728
    .restart local v12    # "value":[B
    if-nez v12, :cond_a2

    move-object v14, v13

    goto :goto_a9

    :cond_a2
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_a9
    move-object v10, v14

    .line 1730
    .end local v12    # "value":[B
    :cond_aa
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d4

    .line 1731
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1732
    .restart local v12    # "value":[B
    if-nez v12, :cond_cc

    goto :goto_d3

    :cond_cc
    new-instance v13, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_d3
    move-object v11, v13

    .line 1734
    .end local v12    # "value":[B
    :cond_d4
    if-eqz v8, :cond_2f6

    if-eqz v9, :cond_2f6

    if-eqz v10, :cond_2f6

    if-eqz v11, :cond_2f6

    .line 1739
    const/4 v12, 0x0

    .line 1740
    .local v12, "racoon":[Ljava/lang/String;
    iget v13, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v14, 0x9

    const/16 v17, 0x7

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_308

    goto/16 :goto_1ac

    .line 1766
    :pswitch_f3
    new-array v13, v14, [Ljava/lang/String;

    aput-object v7, v13, v23

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v13, v15

    const-string v14, "hybridrsa"

    aput-object v14, v13, v22

    aput-object v10, v13, v21

    aput-object v11, v13, v20

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v13, v19

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v24, 0x6

    aput-object v14, v13, v24

    const-string v14, ""

    aput-object v14, v13, v17

    const/16 v14, 0x8

    aput-object v6, v13, v14

    move-object v12, v13

    goto/16 :goto_1ac

    .line 1760
    :pswitch_118
    const/16 v13, 0xb

    new-array v14, v13, [Ljava/lang/String;

    aput-object v7, v14, v23

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string/jumbo v13, "xauthrsa"

    aput-object v13, v14, v22

    aput-object v8, v14, v21

    aput-object v9, v14, v20

    aput-object v10, v14, v19

    const/4 v13, 0x6

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v17

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v18, 0x8

    aput-object v13, v14, v18

    const-string v13, ""

    const/16 v15, 0x9

    aput-object v13, v14, v15

    const/16 v13, 0xa

    aput-object v6, v14, v13

    move-object v12, v14

    .line 1764
    goto :goto_1ac

    .line 1754
    :pswitch_146
    move v15, v14

    new-array v13, v15, [Ljava/lang/String;

    aput-object v7, v13, v23

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "xauthpsk"

    aput-object v14, v13, v22

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v14, v13, v21

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v14, v13, v20

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v13, v19

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v13, v15

    const-string v14, ""

    aput-object v14, v13, v17

    const/16 v14, 0x8

    aput-object v6, v13, v14

    move-object v12, v13

    .line 1758
    goto :goto_1ac

    .line 1748
    :pswitch_170
    const/16 v14, 0x8

    new-array v13, v14, [Ljava/lang/String;

    aput-object v7, v13, v23

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "udprsa"

    aput-object v14, v13, v22

    aput-object v8, v13, v21

    aput-object v9, v13, v20

    aput-object v10, v13, v19

    const/4 v14, 0x6

    aput-object v11, v13, v14

    const-string v15, "1701"

    aput-object v15, v13, v17

    move-object v12, v13

    .line 1752
    goto :goto_1ac

    .line 1742
    :pswitch_18f
    const/4 v14, 0x6

    new-array v13, v14, [Ljava/lang/String;

    aput-object v7, v13, v23

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "udppsk"

    aput-object v14, v13, v22

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v14, v13, v21

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v14, v13, v20

    const-string v14, "1701"

    aput-object v14, v13, v19

    move-object v12, v13

    .line 1746
    nop

    .line 1774
    :goto_1ac
    const/4 v13, 0x0

    .line 1775
    .local v13, "mtpd":[Ljava/lang/String;
    iget v14, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v15, 0x14

    packed-switch v14, :pswitch_data_316

    goto/16 :goto_2af

    .line 1787
    :pswitch_1b6
    new-array v14, v15, [Ljava/lang/String;

    aput-object v7, v14, v23

    const-string/jumbo v15, "l2tp"

    const/16 v23, 0x1

    aput-object v15, v14, v23

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v15, v14, v22

    const-string v15, "1701"

    aput-object v15, v14, v21

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v15, v14, v20

    const-string/jumbo v15, "name"

    aput-object v15, v14, v19

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v19, 0x6

    aput-object v15, v14, v19

    const-string/jumbo v15, "password"

    aput-object v15, v14, v17

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v17, 0x8

    aput-object v15, v14, v17

    const-string/jumbo v15, "linkname"

    const/16 v17, 0x9

    aput-object v15, v14, v17

    const-string/jumbo v15, "vpn"

    const/16 v16, 0xa

    aput-object v15, v14, v16

    const-string/jumbo v15, "refuse-eap"

    const/16 v16, 0xb

    aput-object v15, v14, v16

    const-string/jumbo v15, "nodefaultroute"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const/16 v15, 0xd

    const-string/jumbo v16, "usepeerdns"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "idle"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    const-string v16, "1800"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    const-string/jumbo v16, "mtu"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    const-string v16, "1400"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    const-string/jumbo v16, "mru"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    const-string v16, "1400"

    aput-object v16, v14, v15

    move-object v13, v14

    goto/16 :goto_2af

    .line 1777
    :pswitch_22f
    new-array v14, v15, [Ljava/lang/String;

    aput-object v7, v14, v23

    const-string/jumbo v15, "pptp"

    const/16 v23, 0x1

    aput-object v15, v14, v23

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v15, v14, v22

    const-string v15, "1723"

    aput-object v15, v14, v21

    const-string/jumbo v15, "name"

    aput-object v15, v14, v20

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v15, v14, v19

    const-string/jumbo v15, "password"

    const/16 v19, 0x6

    aput-object v15, v14, v19

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v15, v14, v17

    const-string/jumbo v15, "linkname"

    const/16 v17, 0x8

    aput-object v15, v14, v17

    const-string/jumbo v15, "vpn"

    const/16 v17, 0x9

    aput-object v15, v14, v17

    const-string/jumbo v15, "refuse-eap"

    const/16 v16, 0xa

    aput-object v15, v14, v16

    const-string/jumbo v15, "nodefaultroute"

    const/16 v16, 0xb

    aput-object v15, v14, v16

    const-string/jumbo v15, "usepeerdns"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const/16 v15, 0xd

    const-string v16, "idle"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "1800"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    const-string/jumbo v16, "mtu"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    const-string v16, "1400"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    const-string/jumbo v16, "mru"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    const-string v16, "1400"

    aput-object v16, v14, v15

    .line 1782
    iget-boolean v15, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v15, :cond_2a6

    const-string v15, "+mppe"

    goto :goto_2a9

    :cond_2a6
    const-string/jumbo v15, "nomppe"

    :goto_2a9
    const/16 v16, 0x13

    aput-object v15, v14, v16

    move-object v13, v14

    .line 1784
    nop

    .line 1796
    :goto_2af
    new-instance v14, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v14}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1797
    .local v14, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1798
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v15, v14, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1799
    iput-object v7, v14, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1800
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v15, v14, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1802
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1803
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2dc

    .line 1804
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1806
    :cond_2dc
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f2

    .line 1807
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1809
    :cond_2f2
    invoke-direct {v0, v14, v12, v13}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1810
    return-void

    .line 1735
    .end local v12    # "racoon":[Ljava/lang/String;
    .end local v13    # "mtpd":[Ljava/lang/String;
    .end local v14    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_2f6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1709
    .end local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/lang/String;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v8    # "privateKey":Ljava/lang/String;
    .end local v9    # "userCert":Ljava/lang/String;
    .end local v10    # "caCert":Ljava/lang/String;
    .end local v11    # "serverCert":Ljava/lang/String;
    :cond_2fe
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_18f
        :pswitch_170
        :pswitch_146
        :pswitch_118
        :pswitch_f3
    .end packed-switch

    :pswitch_data_316
    .packed-switch 0x0
        :pswitch_22f
        :pswitch_1b6
        :pswitch_1b6
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 3

    monitor-enter p0

    .line 1826
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_15

    .line 1827
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1830
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 1833
    :try_start_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_17

    .line 1835
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 1825
    :catchall_17
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
.end method

.method public updateCapabilities()V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 305
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    :goto_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0, v2}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 308
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_24

    .line 309
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 311
    :cond_24
    return-void
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_30

    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 300
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 301
    return-void
.end method
