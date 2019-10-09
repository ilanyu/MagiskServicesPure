.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ShellCmd;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$ValidationLog;,
        Lcom/android/server/ConnectivityService$UnneededFor;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field private static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DEFAULT_TCP_RWND_KEY:Ljava/lang/String; = "net.tcp.default_init_rwnd"

.field public static final DIAG_ARG:Ljava/lang/String; = "--diag"

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_MOBILE_DATA_ALWAYS_ON:I = 0x1e

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_IFACE_CONFIG_LOST:I = 0x80

.field private static final EVENT_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x25

.field private static final EVENT_PRIVATE_DNS_VALIDATION_UPDATE:I = 0x26

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_REVALIDATE_NETWORK:I = 0x24

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SET_AVOID_UNVALIDATED:I = 0x23

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final EVENT_UPDATE_TCP_BUFFER_FOR_5G:I = 0xa0

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_INFO_LOGS:I = 0x28

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xfbff

.field private static final MAX_VALIDATION_LOGS:I = 0xa

.field private static final MAX_WAKELOCK_LOGS:I = 0x14

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field public static final SHORT_ARG:Ljava/lang/String; = "--short"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field public static final TETHERING_ARG:Ljava/lang/String; = "tethering"

.field private static final VDBG:Z = false

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final mBlockedAppUids:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBlockedAppUids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDnsManager:Lcom/android/server/connectivity/DnsManager;

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLastWakeLockAcquireTimestamp:J

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field protected mLingerDelayMs:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

.field private mLockdownEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation
.end field

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation
.end field

.field private mMaxWakelockDurationMs:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation
.end field

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field protected final mNetdEventCallback:Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForRequestId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

.field private mNetworkPreference:I

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field private final mReleasePendingIntentDelayMs:I

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTotalWakelockAcquisitions:I

.field private mTotalWakelockDurationMs:J

.field private mTotalWakelockReleases:I

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private final mUidToNetworkRequestCount:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidToNetworkRequestCount"
    .end annotation
.end field

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mValidationLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/ConnectivityService$ValidationLog;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakelockLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 202
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/net/NetworkAgent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .line 751
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V

    .line 752
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 757
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 258
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 454
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 455
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 456
    iput-boolean v3, v1, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 459
    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 461
    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 484
    const/16 v4, 0x64

    iput v4, v1, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 487
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 491
    new-instance v5, Landroid/util/LocalLog;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 495
    new-instance v5, Landroid/util/LocalLog;

    const/16 v7, 0x28

    invoke-direct {v5, v7}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    .line 498
    new-instance v5, Landroid/util/LocalLog;

    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    .line 499
    iput v3, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 500
    iput v3, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 501
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 502
    iput-wide v5, v1, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 503
    iput-wide v5, v1, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 518
    new-instance v5, Ljava/util/ArrayDeque;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    .line 725
    new-instance v5, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 731
    new-instance v5, Lcom/android/server/ConnectivityService$1;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1495
    new-instance v5, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1608
    new-instance v5, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 1643
    new-instance v5, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 4050
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 4229
    new-instance v5, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4250
    new-instance v5, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 4260
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 4262
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 4267
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 4665
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    .line 4670
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 4676
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 4682
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 4685
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    .line 758
    const-string v5, "ConnectivityService starting up"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 762
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 763
    sget-object v6, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v7, -0x1

    invoke-direct {v1, v7, v6}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 764
    new-instance v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-direct {v6, v1, v0, v7, v8}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 765
    .local v6, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REGISTER "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 768
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v3, v0}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 771
    new-instance v0, Landroid/os/HandlerThread;

    const-string v7, "ConnectivityServiceThread"

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 772
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 773
    new-instance v0, Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 774
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 777
    invoke-static/range {p1 .. p1}, Landroid/provider/MiuiSettings$System;->setNetHostName(Landroid/content/Context;)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "connectivity_release_pending_intent_delay_ms"

    const/16 v8, 0x1388

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 781
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v7, "persist.netmon.linger"

    const/16 v8, 0x7530

    invoke-virtual {v0, v7, v8}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    .line 783
    const-string/jumbo v0, "missing Context"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 784
    const-string/jumbo v0, "missing INetworkManagementService"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 785
    const-string/jumbo v0, "missing INetworkStatsService"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 786
    const-string/jumbo v0, "missing INetworkPolicyManager"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 787
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 788
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    const-string/jumbo v10, "missing NetworkPolicyManagerInternal"

    .line 787
    invoke-static {v0, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 791
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 792
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 795
    :try_start_1af
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    iget-object v10, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v0, v10}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1b6
    .catch Landroid/os/RemoteException; {:try_start_1af .. :try_end_1b6} :catch_1b7

    .line 799
    goto :goto_1cd

    .line 796
    :catch_1b7
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to register INetworkPolicyListener"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1cd
    const-string/jumbo v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/PowerManager;

    .line 803
    .local v10, "powerManager":Landroid/os/PowerManager;
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 804
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x10e0071

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 806
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 808
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/net/NetworkConfig;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 811
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v11, "ro.radio.noril"

    invoke-virtual {v0, v11, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 812
    .local v11, "wifiOnly":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wifiOnly="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x107006a

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 815
    .local v12, "naStrings":[Ljava/lang/String;
    array-length v13, v12

    move v14, v3

    :goto_227
    const/16 v0, 0x11

    if-ge v14, v13, :cond_2a8

    aget-object v15, v12, v14

    .line 817
    .local v15, "naString":Ljava/lang/String;
    :try_start_22d
    new-instance v3, Landroid/net/NetworkConfig;

    invoke-direct {v3, v15}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 819
    .local v3, "n":Landroid/net/NetworkConfig;
    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    if-le v4, v0, :cond_24d

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 822
    goto :goto_2a3

    .line 824
    :cond_24d
    if-eqz v11, :cond_26f

    iget v0, v3, Landroid/net/NetworkConfig;->type:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 827
    goto :goto_2a3

    .line 829
    :cond_26f
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_28e

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 832
    goto :goto_2a3

    .line 834
    :cond_28e
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v0, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 836
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v4, v3, Landroid/net/NetworkConfig;->type:I

    aput-object v3, v0, v4

    .line 837
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_2a1} :catch_2a2

    .line 840
    .end local v3    # "n":Landroid/net/NetworkConfig;
    goto :goto_2a3

    .line 838
    :catch_2a2
    move-exception v0

    .line 815
    .end local v15    # "naString":Ljava/lang/String;
    :goto_2a3
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_227

    .line 844
    :cond_2a8
    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v0

    if-nez v3, :cond_2b9

    .line 847
    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 848
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 853
    :cond_2b9
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x9

    aget-object v0, v0, v3

    if-nez v0, :cond_2d5

    const-string v0, "ethernet"

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 854
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 855
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    goto :goto_2d6

    .line 860
    :cond_2d5
    const/4 v4, 0x1

    :goto_2d6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 863
    .local v3, "protectedNetworks":[I
    array-length v0, v3

    const/4 v13, 0x0

    :goto_2ea
    if-ge v13, v0, :cond_322

    aget v14, v3, v13

    .line 864
    .local v14, "p":I
    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v14

    if-eqz v15, :cond_30a

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30a

    .line 865
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31e

    .line 867
    :cond_30a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring protectedNetwork "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 863
    .end local v14    # "p":I
    :goto_31e
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_2ea

    .line 871
    :cond_322
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string v4, "cm.test.mode"

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v4, "ro.build.type"

    .line 872
    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "eng"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    const/4 v0, 0x1

    goto :goto_347

    :cond_346
    const/4 v0, 0x0

    :goto_347
    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 874
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 876
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v0, v4, v13}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 879
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 880
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 887
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.USER_PRESENT"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 891
    :try_start_3a2
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v0, v13}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 892
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v13}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3b0
    .catch Landroid/os/RemoteException; {:try_start_3a2 .. :try_end_3b0} :catch_3b1

    .line 895
    goto :goto_3c6

    .line 893
    :catch_3b1
    move-exception v0

    .line 894
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error registering observer :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 897
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c6
    new-instance v0, Lcom/android/server/ConnectivityService$SettingsObserver;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v13, v14}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 900
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 901
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 903
    new-instance v0, Lcom/android/server/connectivity/PacManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 905
    const-string/jumbo v0, "user"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 907
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 908
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    .line 909
    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-direct {v0, v13, v14, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 911
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "network_switch_notification_daily_limit"

    const/4 v13, 0x3

    invoke-static {v0, v2, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 914
    .local v0, "dailyLimit":I
    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v13, "network_switch_notification_rate_limit_millis"

    const-wide/32 v14, 0xea60

    invoke-static {v2, v13, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v20

    .line 917
    .local v20, "rateLimit":J
    new-instance v2, Lcom/android/server/connectivity/LingerMonitor;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    move-object v14, v2

    move-object/from16 v16, v13

    move/from16 v17, v0

    move-wide/from16 v18, v20

    invoke-direct/range {v14 .. v19}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    iput-object v2, v1, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    .line 919
    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v14, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;

    invoke-direct {v14, v1}, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/server/ConnectivityService;->createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 921
    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 923
    new-instance v2, Lcom/android/server/connectivity/MultipathPolicyTracker;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v2, v13, v14}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 925
    new-instance v2, Lcom/android/server/connectivity/DnsManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v2, v13, v14, v15}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object v2, v1, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerPrivateDnsSettingsCallbacks()V

    .line 927
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 200
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 200
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x3"    # Landroid/net/NetworkCapabilities;

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "x3"    # I

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2100(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 200
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # I

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handlePrivateDnsSettingsChanged()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleUpdateTCPBuffersfor5G()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;IZJ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # J

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 200
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 200
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .registers 9
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    .line 1582
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1583
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_13

    .line 1584
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_2e

    .line 1586
    :cond_13
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1589
    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_2e

    .line 1593
    :cond_26
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p2, v2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1596
    .end local v1    # "iface":Ljava/lang/String;
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding legacy route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for UID/PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1599
    :try_start_56
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5e

    .line 1604
    nop

    .line 1605
    const/4 v1, 0x1

    return v1

    .line 1600
    :catch_5e
    move-exception v1

    .line 1602
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to add a route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1603
    const/4 v2, 0x0

    return v2
.end method

.method private addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V
    .registers 7
    .param p1, "log"    # Landroid/util/LocalLog$ReadOnlyLocalLog;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "name"    # Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 523
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_13

    .line 524
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_3

    .line 526
    :cond_13
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/android/server/ConnectivityService$ValidationLog;

    invoke-direct {v2, p2, p3, p1}, Lcom/android/server/ConnectivityService$ValidationLog;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 527
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 10
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I
    .param p4, "arg1"    # I

    .line 5171
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_5

    .line 5172
    return-void

    .line 5174
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5176
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/net/NetworkRequest;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 5177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5178
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x80005

    if-eq p3, v2, :cond_22

    .line 5179
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 5181
    :cond_22
    packed-switch p3, :pswitch_data_7a

    :pswitch_25
    goto :goto_57

    .line 5199
    :pswitch_26
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    goto :goto_57

    .line 5193
    :pswitch_31
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 5195
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 5196
    goto :goto_57

    .line 5188
    .end local v2    # "nc":Landroid/net/NetworkCapabilities;
    :pswitch_3f
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 5189
    goto :goto_57

    .line 5183
    :pswitch_42
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 5184
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 5185
    nop

    .line 5203
    :goto_57
    iput p3, v1, Landroid/os/Message;->what:I

    .line 5204
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5210
    :try_start_5c
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_62

    .line 5214
    goto :goto_79

    .line 5211
    :catch_62
    move-exception v2

    .line 5213
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5215
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_79
    return-void

    :pswitch_data_7a
    .packed-switch 0x80002
        :pswitch_42
        :pswitch_3f
        :pswitch_25
        :pswitch_25
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method private canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 4
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 3460
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3461
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3462
    :cond_1e
    const/4 p1, 0x0

    .line 3464
    :cond_1f
    return-object p1
.end method

.method private checkSettingsPermission()Z
    .registers 3

    .line 1697
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkSettingsPermission(II)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1702
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private clearNetworkForRequest(I)V
    .registers 4
    .param p1, "requestId"    # I

    .line 4702
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4703
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4704
    monitor-exit v0

    .line 4705
    return-void

    .line 4704
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .registers 7
    .param p1, "transportType"    # I
    .param p2, "type"    # Landroid/net/NetworkRequest$Type;

    .line 953
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 954
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 955
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 956
    const/4 v1, -0x1

    if-le p1, v1, :cond_15

    .line 957
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 959
    :cond_15
    new-instance v2, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    invoke-direct {v2, v0, v1, v3, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v2
.end method

.method private static createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p0, "uid"    # I

    .line 943
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 944
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 945
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 946
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 947
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 948
    return-object v0
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .registers 7
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;

    .line 3831
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 3832
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3833
    return-object v1

    .line 3835
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 3838
    .local v2, "underlyingNetworks":[Landroid/net/Network;
    if-nez v2, :cond_25

    .line 3839
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 3840
    .local v3, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_24

    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v4, :cond_24

    .line 3841
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    .line 3843
    .end local v3    # "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_24
    goto :goto_37

    :cond_25
    array-length v3, v2

    if-lez v3, :cond_37

    .line 3844
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 3845
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v3, :cond_37

    .line 3846
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    .line 3849
    .end local v3    # "linkProperties":Landroid/net/LinkProperties;
    :cond_37
    :goto_37
    iget-object v3, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    if-nez v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v1, v0

    :goto_3d
    return-object v1
.end method

.method private disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got DISCONNECTED, was satisfying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2504
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 2505
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 2509
    .local v0, "wasDefault":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 2510
    iput v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2516
    .local v3, "now":J
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2518
    .end local v3    # "now":J
    :cond_47
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 2523
    const v3, 0x80004

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2524
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    const/16 v4, -0x14

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2526
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2528
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 2529
    .end local v4    # "iface":Ljava/lang/String;
    goto :goto_61

    .line 2530
    :cond_73
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v4, 0x82007

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2531
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->maybeStopClat()V

    .line 2533
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2536
    :try_start_88
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 2537
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_133

    .line 2539
    move v3, v2

    .local v3, "i":I
    :goto_93
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v3, v4, :cond_ba

    .line 2540
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 2541
    .local v4, "request":Landroid/net/NetworkRequest;
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 2542
    .local v5, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_b7

    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    if-ne v6, v7, :cond_b7

    .line 2543
    iget v6, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 2544
    invoke-direct {p0, v4, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2539
    .end local v4    # "request":Landroid/net/NetworkRequest;
    .end local v5    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 2547
    .end local v3    # "i":I
    :cond_ba
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 2548
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 2549
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2550
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2551
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->ensureNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 2553
    :cond_d4
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2554
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_e5

    .line 2555
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 2557
    :cond_e5
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2558
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2560
    invoke-static {}, Lcom/android/server/WifiAssistant;->get()Lcom/android/server/WifiAssistant;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Lcom/android/server/WifiAssistant;->maybeClearNotification(I)V

    .line 2561
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_122

    .line 2571
    :try_start_fc
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_105} :catch_106

    .line 2574
    goto :goto_11b

    .line 2572
    :catch_106
    move-exception v1

    .line 2573
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception removing network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2575
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_11b
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/DnsManager;->removeNetwork(Landroid/net/Network;)V

    .line 2577
    :cond_122
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2578
    :try_start_125
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2579
    monitor-exit v1

    .line 2580
    return-void

    .line 2579
    :catchall_130
    move-exception v2

    monitor-exit v1
    :try_end_132
    .catchall {:try_start_125 .. :try_end_132} :catchall_130

    throw v2

    .line 2537
    :catchall_133
    move-exception v1

    :try_start_134
    monitor-exit v3
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2044
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2045
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2046
    :cond_12
    if-eqz p4, :cond_15

    return-void

    .line 2048
    :cond_15
    const-string v1, "--diag"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2049
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2050
    return-void

    .line 2051
    :cond_21
    const-string/jumbo v1, "tethering"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2052
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2053
    return-void

    .line 2056
    :cond_30
    const-string v1, "NetworkFactories for:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2058
    .local v2, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    .end local v2    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_3f

    .line 2060
    :cond_62
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2061
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2063
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2064
    .local v1, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string v2, "Active default network: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    if-nez v1, :cond_7a

    .line 2066
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_81

    .line 2068
    :cond_7a
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2070
    :goto_81
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2072
    const-string v2, "Current Networks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2074
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2075
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2077
    const-string v4, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 2079
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2080
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    .line 2081
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x3

    .line 2082
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    .line 2077
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2084
    nop

    .line 2084
    .local v7, "i":I
    :goto_ed
    move v4, v7

    .line 2084
    .end local v7    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    if-ge v4, v5, :cond_102

    .line 2085
    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    add-int/lit8 v7, v4, 0x1

    .line 2084
    .end local v4    # "i":I
    .restart local v7    # "i":I
    goto :goto_ed

    .line 2087
    .end local v7    # "i":I
    :cond_102
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2088
    const-string v4, "Lingered:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2090
    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    .line 2091
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2092
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2093
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto/16 :goto_96

    .line 2094
    :cond_118
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2095
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2097
    const-string v2, "Network Requests:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2099
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_130
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2100
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    goto :goto_130

    .line 2102
    :cond_144
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2103
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2105
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2107
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2108
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2110
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2111
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2113
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2114
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2116
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2117
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2119
    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28e

    .line 2120
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2121
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 2122
    :try_start_17b
    const-string/jumbo v3, "mValidationLogs (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2123
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_187
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$ValidationLog;

    .line 2124
    .local v4, "p":Lcom/android/server/ConnectivityService$ValidationLog;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/ConnectivityService$ValidationLog;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2126
    iget-object v5, v4, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    invoke-virtual {v5, p1, v0, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2128
    .end local v4    # "p":Lcom/android/server/ConnectivityService$ValidationLog;
    goto :goto_187

    .line 2129
    :cond_1ba
    monitor-exit v2
    :try_end_1bb
    .catchall {:try_start_17b .. :try_end_1bb} :catchall_28b

    .line 2131
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2132
    const-string/jumbo v2, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2134
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2137
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2138
    const-string/jumbo v2, "mNetworkInfoBlockingLogs (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2140
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2143
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2144
    const-string v2, "NetTransition WakeLock activity (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total acquisitions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total releases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cumulative duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "longest duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    iget v2, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    iget v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    if-le v2, v3, :cond_282

    .line 2151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v2, v7

    .line 2152
    .local v2, "duration":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currently holding WakeLock for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    .end local v2    # "duration":J
    :cond_282
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_28e

    .line 2129
    :catchall_28b
    move-exception v3

    :try_start_28c
    monitor-exit v2
    :try_end_28d
    .catchall {:try_start_28c .. :try_end_28d} :catchall_28b

    throw v3

    .line 2158
    :cond_28e
    :goto_28e
    invoke-static {}, Lcom/android/server/WifiAssistant;->get()Lcom/android/server/WifiAssistant;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/WifiAssistant;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 2159
    return-void
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2953
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    .line 2954
    .local v0, "configRestrict":Z
    if-nez v0, :cond_e

    .line 2955
    const-string v1, "Bad Wi-Fi avoidance: unrestricted"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    return-void

    .line 2959
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Wi-Fi avoidance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config restrict:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v1

    .line 2966
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2967
    const-string v2, "get stuck"

    .line 2967
    .local v2, "description":Ljava/lang/String;
    :goto_4d
    goto :goto_70

    .line 2968
    .end local v2    # "description":Ljava/lang/String;
    :cond_4e
    if-nez v1, :cond_54

    .line 2969
    const-string/jumbo v2, "prompt"

    goto :goto_4d

    .line 2970
    :cond_54
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2971
    const-string v2, "avoid"

    goto :goto_4d

    .line 2973
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2975
    .restart local v2    # "description":Ljava/lang/String;
    :goto_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User setting:      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    const-string v3, "Network overrides:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2978
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2979
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v5, :cond_ad

    .line 2980
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_ad
    goto :goto_96

    .line 2983
    :cond_ae
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2984
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2985
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    .local v0, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-wide/16 v1, 0x1388

    .line 2023
    .local v1, "DIAG_TIME_MS":J
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2025
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v5, Lcom/android/server/connectivity/NetworkDiagnostics;

    iget-object v6, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-wide/16 v8, 0x1388

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_11

    .line 2031
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 2032
    .local v4, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2033
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 2034
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2035
    .end local v4    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    goto :goto_35

    .line 2036
    :cond_4b
    return-void
.end method

.method private static encodeBool(Z)I
    .registers 1
    .param p0, "b"    # Z

    .line 6050
    return p0
.end method

.method private enforceAccessPermission()V
    .registers 4

    .line 1681
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    return-void
.end method

.method private enforceChangePermission()V
    .registers 2

    .line 1687
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 1688
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .line 1713
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .registers 4

    .line 1720
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1723
    return-void

    .line 1724
    :catch_a
    move-exception v0

    .line 1725
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1726
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1665
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1667
    return-void

    .line 1669
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    return-void
.end method

.method private enforceInternetPermission()V
    .registers 4

    .line 1675
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method private enforceKeepalivePermission()V
    .registers 4

    .line 1729
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 4501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4502
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4504
    return-void

    .line 4506
    :cond_b
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4508
    return-void

    .line 4510
    :cond_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4512
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4514
    :cond_1f
    return-void
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 4472
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4473
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    goto :goto_f

    .line 4475
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 4477
    :goto_f
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 1691
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .line 1707
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 4283
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_7

    .line 4287
    return-void

    .line 4284
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All NetworkRequests in ConnectivityService must have a type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 6
    .param p1, "forWhom"    # Ljava/lang/String;

    .line 3330
    monitor-enter p0

    .line 3331
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3332
    monitor-exit p0

    return-void

    .line 3334
    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 3336
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 3337
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_44

    .line 3338
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACQUIRE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3340
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3341
    return-void

    .line 3337
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 4361
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object v0

    .line 4362
    .local v0, "badCapability":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 4365
    return-void

    .line 4363
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request network with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .line 4371
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 4372
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to request a specific SSID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4374
    :cond_15
    :goto_15
    return-void
.end method

.method private ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 4412
    if-nez p1, :cond_3

    .line 4413
    return-void

    .line 4415
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 4416
    .local v0, "ns":Landroid/net/NetworkSpecifier;
    if-nez v0, :cond_a

    .line 4417
    return-void

    .line 4419
    :cond_a
    invoke-static {v0}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 4420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->assertValidFromUid(I)V

    .line 4421
    return-void
.end method

.method private static eventName(I)Ljava/lang/String;
    .registers 3
    .param p0, "what"    # I

    .line 432
    sget-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .registers 7
    .param p1, "state"    # Landroid/net/NetworkState;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1161
    if-eqz p1, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 1163
    :cond_b
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1164
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1167
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_29

    .line 1168
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1170
    :cond_29
    monitor-exit v0

    .line 1171
    return-void

    .line 1170
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v1

    .line 1161
    :cond_2e
    :goto_2e
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2586
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2587
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2588
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2589
    .local v3, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_35

    .line 2590
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2591
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v1

    .line 2593
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v3    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_35
    goto :goto_e

    .line 2594
    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1203
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1204
    .local v0, "user":I
    const/4 v1, 0x0

    .line 1205
    .local v1, "vpnNetId":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1206
    :try_start_8
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 1209
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_1d

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v4

    move v1, v4

    .line 1210
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_4c

    .line 1212
    if-eqz v1, :cond_36

    .line 1213
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1214
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_36

    .line 1215
    nop

    .line 1216
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1217
    .local v3, "requiredCaps":Landroid/net/NetworkCapabilities;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1218
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v4

    .line 1222
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "requiredCaps":Landroid/net/NetworkCapabilities;
    :cond_36
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1223
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_45

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1224
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1225
    const/4 v2, 0x0

    .line 1227
    :cond_45
    if-eqz v2, :cond_4a

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    return-object v3

    .line 1210
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 4714
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNetworks()[Landroid/net/Network;
    .registers 6

    .line 5865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5866
    .local v0, "defaultNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Network;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 5867
    .local v1, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5868
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v4, :cond_30

    if-eq v3, v1, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5869
    :cond_2b
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5871
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_30
    goto :goto_13

    .line 5872
    :cond_31
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/net/Network;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    return-object v2
.end method

.method private getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 4

    .line 3432
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3434
    .local v1, "ret":Landroid/net/ProxyInfo;
    if-nez v1, :cond_e

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    move-object v1, v2

    .line 3435
    :cond_e
    monitor-exit v0

    return-object v1

    .line 3436
    .end local v1    # "ret":Landroid/net/ProxyInfo;
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getFilteredNetworkState(IIZ)Landroid/net/NetworkState;
    .registers 16
    .param p1, "networkType"    # I
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1038
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1039
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1041
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1a

    .line 1042
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v1

    .line 1043
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1}, Landroid/net/NetworkInfo;->setType(I)V

    goto :goto_50

    .line 1045
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_1a
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    .line 1046
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1047
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1049
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1050
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    const/16 v4, 0x12

    .line 1051
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    .line 1050
    xor-int/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 1052
    new-instance v2, Landroid/net/NetworkState;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    move-object v6, v1

    move-object v8, v3

    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    move-object v1, v2

    .line 1055
    .local v1, "state":Landroid/net/NetworkState;
    :goto_50
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1056
    return-object v1

    .line 1058
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_54
    sget-object v0, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v0
.end method

.method private getIntSpecifier(Landroid/net/NetworkSpecifier;)I
    .registers 5
    .param p1, "networkSpecifierObj"    # Landroid/net/NetworkSpecifier;

    .line 6139
    const/4 v0, 0x0

    .line 6140
    .local v0, "specifierStr":Ljava/lang/String;
    const/4 v1, -0x1

    .line 6141
    .local v1, "specifier":I
    if-eqz p1, :cond_d

    instance-of v2, p1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_d

    .line 6143
    move-object v2, p1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 6145
    :cond_d
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 6147
    :try_start_15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1b

    move v1, v2

    .line 6150
    goto :goto_1d

    .line 6148
    :catch_1b
    move-exception v2

    .line 6149
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .line 6152
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    :goto_1d
    return v1
.end method

.method private getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1405
    if-nez p1, :cond_4

    .line 1406
    const/4 v0, 0x0

    return-object v0

    .line 1408
    :cond_4
    monitor-enter p1

    .line 1409
    :try_start_5
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit p1

    return-object v0

    .line 1410
    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4
    .param p1, "netId"    # I

    .line 1070
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1071
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 1072
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 1063
    if-nez p1, :cond_4

    .line 1064
    const/4 v0, 0x0

    return-object v0

    .line 1066
    :cond_4
    iget v0, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1414
    if-eqz p1, :cond_1c

    .line 1415
    monitor-enter p1

    .line 1416
    :try_start_3
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_17

    .line 1417
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1419
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1417
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1421
    :cond_17
    monitor-exit p1

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 1423
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4
    .param p1, "requestId"    # I

    .line 4696
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4697
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 4698
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 4940
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4941
    const-string v0, "SYSTEM"

    return-object v0

    .line 4943
    :cond_b
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4944
    const-string v0, "NETWORK"

    return-object v0

    .line 4946
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 9
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I
    .param p3, "requestedOperation"    # Ljava/lang/String;

    .line 2700
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2702
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_2d

    .line 2703
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_2d

    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v1, p2, :cond_2d

    .line 2704
    const-string v1, "UID %d attempted to %s for unowned request %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2705
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 2704
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2706
    const/4 v1, 0x0

    return-object v1

    .line 2710
    :cond_2d
    return-object v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .registers 10

    .line 4062
    const/4 v0, 0x0

    .line 4063
    .local v0, "fileReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 4064
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4067
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 4068
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v1, v4

    .line 4069
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4070
    const-string/jumbo v4, "provisioningUrls"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4073
    :goto_23
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4075
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_2a} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_2a} :catch_ab
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_8e
    .catchall {:try_start_d .. :try_end_2a} :catchall_8c

    .line 4076
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_34

    .line 4095
    .end local v4    # "element":Ljava/lang/String;
    nop

    .line 4103
    nop

    .line 4105
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 4106
    goto :goto_33

    :catch_32
    move-exception v4

    .line 4095
    :goto_33
    return-object v3

    .line 4078
    .restart local v4    # "element":Ljava/lang/String;
    :cond_34
    :try_start_34
    const-string/jumbo v5, "provisioningUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 4079
    const-string/jumbo v5, "mcc"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_44} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_44} :catch_ab
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_44} :catch_8e
    .catchall {:try_start_34 .. :try_end_44} :catchall_8c

    .line 4081
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_8a

    :try_start_46
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    if-ne v6, v7, :cond_8a

    .line 4082
    const-string/jumbo v6, "mnc"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4083
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_8a

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v2, Landroid/content/res/Configuration;->mnc:I

    if-ne v7, v8, :cond_8a

    .line 4084
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4085
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8a

    .line 4086
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_6d} :catch_74
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_6d} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_6d} :catch_ab
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_6d} :catch_8e
    .catchall {:try_start_46 .. :try_end_6d} :catchall_8c

    .line 4103
    nop

    .line 4105
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    .line 4106
    goto :goto_73

    :catch_72
    move-exception v3

    .line 4086
    :goto_73
    return-object v7

    .line 4090
    .end local v6    # "mnc":Ljava/lang/String;
    :catch_74
    move-exception v6

    .line 4091
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_89} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_89} :catch_ab
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_89} :catch_8e
    .catchall {:try_start_75 .. :try_end_89} :catchall_8c

    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_8b

    .line 4092
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v5    # "mcc":Ljava/lang/String;
    :cond_8a
    nop

    .line 4094
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_8b
    :goto_8b
    goto :goto_23

    .line 4103
    :catchall_8c
    move-exception v3

    goto :goto_cd

    .line 4100
    :catch_8e
    move-exception v4

    .line 4101
    .local v4, "e":Ljava/io/IOException;
    :try_start_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8f .. :try_end_a3} :catchall_8c

    .line 4103
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_cc

    .line 4105
    :goto_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 4106
    goto :goto_cc

    :catch_a9
    move-exception v4

    goto :goto_cc

    .line 4098
    :catch_ab
    move-exception v4

    .line 4099
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4103
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v0, :cond_cc

    goto :goto_a5

    .line 4096
    :catch_c3
    move-exception v4

    .line 4097
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "Carrier Provisioning Urls file not found"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_ac .. :try_end_c9} :catchall_8c

    .line 4103
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_cc

    goto :goto_a5

    .line 4109
    :cond_cc
    :goto_cc
    return-object v3

    .line 4103
    :goto_cd
    if-eqz v0, :cond_d4

    .line 4105
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 4106
    goto :goto_d4

    :catch_d3
    move-exception v4

    :cond_d4
    :goto_d4
    throw v3
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4377
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4378
    .local v0, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    .line 4379
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4380
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4381
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4382
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 4384
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_3d
    goto :goto_10

    .line 4385
    :cond_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_45

    .line 4386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 4385
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .registers 5
    .param p1, "uid"    # I

    .line 1089
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1091
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    .line 1092
    .local v1, "networks":[Landroid/net/Network;
    if-eqz v1, :cond_16

    .line 1098
    array-length v2, v1

    if-lez v2, :cond_15

    .line 1099
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    goto :goto_16

    .line 1101
    :cond_15
    const/4 v0, 0x0

    .line 1105
    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 1106
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v2

    return-object v2

    .line 1108
    :cond_1d
    sget-object v2, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v2
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .registers 6
    .param p1, "uid"    # I

    .line 1076
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1077
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v1, :cond_21

    .line 1078
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1079
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 1080
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1081
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1084
    .end local v1    # "user":I
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_21
    monitor-exit v0

    .line 1085
    const/4 v0, 0x0

    return-object v0

    .line 1084
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 3568
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3569
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3570
    const/4 p1, 0x0

    .line 3572
    :cond_19
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3573
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    monitor-exit v0

    return-void

    .line 3574
    :cond_2a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-ne v1, p1, :cond_30

    monitor-exit v0

    return-void

    .line 3575
    :cond_30
    if-eqz p1, :cond_52

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_52

    .line 3576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3577
    monitor-exit v0

    return-void

    .line 3585
    :cond_52
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_7d

    if-eqz p1, :cond_7d

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3586
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 3587
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3588
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3589
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3590
    monitor-exit v0

    return-void

    .line 3592
    :cond_7d
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3594
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_85

    monitor-exit v0

    return-void

    .line 3595
    :cond_85
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v1, :cond_8c

    .line 3596
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3598
    :cond_8c
    monitor-exit v0

    .line 3599
    return-void

    .line 3598
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_1c .. :try_end_90} :catchall_8e

    throw v1
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2483
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2484
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_10

    .line 2485
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_33

    .line 2487
    :cond_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2488
    .local v1, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v1, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterNetworkFactory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2490
    .end local v1    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_33
    :goto_33
    return-void
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 2442
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 2443
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2444
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4b

    .line 2447
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2448
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-eqz v3, :cond_31

    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    goto :goto_1c

    .line 2449
    .restart local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_31
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 2450
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const v4, 0x83000

    .line 2451
    const/4 v5, 0x0

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    goto :goto_45

    :cond_44
    move v6, v5

    :goto_45
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2450
    invoke-virtual {v0, v4, v6, v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2452
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_1c

    .line 2454
    :cond_4b
    const-string v1, "Error connecting NetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2455
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ad

    .line 2457
    :cond_58
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2458
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_79

    .line 2461
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11001

    .line 2462
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_ad

    .line 2464
    :cond_79
    const-string v1, "Error connecting NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2465
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2466
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_ad

    .line 2467
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    .line 2468
    .local v2, "wasDefault":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2469
    :try_start_91
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 2470
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2471
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_91 .. :try_end_a4} :catchall_aa

    .line 2473
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "wasDefault":Z
    goto :goto_ad

    .line 2471
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v2    # "wasDefault":Z
    :catchall_aa
    move-exception v4

    :try_start_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v4

    .line 2477
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "wasDefault":Z
    :cond_ad
    :goto_ad
    return-void
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .registers 8

    .line 3616
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3618
    .local v0, "proxy":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3619
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3620
    .local v1, "data":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1c

    .line 3621
    return-void

    .line 3624
    :cond_1c
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 3625
    .local v3, "proxyHost":Ljava/lang/String;
    const/16 v4, 0x1f90

    .line 3626
    .local v4, "proxyPort":I
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_2f

    .line 3628
    :try_start_25
    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2b} :catch_2d

    move v4, v5

    .line 3631
    goto :goto_2f

    .line 3629
    :catch_2d
    move-exception v2

    .line 3630
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-void

    .line 3633
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    :goto_2f
    new-instance v5, Landroid/net/ProxyInfo;

    aget-object v2, v1, v2

    const-string v6, ""

    invoke-direct {v5, v2, v4, v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v5

    .line 3634
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 3636
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v3    # "proxyHost":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    :cond_3c
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5235
    if-nez p1, :cond_8

    .line 5236
    const-string v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5237
    return-void

    .line 5239
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5243
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 5245
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 5247
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_38

    .line 5250
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 5253
    :goto_38
    return-void
.end method

.method private handleMobileDataAlwaysOn()V
    .registers 7

    .line 983
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 984
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data_always_on"

    .line 983
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    .line 986
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    nop

    :cond_1e
    move v1, v2

    .line 987
    .local v1, "isEnabled":Z
    if-ne v0, v1, :cond_22

    .line 988
    return-void

    .line 991
    :cond_22
    if-eqz v0, :cond_35

    .line 992
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_3c

    .line 995
    :cond_35
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 997
    :goto_3c
    return-void
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3029
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3030
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkUnvalidated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3032
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 3033
    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->shouldNotifyWifiUnvalidated()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3034
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3036
    :cond_36
    return-void
.end method

.method private handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "cfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 2395
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->networkRequiresValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2400
    :cond_7
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/NetworkMonitor;->notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    .line 2405
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    .line 2406
    return-void
.end method

.method private handlePrivateDnsSettingsChanged()V
    .registers 6

    .line 2382
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    move-result-object v0

    .line 2384
    .local v0, "cfg":Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2385
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    .line 2386
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->networkRequiresValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2387
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2389
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2f
    goto :goto_10

    .line 2390
    :cond_30
    return-void
.end method

.method private handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 5
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 2414
    iget v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2415
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_9

    .line 2416
    return-void

    .line 2418
    :cond_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 2419
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2420
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 3014
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3019
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-nez v1, :cond_2b

    .line 3021
    invoke-static {}, Lcom/android/server/WifiAssistant;->get()Lcom/android/server/WifiAssistant;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/WifiAssistant;->handleNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v1, :cond_25

    goto :goto_2b

    .line 3025
    :cond_25
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3026
    return-void

    .line 3023
    :cond_2b
    :goto_2b
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4754
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4756
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4757
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_2d

    .line 4758
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 4759
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4760
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4761
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 4762
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 4763
    return-void

    .line 4757
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 6
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 4638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4639
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4640
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 4641
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2610
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2612
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2613
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2614
    .local v1, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2615
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2616
    const-string v2, "REGISTER"

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 2618
    .end local v1    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_54
    goto :goto_2f

    .line 2620
    :cond_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2621
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_71

    .line 2622
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2624
    :cond_71
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2598
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2600
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v1

    .line 2601
    .local v1, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v1, :cond_3a

    .line 2602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because their intents matched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2604
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2606
    :cond_3a
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2607
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .registers 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    .line 2728
    const-string/jumbo v0, "release NetworkRequest"

    .line 2729
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2730
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-nez v0, :cond_a

    .line 2731
    return-void

    .line 2733
    :cond_a
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (release request)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2736
    :cond_2e
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2737
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    .line 2628
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2629
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_b

    .line 2630
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2632
    :cond_b
    return-void
.end method

.method private handleReleaseNetworkTransitionWakelock(I)V
    .registers 10
    .param p1, "eventId"    # I

    .line 3361
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    .line 3362
    .local v0, "event":Ljava/lang/String;
    monitor-enter p0

    .line 3363
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    .line 3364
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string v4, "RELEASE: already released (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3365
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "expected Net Transition WakeLock to be held"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    monitor-exit p0

    return-void

    .line 3368
    :cond_27
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v4, v6

    .line 3370
    .local v4, "lockDuration":J
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 3371
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 3372
    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 3373
    .end local v4    # "lockDuration":J
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_56

    .line 3374
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string v4, "RELEASE (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3375
    return-void

    .line 3373
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 10
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2740
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 2741
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2744
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2745
    .local v1, "requests":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3a

    .line 2746
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: too small request count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 2748
    :cond_3a
    if-ne v1, v2, :cond_4a

    .line 2749
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 2750
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 2749
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_53

    .line 2752
    :cond_4a
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2754
    .end local v1    # "requests":I
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_1c0

    .line 2756
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2757
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 2758
    const/4 v0, 0x0

    .line 2759
    .local v0, "wasKept":Z
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2760
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_d2

    .line 2761
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v2

    .line 2762
    .local v2, "wasBackgroundNetwork":Z
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 2769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 2770
    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, v1, v4}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 2771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no live requests for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; disconnecting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2772
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_ba

    .line 2774
    :cond_b9
    const/4 v0, 0x1

    .line 2776
    :goto_ba
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 2777
    if-nez v2, :cond_d2

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2779
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v1, v5}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2789
    .end local v2    # "wasBackgroundNetwork":Z
    :cond_d2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2790
    .local v4, "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v5

    if-eqz v5, :cond_12a

    if-eq v4, v1, :cond_12a

    .line 2791
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " satisfied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", but mNetworkAgentInfos says "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    if-eqz v1, :cond_11d

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_120

    :cond_11d
    const-string/jumbo v7, "null"

    :goto_120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2791
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    .end local v4    # "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_12a
    goto :goto_dc

    .line 2802
    :cond_12b
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_166

    if-eqz v1, :cond_166

    .line 2803
    const/4 v2, 0x1

    .line 2804
    .local v2, "doRemove":Z
    if-eqz v0, :cond_15b

    .line 2807
    move v4, v2

    move v2, v3

    .line 2807
    .local v2, "i":I
    .local v4, "doRemove":Z
    :goto_139
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    if-ge v2, v5, :cond_15a

    .line 2808
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v5

    .line 2809
    .local v5, "otherRequest":Landroid/net/NetworkRequest;
    iget v6, v5, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v7, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v7, v7, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v6, v7, :cond_157

    .line 2810
    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v6

    if-eqz v6, :cond_157

    .line 2811
    const-string v6, " still have other legacy request - leaving"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2812
    const/4 v4, 0x0

    .line 2807
    .end local v5    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_157
    add-int/lit8 v2, v2, 0x1

    goto :goto_139

    .line 2817
    .end local v2    # "i":I
    :cond_15a
    move v2, v4

    .line 2817
    .end local v4    # "doRemove":Z
    .local v2, "doRemove":Z
    :cond_15b
    if-eqz v2, :cond_166

    .line 2818
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2822
    .end local v2    # "doRemove":Z
    :cond_166
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_170
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_187

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2823
    .local v3, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v5, 0x83001

    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2825
    .end local v3    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_170

    .line 2826
    .end local v0    # "wasKept":Z
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_187
    goto :goto_1bf

    .line 2829
    :cond_188
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_192
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2830
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 2831
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_1be

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2832
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 2833
    const-string v2, "RELEASE"

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 2835
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1be
    goto :goto_192

    .line 2837
    :cond_1bf
    :goto_1bf
    return-void

    .line 2754
    :catchall_1c0
    move-exception v1

    :try_start_1c1
    monitor-exit v0
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v1
.end method

.method private handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "hasConnectivity"    # Z

    .line 3398
    if-nez p1, :cond_7

    .line 3399
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3399
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_b

    .line 3401
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3403
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_b
    if-eqz v0, :cond_67

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_67

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 3404
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_22

    goto :goto_67

    .line 3408
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p3, v1, :cond_27

    .line 3409
    return-void

    .line 3412
    :cond_27
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 3413
    .local v1, "netid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNetworkConnectivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3417
    .end local v1    # "netid":I
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v1, :cond_55

    .line 3418
    return-void

    .line 3420
    :cond_55
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 3421
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 3422
    return-void

    .line 3424
    :cond_61
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/NetworkMonitor;->forceReevaluation(I)V

    .line 3425
    return-void

    .line 3405
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_67
    :goto_67
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAcceptUnvalidated network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " always="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2856
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2857
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_2b

    .line 2859
    return-void

    .line 2867
    :cond_2b
    if-eqz p2, :cond_34

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v1, :cond_34

    .line 2868
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 2872
    :cond_34
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_41

    .line 2873
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_41
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eq p2, v1, :cond_59

    .line 2877
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2878
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2880
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->keepScore:Z

    .line 2881
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2882
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2885
    .end local v1    # "oldScore":I
    :cond_59
    if-eqz p3, :cond_67

    .line 2886
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    .line 2887
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 2886
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2890
    :cond_67
    if-nez p2, :cond_74

    .line 2892
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2894
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2897
    :cond_74
    return-void
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 2900
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2901
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2c

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_b

    goto :goto_2c

    .line 2906
    :cond_b
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 2907
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2909
    :cond_16
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->keepScore:Z

    .line 2911
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-nez v1, :cond_2b

    .line 2912
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2913
    .local v1, "oldScore":I
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 2914
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2915
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2917
    .end local v1    # "oldScore":I
    :cond_2b
    return-void

    .line 2903
    :cond_2c
    :goto_2c
    return-void
.end method

.method private handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 5
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2714
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2715
    return-void

    .line 2717
    :cond_b
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2718
    return-void

    .line 2720
    :cond_16
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releasing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (timeout)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2723
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2724
    const/4 v0, 0x0

    const v1, 0x80005

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 2725
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 4650
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 4651
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_10

    .line 4652
    const-string v1, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4653
    return-void

    .line 4655
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4656
    return-void
.end method

.method private handleUpdateTCPBuffersfor5G()V
    .registers 5

    .line 6170
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 6171
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 6173
    .local v1, "ntwAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateTCPBuffersfor5G nai "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6174
    if-eqz v1, :cond_21

    .line 6175
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6176
    :cond_21
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 4556
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4557
    return v0

    .line 4559
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .line 4560
    .local v1, "transportTypes":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    aget v2, v1, v0

    if-eq v2, v3, :cond_11

    goto :goto_1e

    .line 4564
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    const-string v5, "ConnectivityService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1a} :catch_1c

    .line 4569
    nop

    .line 4570
    return v3

    .line 4567
    :catch_1c
    move-exception v2

    .line 4568
    .local v2, "e":Ljava/lang/SecurityException;
    return v0

    .line 4561
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_1e
    :goto_1e
    return v0
.end method

.method private isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 7
    .param p1, "currentNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "currentRequestNc"    # Landroid/net/NetworkCapabilities;
    .param p3, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "newRequestNc"    # Landroid/net/NetworkCapabilities;
    .param p5, "requestNc"    # Landroid/net/NetworkCapabilities;

    .line 6160
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6161
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6162
    invoke-direct {p0, p4, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6163
    invoke-direct {p0, p2, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 6164
    const/4 v0, 0x1

    return v0

    .line 6166
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4718
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .registers 4
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4722
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"    # I

    .line 2162
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2163
    :cond_6
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2164
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    return v1

    .line 2165
    :cond_16
    if-nez v0, :cond_19

    goto :goto_3c

    .line 2166
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2169
    :goto_3c
    return v1
.end method

.method private isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6111
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6112
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6113
    const/4 v0, 0x1

    return v0

    .line 6115
    :cond_11
    return v0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .registers 7
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1118
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 1119
    return v0

    .line 1123
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1124
    return v0

    .line 1126
    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1127
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 1128
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_25

    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1129
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1131
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_36

    .line 1132
    if-nez p1, :cond_2b

    const-string v0, ""

    goto :goto_2f

    :cond_2b
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "iface":Ljava/lang/String;
    :goto_2f
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1131
    .end local v0    # "iface":Ljava/lang/String;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private isSystem(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4497
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isTetheringSupported()Z
    .registers 10

    .line 3290
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "ro.tether.denied"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v0

    .line 3291
    .local v0, "defaultVal":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v2

    .line 3293
    .local v2, "tetherSupported":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_37

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_tethering"

    .line 3294
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    move v4, v1

    goto :goto_38

    :cond_37
    move v4, v3

    .line 3297
    .local v4, "tetherEnabledInSettings":Z
    :goto_38
    const/4 v5, 0x0

    .line 3298
    .local v5, "adminUser":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3300
    .local v6, "token":J
    :try_start_3d
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_57

    move v5, v8

    .line 3302
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3303
    nop

    .line 3305
    if-eqz v4, :cond_55

    if-eqz v5, :cond_55

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Tethering;->hasTetherableConfiguration()Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_56

    :cond_55
    move v1, v3

    :goto_56
    return v1

    .line 3302
    :catchall_57
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 920
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    return-void
.end method

.method public static synthetic lambda$setUnderlyingNetworksForVpn$2(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 5913
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    return-void
.end method

.method public static synthetic lambda$startCaptivePortalApp$1(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 2930
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2931
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_7

    return-void

    .line 2932
    :cond_7
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2933
    :cond_12
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200b

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2934
    return-void
.end method

.method private loadGlobalProxy()V
    .registers 9

    .line 3533
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3534
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3535
    .local v1, "host":Ljava/lang/String;
    const-string v2, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3536
    .local v2, "port":I
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3538
    .local v3, "exclList":Ljava/lang/String;
    const-string v4, "global_proxy_pac_url"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3539
    .local v4, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 3541
    :cond_2b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 3542
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .local v5, "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_3c

    .line 3544
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_37
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3546
    .restart local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :goto_3c
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 3547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3548
    return-void

    .line 3551
    :cond_5b
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3552
    :try_start_5e
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3553
    monitor-exit v6

    .line 3555
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_61
    return-void

    .line 3553
    .restart local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :catchall_62
    move-exception v7

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    throw v7
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3689
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    return-void
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "evtype"    # I

    .line 6041
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 6042
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p2}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 6043
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3693
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 3697
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3698
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to new default network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5257
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5259
    :try_start_17
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    .line 5262
    goto :goto_36

    .line 5260
    :catch_21
    move-exception v0

    .line 5261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5265
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 5266
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5269
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5270
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 5269
    invoke-static {v1}, Lcom/android/server/ConnectivityServiceInjector;->addDnsIfNeeded(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 5272
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5273
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .line 1743
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1744
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_12

    .line 1745
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object p1, v1

    .line 1746
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1748
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_65

    .line 1750
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1752
    const-string/jumbo v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1753
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1754
    const-string/jumbo v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1755
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1757
    :cond_3e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1758
    const-string/jumbo v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    :cond_4e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 1761
    const-string v1, "extraInfo"

    .line 1762
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    :cond_5d
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1765
    return-object v0

    .line 1748
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method private makeTethering()Lcom/android/server/connectivity/Tethering;
    .registers 10

    .line 931
    new-instance v7, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v7, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 937
    .local v7, "deps":Lcom/android/server/connectivity/tethering/TetheringDependencies;
    new-instance v8, Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 938
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v6}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    .line 937
    return-object v8
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .registers 9
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "uid"    # I

    .line 1137
    if-eqz p1, :cond_6d

    .line 1141
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 1142
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1143
    const/4 v1, 0x1

    .local v1, "blocked":Z
    :goto_1a
    goto :goto_2f

    .line 1144
    .end local v1    # "blocked":Z
    :cond_1b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1145
    const/4 v1, 0x0

    goto :goto_1a

    .line 1147
    .restart local v1    # "blocked":Z
    :goto_2f
    nop

    .line 1149
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_6a

    .line 1150
    if-eqz v1, :cond_36

    const-string v0, "BLOCKED"

    goto :goto_38

    :cond_36
    const-string v0, "UNBLOCKED"

    .line 1151
    .local v0, "action":Ljava/lang/String;
    :goto_38
    const-string v2, "Returning %s NetworkInfo to uid=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1153
    return-void

    .line 1147
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "blocked":Z
    :cond_68
    :try_start_68
    monitor-exit v0

    return-void

    .line 1149
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6a

    throw v1

    .line 1138
    :cond_6d
    return-void
.end method

.method private mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 4960
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v0, :cond_3c

    .line 4961
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4962
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 4966
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 4967
    .local v0, "diff":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 4968
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lost immutable capabilities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    .end local v0    # "diff":Ljava/lang/String;
    :cond_3c
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4974
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_4b

    .line 4975
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_4e

    .line 4977
    :cond_4b
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 4979
    :goto_4e
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_58

    .line 4980
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_5b

    .line 4982
    :cond_58
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 4984
    :goto_5b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v1

    const/16 v2, 0x13

    if-eqz v1, :cond_67

    .line 4985
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_6a

    .line 4987
    :cond_67
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4989
    :goto_6a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSuspended()Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_76

    .line 4990
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_79

    .line 4992
    :cond_76
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4995
    :goto_79
    return-object v0
.end method

.method private networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .line 1434
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1435
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1437
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1439
    :cond_12
    return-object v0
.end method

.method private networkRequiresValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2377
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .registers 3

    monitor-enter p0

    .line 1018
    :try_start_1
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    throw v0
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .registers 3

    .line 5881
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetworks()[Landroid/net/Network;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->forceUpdateIfaces([Landroid/net/Network;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 5883
    goto :goto_b

    .line 5882
    :catch_a
    move-exception v0

    .line 5884
    :goto_b
    return-void
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5635
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5636
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_1c

    .line 5637
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5638
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_1c

    .line 5640
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    .line 5643
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 5644
    return-void

    .line 5643
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onUserAdded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4199
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4201
    .local v1, "vpnsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 4202
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 4203
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 4201
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4205
    .end local v1    # "vpnsSize":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 4206
    return-void

    .line 4205
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4209
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4211
    .local v1, "vpnsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 4212
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 4213
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 4211
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4215
    .end local v1    # "vpnsSize":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 4216
    return-void

    .line 4215
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onUserStart(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 4172
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4174
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_14

    .line 4175
    const-string v2, "Starting user already has a VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4176
    monitor-exit v0

    return-void

    .line 4178
    :cond_14
    new-instance v2, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    move-object v1, v2

    .line 4179
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4180
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4181
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 4183
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :cond_3e
    monitor-exit v0

    .line 4184
    return-void

    .line 4183
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private onUserStop(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 4187
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4189
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_14

    .line 4190
    const-string v2, "Stopped user has no VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4191
    monitor-exit v0

    return-void

    .line 4193
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 4194
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4195
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    monitor-exit v0

    .line 4196
    return-void

    .line 4195
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onUserUnlocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4219
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4221
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4222
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    goto :goto_1c

    .line 4224
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    .line 4226
    :goto_1c
    monitor-exit v0

    .line 4227
    return-void

    .line 4226
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "capabilitiesChanged"    # Z

    .line 5277
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5278
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5279
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_1f

    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    goto :goto_a

    .line 5280
    .restart local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_1f
    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 5281
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 5282
    const v3, 0x80004

    const/4 v4, 0x0

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5284
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_3b
    goto :goto_a

    .line 5286
    :cond_3c
    if-eqz p2, :cond_44

    .line 5287
    const v0, 0x80006

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5290
    :cond_44
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5291
    .restart local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5292
    .restart local v2    # "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_63

    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    goto :goto_4e

    .line 5293
    .restart local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_63
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_77

    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-nez v3, :cond_77

    .line 5294
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    .line 5295
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 5297
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_77
    goto :goto_4e

    .line 5298
    :cond_78
    return-void
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .registers 5
    .param p1, "a"    # Landroid/net/ProxyInfo;
    .param p2, "b"    # Landroid/net/ProxyInfo;

    .line 3477
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p1

    .line 3478
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 3481
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private static putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .line 5218
    .local p1, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5219
    return-void
.end method

.method private registerPrivateDnsSettingsCallbacks()V
    .registers 7

    .line 1012
    invoke-static {}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsSettingsUris()[Landroid/net/Uri;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 1013
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const/16 v5, 0x25

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1012
    .end local v3    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1015
    :cond_14
    return-void
.end method

.method private registerSettingsCallbacks()V
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const-string v1, "http_proxy"

    .line 1002
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1001
    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const-string/jumbo v1, "mobile_data_always_on"

    .line 1007
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1006
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1009
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 4539
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4541
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4540
    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v2, v2

    .line 4539
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4542
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 10
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    .line 5597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5598
    .local v0, "now":J
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ge p2, v2, :cond_12

    .line 5599
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    goto :goto_42

    .line 5601
    :cond_12
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 5602
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5601
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5606
    .local v2, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 5607
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 5608
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    nop

    .line 5612
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    if-eq v5, v6, :cond_3a

    sget-object v6, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    goto :goto_3c

    .line 5613
    :cond_3a
    sget-object v6, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .line 5608
    :goto_3c
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 5607
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 5617
    .end local v2    # "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_42
    :goto_42
    return-void
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .registers 5

    .line 2942
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2943
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2944
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2945
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2947
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_27
    goto :goto_f

    .line 2948
    :cond_28
    return-void
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V
    .registers 31
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reapUnvalidatedNetworks"    # Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .param p3, "now"    # J

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 5329
    move-wide/from16 v9, p3

    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v0, :cond_b

    return-void

    .line 5330
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    .line 5331
    .local v0, "keep":Z
    const/4 v1, 0x0

    .line 5332
    .local v1, "isNewDefault":Z
    const/4 v2, 0x0

    .line 5334
    .local v2, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v11

    .line 5335
    .local v11, "wasBackgroundNetwork":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    .line 5341
    .local v12, "score":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 5342
    .local v13, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 5343
    .local v14, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    iget-object v15, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5345
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    iget-object v3, v7, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v17, v0

    move/from16 v16, v1

    move-object v5, v2

    .end local v0    # "keep":Z
    .end local v1    # "isNewDefault":Z
    .end local v2    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v5, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v16, "isNewDefault":Z
    .local v17, "keep":Z
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5350
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_4b

    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    goto :goto_36

    .line 5352
    .restart local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_4b
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 5353
    .local v4, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v18

    .line 5354
    .local v18, "satisfies":Z
    const/4 v2, 0x0

    .line 5356
    .local v2, "satisfiesMobileMultiNetworkCheck":Z
    if-eqz v18, :cond_66

    .line 5357
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v3, v1}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    .line 5362
    .end local v2    # "satisfiesMobileMultiNetworkCheck":Z
    .local v20, "satisfiesMobileMultiNetworkCheck":Z
    :cond_66
    move/from16 v20, v2

    if-ne v8, v4, :cond_6f

    if-eqz v20, :cond_6f

    .line 5367
    const/16 v17, 0x1

    .line 5368
    goto :goto_36

    .line 5373
    :cond_6f
    if-eqz v20, :cond_114

    .line 5381
    if-eqz v4, :cond_9b

    iget-object v3, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5382
    move-object/from16 v19, v1

    move-object v1, v7

    move-object/from16 v21, v2

    move-object v2, v4

    move/from16 v22, v11

    move-object v11, v4

    move-object v4, v8

    .end local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v22, "wasBackgroundNetwork":Z
    move-object/from16 v23, v15

    move-object v15, v5

    move-object/from16 v5, v21

    .end local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v15, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v23, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v21, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 5387
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-ge v1, v12, :cond_193

    goto :goto_a3

    .line 5389
    .end local v22    # "wasBackgroundNetwork":Z
    .end local v23    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "wasBackgroundNetwork":Z
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    :cond_9b
    move-object/from16 v21, v6

    move/from16 v22, v11

    move-object/from16 v23, v15

    move-object v11, v4

    move-object v15, v5

    .end local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v15, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v22    # "wasBackgroundNetwork":Z
    .restart local v23    # "nc":Landroid/net/NetworkCapabilities;
    :cond_a3
    :goto_a3
    if-eqz v11, :cond_b9

    .line 5391
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v11, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 5392
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v7, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    int-to-long v5, v1

    move-object v1, v11

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    .line 5393
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5397
    :cond_b9
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 5398
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v1, v8}, Lcom/android/server/ConnectivityService;->setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5399
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-nez v1, :cond_f1

    .line 5400
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    :cond_f1
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5403
    const/4 v1, 0x1

    .line 5409
    .end local v17    # "keep":Z
    .local v1, "keep":Z
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v7, v2, v12}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 5410
    invoke-direct {v7, v0}, Lcom/android/server/ConnectivityService;->isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 5411
    const/4 v2, 0x1

    .line 5412
    .end local v16    # "isNewDefault":Z
    .local v2, "isNewDefault":Z
    move-object v3, v11

    .line 5413
    .end local v15    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v3, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_109

    .line 5414
    iget-object v4, v7, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v4, v11, v8}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5448
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v11    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v18    # "satisfies":Z
    .end local v20    # "satisfiesMobileMultiNetworkCheck":Z
    :cond_109
    move/from16 v17, v1

    move/from16 v16, v2

    move-object v5, v3

    goto/16 :goto_194

    .end local v2    # "isNewDefault":Z
    .end local v3    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v15    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v16    # "isNewDefault":Z
    :cond_110
    move/from16 v17, v1

    goto/16 :goto_193

    .line 5418
    .end local v1    # "keep":Z
    .end local v22    # "wasBackgroundNetwork":Z
    .end local v23    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "wasBackgroundNetwork":Z
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    .restart local v17    # "keep":Z
    .restart local v18    # "satisfies":Z
    .restart local v20    # "satisfiesMobileMultiNetworkCheck":Z
    :cond_114
    move-object/from16 v21, v6

    move/from16 v22, v11

    move-object/from16 v23, v15

    move-object v11, v4

    move-object v15, v5

    .end local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v15, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v22    # "wasBackgroundNetwork":Z
    .restart local v23    # "nc":Landroid/net/NetworkCapabilities;
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 5427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stopped satisfying request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5430
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 5431
    if-ne v11, v8, :cond_161

    .line 5432
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v1}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 5433
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    goto :goto_18c

    .line 5435
    :cond_161
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: Removing request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5436
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " without updating mNetworkForRequestId or factories!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5435
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    :goto_18c
    const v1, 0x80004

    const/4 v2, 0x0

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5448
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v11    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v15    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v18    # "satisfies":Z
    .end local v20    # "satisfiesMobileMultiNetworkCheck":Z
    .restart local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_193
    :goto_193
    move-object v5, v15

    .line 5345
    :goto_194
    move-object/from16 v6, v21

    move/from16 v11, v22

    move-object/from16 v15, v23

    goto/16 :goto_36

    .line 5449
    .end local v22    # "wasBackgroundNetwork":Z
    .end local v23    # "nc":Landroid/net/NetworkCapabilities;
    .local v11, "wasBackgroundNetwork":Z
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    :cond_19c
    move/from16 v22, v11

    move-object/from16 v23, v15

    move-object v15, v5

    .end local v5    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "wasBackgroundNetwork":Z
    .local v15, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v22    # "wasBackgroundNetwork":Z
    .restart local v23    # "nc":Landroid/net/NetworkCapabilities;
    if-eqz v16, :cond_1b4

    .line 5451
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v8, v15}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5456
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->scheduleReleaseNetworkTransitionWakelock()V

    .line 5459
    :cond_1b4
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .end local v23    # "nc":Landroid/net/NetworkCapabilities;
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1dc

    .line 5460
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v5, "BUG: %s changed requestable capabilities during rematch: %s -> %s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 5462
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x0

    aput-object v11, v6, v18

    aput-object v1, v6, v4

    iget-object v11, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v11, v6, v2

    .line 5460
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    :cond_1dc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v0, v12, :cond_206

    .line 5465
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v5, "BUG: %s changed score during rematch: %d -> %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 5467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 5465
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    :cond_206
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v0

    move/from16 v2, v22

    if-eq v2, v0, :cond_215

    .line 5476
    .end local v22    # "wasBackgroundNetwork":Z
    .local v2, "wasBackgroundNetwork":Z
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v12, v8, v0}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 5483
    const/4 v3, 0x0

    goto :goto_219

    .line 5478
    :cond_215
    const/4 v3, 0x0

    invoke-direct {v7, v8, v3}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 5483
    :goto_219
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .local v5, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v7, v8, v5}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .end local v5    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    goto :goto_21d

    .line 5487
    :cond_22d
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_231
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_241

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5488
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v7, v5, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 5489
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_231

    .line 5492
    :cond_241
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 5494
    if-eqz v16, :cond_26b

    .line 5499
    if-eqz v15, :cond_253

    .line 5500
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v5, v15, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v0, v5, v15, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 5503
    :cond_253
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_25a

    const/16 v0, 0x64

    goto :goto_25b

    :cond_25a
    move v0, v3

    :goto_25b
    iput v0, v7, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5504
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v4, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5505
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5508
    :cond_26b
    if-eqz v17, :cond_2d6

    .line 5513
    :try_start_26d
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 5514
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    iget-object v4, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 5516
    .local v4, "type":I
    iget-object v5, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 5517
    .local v5, "baseIface":Ljava/lang/String;
    invoke-interface {v0, v5, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 5518
    iget-object v6, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkProperties;

    .line 5519
    .local v11, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v24, v18

    .line 5520
    .local v24, "stackedIface":Ljava/lang/String;
    move-object/from16 v3, v24

    invoke-interface {v0, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_2a1
    .catch Landroid/os/RemoteException; {:try_start_26d .. :try_end_2a1} :catch_2a5

    .line 5521
    .end local v11    # "stacked":Landroid/net/LinkProperties;
    .end local v24    # "stackedIface":Ljava/lang/String;
    nop

    .line 5518
    const/4 v3, 0x0

    goto :goto_28a

    .line 5523
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "type":I
    .end local v5    # "baseIface":Ljava/lang/String;
    :cond_2a4
    goto :goto_2a6

    .line 5522
    :catch_2a5
    move-exception v0

    .line 5539
    :goto_2a6
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2a8
    move/from16 v0, v25

    .end local v25    # "i":I
    .local v0, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v3

    if-ge v0, v3, :cond_2c9

    .line 5540
    invoke-virtual {v8, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v3

    .line 5541
    .local v3, "nr":Landroid/net/NetworkRequest;
    iget v4, v3, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c6

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v4

    if-eqz v4, :cond_2c6

    .line 5543
    iget-object v4, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v5, v3, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5539
    .end local v3    # "nr":Landroid/net/NetworkRequest;
    :cond_2c6
    add-int/lit8 v25, v0, 0x1

    .end local v0    # "i":I
    .restart local v25    # "i":I
    goto :goto_2a8

    .line 5551
    .end local v25    # "i":I
    :cond_2c9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 5552
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5555
    :cond_2d6
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    move-object/from16 v3, p2

    if-ne v3, v0, :cond_324

    .line 5556
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_324

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5557
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {v7, v4, v5}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v5

    if-eqz v5, :cond_323

    .line 5558
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v5

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-lez v5, :cond_308

    .line 5566
    invoke-direct {v7, v4, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_323

    .line 5568
    :cond_308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reaping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5569
    invoke-direct {v7, v4}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5572
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_323
    :goto_323
    goto :goto_2e6

    .line 5574
    :cond_324
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1895
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1898
    .local v1, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_33

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    .line 1899
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1902
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 1905
    goto :goto_33

    .line 1903
    :catch_1e
    move-exception v2

    .line 1904
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removeDataActivityTracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1907
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    return-void
.end method

.method private restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1449
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasUseBackgroundNetworksPermission(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1450
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1452
    :cond_11
    return-void
.end method

.method private restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1443
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkSettingsPermission()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1446
    :cond_d
    return-void
.end method

.method private satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "agentNc"    # Landroid/net/NetworkCapabilities;
    .param p2, "requestNc"    # Landroid/net/NetworkCapabilities;

    .line 6132
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    if-gez v0, :cond_11

    .line 6133
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 6135
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "agentNc"    # Landroid/net/NetworkCapabilities;

    .line 6119
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6120
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v2

    .line 6121
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 6122
    return v0

    .line 6124
    :cond_19
    return v1

    .line 6127
    :cond_1a
    return v0
.end method

.method private scheduleReleaseNetworkTransitionWakelock()V
    .registers 5

    .line 3347
    monitor-enter p0

    .line 3348
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3349
    monitor-exit p0

    return-void

    .line 3351
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_23

    .line 3353
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 3354
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3355
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3356
    return-void

    .line 3351
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2921
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 2922
    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2921
    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2924
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .registers 24
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .line 1773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1774
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    move/from16 v11, p1

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1775
    const-string v0, "isActive"

    move/from16 v12, p2

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1776
    const-string/jumbo v0, "tsNanos"

    move-wide/from16 v13, p3

    invoke-virtual {v1, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 1779
    .local v9, "ident":J
    move-object/from16 v15, p0

    :try_start_25
    iget-object v2, v15, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_45

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    move-wide/from16 v17, v9

    move-object v9, v0

    .end local v9    # "ident":J
    .local v17, "ident":J
    move-object/from16 v10, v16

    :try_start_37
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 1782
    move-wide/from16 v2, v17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1783
    .end local v17    # "ident":J
    .local v2, "ident":J
    nop

    .line 1784
    return-void

    .line 1782
    .end local v2    # "ident":J
    .restart local v17    # "ident":J
    :catchall_41
    move-exception v0

    move-wide/from16 v2, v17

    .line 1782
    .end local v17    # "ident":J
    .restart local v2    # "ident":J
    goto :goto_47

    .line 1782
    .end local v2    # "ident":J
    .restart local v9    # "ident":J
    :catchall_45
    move-exception v0

    move-wide v2, v9

    .line 1782
    .end local v9    # "ident":J
    .restart local v2    # "ident":J
    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .line 1769
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1770
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 1739
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1740
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 10
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5149
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5150
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_23} :catch_24

    .line 5155
    goto :goto_41

    .line 5151
    :catch_24
    move-exception v0

    .line 5152
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not sent, it had been canceled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5153
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5154
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 5157
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_41
    return-void
.end method

.method private sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    .line 5795
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 5796
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 5797
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v1, :cond_1b

    .line 5798
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5799
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_a0

    .line 5801
    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5802
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5803
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5804
    const-string/jumbo v2, "networkType"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5805
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 5806
    const-string/jumbo v2, "isFailover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5807
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5809
    :cond_50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 5810
    const-string/jumbo v2, "reason"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5812
    :cond_60
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 5813
    const-string v2, "extraInfo"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5815
    :cond_6f
    const/4 v2, 0x0

    .line 5816
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 5817
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 5818
    if-eqz v2, :cond_89

    .line 5819
    const-string/jumbo v3, "otherNetwork"

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8f

    .line 5822
    :cond_89
    const-string/jumbo v4, "noConnectivity"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5825
    :cond_8f
    :goto_8f
    const-string v3, "inetCondition"

    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5827
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5828
    if-eqz v2, :cond_a0

    .line 5829
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 5832
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a0
    :goto_a0
    return-void
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    .line 5136
    const v0, 0x80002

    if-ne p3, v0, :cond_24

    iget-boolean v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    if-nez v0, :cond_24

    .line 5137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.extra.NETWORK"

    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5139
    const-string v1, "android.net.extra.NETWORK_REQUEST"

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5140
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 5141
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 5144
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_24
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 3639
    if-nez p1, :cond_d

    new-instance v0, Landroid/net/ProxyInfo;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    .line 3640
    :cond_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 3641
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending Proxy Broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3643
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3645
    const-string v1, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3648
    .local v1, "ident":J
    :try_start_40
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    .line 3650
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3651
    nop

    .line 3652
    return-void

    .line 3650
    :catchall_4c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1787
    monitor-enter p0

    .line 1788
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 1789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1791
    :cond_c
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1798
    .local v1, "ident":J
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1799
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1801
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3d

    .line 1802
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4b

    .line 1805
    :cond_3d
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v4

    .line 1806
    .local v4, "opts":Landroid/app/BroadcastOptions;
    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    .line 1807
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    .line 1809
    .end local v4    # "opts":Landroid/app/BroadcastOptions;
    :goto_4b
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_80

    .line 1811
    .local v4, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_4f
    const-string/jumbo v5, "networkType"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1813
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_64

    :cond_62
    const-string v6, "?"

    .line 1811
    :goto_64
    invoke-interface {v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_67} :catch_68
    .catchall {:try_start_4f .. :try_end_67} :catchall_80

    .line 1815
    goto :goto_69

    .line 1814
    :catch_68
    move-exception v5

    .line 1816
    :goto_69
    const/high16 v5, 0x200000

    :try_start_6b
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_80

    .line 1819
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "bs":Lcom/android/internal/app/IBatteryStats;
    :cond_6e
    :try_start_6e
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_7b

    .line 1821
    :try_start_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1822
    nop

    .line 1823
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "ident":J
    monitor-exit p0

    .line 1824
    return-void

    .line 1821
    .restart local v0    # "options":Landroid/os/Bundle;
    .restart local v1    # "ident":J
    :catchall_7b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1823
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "ident":J
    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_80

    throw v0
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .registers 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 5128
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5129
    .local v1, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x83000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 5131
    .end local v1    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_a

    .line 5132
    :cond_20
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 5119
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 5121
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_12

    .end local v1    # "nr":Landroid/net/NetworkRequest;
    goto :goto_19

    .line 5122
    .restart local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 5118
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5124
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .line 3937
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3938
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3939
    if-eqz v0, :cond_a

    .line 3940
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 3943
    :cond_a
    if-eqz p1, :cond_13

    .line 3944
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3945
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 3947
    :cond_13
    return-void
.end method

.method private setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4708
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4709
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4710
    monitor-exit v0

    .line 4711
    return-void

    .line 4710
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1859
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, "iface":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1864
    .local v1, "type":I
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1866
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_activity_timeout_mobile"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1869
    .local v3, "timeout":I
    const/4 v1, 0x0

    goto :goto_3a

    .line 1870
    .end local v3    # "timeout":I
    :cond_20
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1872
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_activity_timeout_wifi"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1875
    .restart local v3    # "timeout":I
    const/4 v1, 0x1

    goto :goto_3a

    .line 1878
    .end local v3    # "timeout":I
    :cond_39
    nop

    .restart local v3    # "timeout":I
    :goto_3a
    move v2, v3

    .line 1881
    .end local v3    # "timeout":I
    .local v2, "timeout":I
    if-lez v2, :cond_5d

    if-eqz v0, :cond_5d

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5d

    .line 1883
    :try_start_42
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v2, v1}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_48

    .line 1887
    goto :goto_5d

    .line 1884
    :catch_48
    move-exception v3

    .line 1886
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setupDataActivityTracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1889
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-void
.end method

.method private showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 13
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "type"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 2989
    sget-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 2997
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return-void

    .line 2994
    :pswitch_22
    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    .line 2995
    .local v0, "action":Ljava/lang/String;
    goto :goto_28

    .line 2991
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_25
    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    .line 2992
    .restart local v0    # "action":Ljava/lang/String;
    nop

    .line 2998
    :goto_28
    move-object v7, v0

    .line 3001
    .end local v0    # "action":Ljava/lang/String;
    .local v7, "action":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 3002
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "netId"

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3003
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3004
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiNoInternetDialog"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3007
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3009
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 3010
    return-void

    nop

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private startAlwaysOnVpn(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 3964
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3965
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 3966
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_2b

    .line 3969
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3973
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3974
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5222
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 5223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 5224
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 5226
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5223
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5227
    .restart local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead network still had at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5228
    nop

    .line 5231
    .end local v0    # "i":I
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_2f
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 5232
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .line 3951
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_5

    .line 3954
    return-void

    .line 3952
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBool(I)Z
    .registers 2
    .param p0, "encodedBoolean"    # I

    .line 6046
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Lcom/android/server/ConnectivityService$UnneededFor;

    .line 2644
    sget-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_aa

    .line 2652
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Invalid reason. Cannot happen."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    return v1

    .line 2649
    :pswitch_14
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    .line 2650
    .local v0, "numRequests":I
    goto :goto_1e

    .line 2646
    .end local v0    # "numRequests":I
    :pswitch_19
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    .line 2647
    .restart local v0    # "numRequests":I
    nop

    .line 2653
    :goto_1e
    nop

    .line 2656
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a8

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_a8

    if-lez v0, :cond_2e

    goto/16 :goto_a8

    .line 2660
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2661
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2662
    return v3

    .line 2664
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 2668
    :cond_40
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2669
    .local v4, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    if-ne p2, v5, :cond_63

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2671
    goto :goto_4a

    .line 2676
    :cond_63
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v6, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v6, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2677
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 2679
    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v5

    if-nez v5, :cond_a5

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 2688
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    if-eqz v5, :cond_a6

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 2690
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    .line 2691
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v6

    if-ge v5, v6, :cond_a6

    .line 2692
    :cond_a5
    return v3

    .line 2694
    .end local v4    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_a6
    goto :goto_4a

    .line 2695
    :cond_a7
    return v1

    .line 2657
    :cond_a8
    :goto_a8
    return v3

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method private updateAllVpnsCapabilities()V
    .registers 4

    .line 3883
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3884
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 3885
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 3886
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->updateCapabilities()V

    .line 3884
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3888
    .end local v1    # "i":I
    :cond_1a
    monitor-exit v0

    .line 3889
    return-void

    .line 3888
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 13
    .param p1, "oldScore"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;

    .line 5015
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 5017
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    iget-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 5019
    :cond_d
    iget-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v1

    .line 5020
    .local v1, "oldPermission":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v2

    .line 5021
    .local v2, "newPermission":Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    iget-boolean v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v3, :cond_46

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-nez v3, :cond_46

    .line 5023
    :try_start_27
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-interface {v3, v4, v2}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_31

    .line 5026
    goto :goto_46

    .line 5024
    :catch_31
    move-exception v3

    .line 5025
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setNetworkPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5030
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_46
    :goto_46
    monitor-enter p2

    .line 5031
    :try_start_47
    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5032
    .local v3, "prevNc":Landroid/net/NetworkCapabilities;
    iput-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5033
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_9b

    .line 5035
    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 5037
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, p1, :cond_60

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 5042
    invoke-direct {p0, p2, v5}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_69

    .line 5046
    :cond_60
    invoke-direct {p0, p2, p1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5047
    const v4, 0x80006

    invoke-virtual {p0, p2, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5051
    :goto_69
    if-eqz v3, :cond_90

    .line 5052
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    .line 5053
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/4 v7, 0x0

    if-eq v6, v4, :cond_7a

    move v4, v5

    goto :goto_7b

    :cond_7a
    move v4, v7

    .line 5054
    .local v4, "meteredChanged":Z
    :goto_7b
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    .line 5055
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eq v8, v6, :cond_88

    goto :goto_89

    :cond_88
    move v5, v7

    .line 5056
    .local v5, "roamingChanged":Z
    :goto_89
    if-nez v4, :cond_8d

    if-eqz v5, :cond_90

    .line 5057
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5061
    .end local v4    # "meteredChanged":Z
    .end local v5    # "roamingChanged":Z
    :cond_90
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 5064
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 5066
    :cond_9a
    return-void

    .line 5033
    .end local v3    # "prevNc":Landroid/net/NetworkCapabilities;
    :catchall_9b
    move-exception v3

    :try_start_9c
    monitor-exit p2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v3
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 11
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .line 4914
    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4915
    return-void

    .line 4918
    :cond_9
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4919
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    if-ne v1, p3, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 4922
    .local v1, "isDefaultNetwork":Z
    :goto_18
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->addDnsIfNeeded(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 4923
    .local v2, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 4924
    .local v3, "miuiLp":Landroid/net/LinkProperties;
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V

    .line 4927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting DNS servers for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4931
    :try_start_44
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v4, p3, v3, v1}, Lcom/android/server/connectivity/DnsManager;->setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a

    .line 4935
    goto :goto_5f

    .line 4933
    :catch_4a
    move-exception v4

    .line 4934
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setDnsConfigurationForNetwork: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4936
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5621
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_5

    return-void

    .line 5624
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 5626
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x64

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 5628
    .local v0, "newInetCondition":I
    :goto_14
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_19

    return-void

    .line 5630
    :cond_19
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5631
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 5632
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V
    .registers 11
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I
    .param p4, "caps"    # Landroid/net/NetworkCapabilities;

    .line 4843
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 4844
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    goto :goto_b

    .line 4845
    :cond_a
    move-object v2, v1

    :goto_b
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    nop

    :cond_12
    invoke-direct {v0, v2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4846
    .local v0, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4848
    .local v2, "iface":Ljava/lang/String;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4849
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 4850
    const/4 v3, 0x1

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4c} :catch_4d

    .line 4853
    goto :goto_62

    .line 4851
    :catch_4d
    move-exception v3

    .line 4852
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception adding interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4854
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_62
    goto :goto_1b

    .line 4855
    :cond_63
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4857
    .restart local v2    # "iface":Ljava/lang/String;
    :try_start_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4858
    const/4 v3, 0x0

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 4859
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_9a} :catch_9b

    .line 4862
    goto :goto_b0

    .line 4860
    :catch_9b
    move-exception v3

    .line 4861
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception removing interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4863
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b0
    goto :goto_69

    .line 4864
    :cond_b1
    return-void
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .registers 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "now"    # J

    .line 2427
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 2428
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-lez v0, :cond_2f

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlingering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    .line 2431
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_7a

    .line 2432
    :cond_2f
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7a

    .line 2433
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    .line 2434
    .local v0, "lingerTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lingering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    .line 2436
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2437
    const v1, 0x80003

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 2439
    .end local v0    # "lingerTime":I
    :cond_7a
    :goto_7a
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .line 4766
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 4767
    .local v0, "newLp":Landroid/net/LinkProperties;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 4771
    .local v1, "netId":I
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v2, :cond_14

    .line 4772
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 4775
    :cond_14
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V

    .line 4776
    invoke-direct {p0, v0, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 4781
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4783
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    .line 4784
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 4789
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V

    .line 4792
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateClat(Landroid/os/INetworkManagementService;)V

    .line 4793
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4794
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    goto :goto_40

    .line 4796
    :cond_3d
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4799
    :goto_40
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 4800
    monitor-enter p1

    .line 4801
    :try_start_47
    iput-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 4802
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    .line 4803
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 4804
    const v2, 0x80007

    invoke-virtual {p0, p1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_57

    .line 4802
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2

    .line 4807
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4808
    return-void
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 9
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .line 1914
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    .line 1916
    .local v1, "mtu":I
    if-nez p2, :cond_d

    if-nez v1, :cond_d

    .line 1918
    return-void

    .line 1920
    :cond_d
    if-eqz p2, :cond_16

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1922
    return-void

    .line 1924
    :cond_16
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1925
    if-eqz v1, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected mtu value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1926
    :cond_3e
    return-void

    .line 1930
    :cond_3f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1931
    const-string v2, "Setting MTU size with null iface."

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1932
    return-void

    .line 1937
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, v1}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_51

    .line 1940
    goto :goto_68

    .line 1938
    :catch_51
    move-exception v2

    .line 1939
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 12
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .line 5647
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 5648
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    .line 5649
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 5650
    .local v2, "oldScore":I
    monitor-enter p1

    .line 5651
    :try_start_a
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object v1, v3

    .line 5652
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5653
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_17e

    .line 5654
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5658
    if-nez v1, :cond_2a

    const-string/jumbo v4, "null"

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    :goto_2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5657
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5662
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_be

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_54

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_be

    .line 5664
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 5667
    :cond_54
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5671
    :try_start_5b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 5672
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5673
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v5

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v8, :cond_7f

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v8, v8, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez v8, :cond_7d

    goto :goto_7f

    .line 5672
    :cond_7d
    move v8, v4

    goto :goto_81

    .line 5673
    :cond_7f
    :goto_7f
    nop

    .line 5672
    move v8, v5

    :goto_81
    invoke-interface {v3, v6, v7, v8}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V

    goto :goto_94

    .line 5677
    :cond_85
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5678
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v7

    .line 5677
    invoke-interface {v3, v6, v7}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_94} :catch_98

    .line 5684
    :goto_94
    nop

    .line 5685
    iput-boolean v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    goto :goto_be

    .line 5680
    :catch_98
    move-exception v3

    .line 5681
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5682
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5681
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5683
    return-void

    .line 5688
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_be
    :goto_be
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v6, 0x0

    if-nez v3, :cond_117

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_117

    .line 5689
    iput-boolean v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 5691
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v3}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    .line 5692
    invoke-direct {p0, p1, v6}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 5693
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5695
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v4, 0x82001

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 5696
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5698
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 5700
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5701
    :try_start_ec
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v4, :cond_fd

    .line 5702
    iput-boolean v5, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 5703
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v4, :cond_fd

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v4, :cond_fd

    .line 5704
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 5707
    :cond_fd
    monitor-exit v3

    goto :goto_102

    :catchall_ff
    move-exception v4

    monitor-exit v3
    :try_end_101
    .catchall {:try_start_ec .. :try_end_101} :catchall_ff

    throw v4

    .line 5718
    :cond_102
    :goto_102
    const-string v3, "CONNECT"

    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 5721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5722
    .local v3, "now":J
    sget-object v5, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 5725
    const v5, 0x80001

    invoke-virtual {p0, p1, v5}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5726
    .end local v3    # "now":J
    goto :goto_17d

    :cond_117
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_14a

    .line 5727
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 5728
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_146

    .line 5729
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5730
    :try_start_129
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v5, :cond_13c

    .line 5731
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 5732
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v4, :cond_13c

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v4, :cond_13c

    .line 5733
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 5736
    :cond_13c
    monitor-exit v3
    :try_end_13d
    .catchall {:try_start_129 .. :try_end_13d} :catchall_143

    .line 5737
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    goto :goto_146

    .line 5736
    :catchall_143
    move-exception v4

    :try_start_144
    monitor-exit v3
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v4

    .line 5739
    :cond_146
    :goto_146
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_17d

    .line 5740
    :cond_14a
    if-eqz v1, :cond_154

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_158

    :cond_154
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_17d

    .line 5743
    :cond_158
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    if-eq v3, v2, :cond_161

    .line 5744
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5746
    :cond_161
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 5750
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_172

    .line 5751
    const v3, 0x80009

    goto :goto_175

    .line 5752
    :cond_172
    const v3, 0x8000a

    .line 5750
    :goto_175
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5753
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5755
    :cond_17d
    :goto_17d
    return-void

    .line 5653
    :catchall_17e
    move-exception v3

    :try_start_17f
    monitor-exit p1
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v3
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    .line 5759
    if-gez p2, :cond_29

    .line 5760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkScore for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got a negative score ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").  Bumping score to min of 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5762
    const/4 p2, 0x0

    .line 5765
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 5766
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 5768
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5770
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5771
    return-void
.end method

.method private updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newCfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 2409
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDns(Landroid/net/Network;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 2410
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 2411
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3607
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 3608
    .local v1, "newProxyInfo":Landroid/net/ProxyInfo;
    :goto_9
    if-nez p2, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3610
    .local v0, "oldProxyInfo":Landroid/net/ProxyInfo;
    :goto_10
    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3611
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3613
    :cond_1d
    return-void
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .registers 10
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .line 4872
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 4873
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    goto :goto_b

    .line 4874
    :cond_a
    move-object v2, v1

    :goto_b
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    nop

    :cond_12
    invoke-direct {v0, v2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4879
    .local v0, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4880
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_2e

    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_1b

    .line 4883
    .restart local v2    # "route":Landroid/net/RouteInfo;
    :cond_2e
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_34

    .line 4888
    goto :goto_56

    .line 4884
    :catch_34
    move-exception v3

    .line 4885
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-nez v4, :cond_42

    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_56

    .line 4886
    .restart local v2    # "route":Landroid/net/RouteInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in addRoute for non-gateway: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4889
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_56
    goto :goto_1b

    .line 4890
    :cond_57
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4891
    .restart local v2    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-nez v3, :cond_70

    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_5d

    .line 4894
    .restart local v2    # "route":Landroid/net/RouteInfo;
    :cond_70
    :try_start_70
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_76

    .line 4899
    goto :goto_94

    .line 4895
    :catch_76
    move-exception v3

    .line 4896
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-nez v4, :cond_80

    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_94

    .line 4897
    .restart local v2    # "route":Landroid/net/RouteInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in addRoute for gateway: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4900
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_94
    goto :goto_5d

    .line 4902
    :cond_95
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4905
    .restart local v2    # "route":Landroid/net/RouteInfo;
    :try_start_a7
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v2}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_ad

    .line 4908
    goto :goto_c2

    .line 4906
    :catch_ad
    move-exception v3

    .line 4907
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in removeRoute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4909
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_c2
    goto :goto_9b

    .line 4910
    :cond_c3
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d6

    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d4

    goto :goto_d6

    :cond_d4
    const/4 v1, 0x0

    goto :goto_d7

    :cond_d6
    :goto_d6
    const/4 v1, 0x1

    :goto_d7
    return v1
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .registers 12
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/net/NetworkRequest;

    .line 4391
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4392
    .local v0, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4393
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v2, "thresholds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4395
    const-string v2, "CONNECT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    .line 4397
    if-eqz p3, :cond_3d

    iget-object v2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "detail":Ljava/lang/String;
    goto :goto_3e

    .line 4400
    .end local v2    # "detail":Ljava/lang/String;
    :cond_3d
    move-object v2, p2

    .line 4402
    .restart local v2    # "detail":Ljava/lang/String;
    :goto_3e
    const-string/jumbo v4, "updateSignalStrengthThresholds: %s, sending %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const/4 v6, 0x1

    .line 4403
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4402
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4406
    .end local v2    # "detail":Ljava/lang/String;
    :cond_5f
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x8100e

    invoke-virtual {v2, v4, v3, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 4409
    return-void
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1953
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1954
    return-void

    .line 1957
    :cond_7
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "tcpBufferSizes":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1959
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1960
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 1959
    invoke-static {v0, v1}, Lcom/android/server/NetPluginDelegate;->get5GTcpBuffers(Ljava/lang/String;Landroid/net/NetworkSpecifier;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    :cond_20
    const/4 v1, 0x0

    .line 1963
    .local v1, "values":[Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 1964
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1967
    :cond_29
    if-eqz v1, :cond_2f

    array-length v3, v1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_50

    .line 1968
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tcpBufferSizes string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1969
    const-string v0, "4096,87380,110208,4096,16384,110208"

    .line 1970
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1973
    :cond_50
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    return-void

    .line 1978
    :cond_59
    :try_start_59
    const-string v3, "/sys/kernel/ipv4/tcp_"

    .line 1979
    .local v3, "prefix":Ljava/lang/String;
    const-string v4, "/sys/kernel/ipv4/tcp_rmem_min"

    aget-object v5, v1, v2

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v4, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v4, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v4, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v4, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v4, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_8c} :catch_8d

    .line 1988
    .end local v3    # "prefix":Ljava/lang/String;
    goto :goto_a2

    .line 1986
    :catch_8d
    move-exception v3

    .line 1987
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1990
    .end local v3    # "e":Ljava/io/IOException;
    :goto_a2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tcp_default_init_rwnd"

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v6, "net.tcp.default_init_rwnd"

    .line 1992
    invoke-virtual {v5, v6, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1990
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1993
    .local v2, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v3, "sys.sysctl.tcp_def_init_rwnd"

    .line 1994
    .local v3, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_d1

    .line 1995
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v5, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    :cond_d1
    return-void
.end method

.method private updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "prevNc"    # Landroid/net/NetworkCapabilities;
    .param p3, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 5070
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 5071
    .local v1, "prevRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_9
    if-nez p3, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    .line 5072
    .local v0, "newRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_10
    if-nez v1, :cond_18

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 5073
    :cond_18
    if-nez v0, :cond_20

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v2

    .line 5074
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5076
    .local v2, "prevRangesCopy":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5077
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5080
    :try_start_2b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 5081
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 5082
    .local v3, "addedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5083
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 5085
    .end local v3    # "addedRangesArray":[Landroid/net/UidRange;
    :cond_43
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 5086
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 5087
    .local v3, "removedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5088
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5b} :catch_5c

    .line 5093
    .end local v3    # "removedRangesArray":[Landroid/net/UidRange;
    :cond_5b
    goto :goto_71

    .line 5090
    :catch_5c
    move-exception v3

    .line 5092
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in updateUids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5094
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_71
    return-void
.end method

.method private wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .param p3, "add"    # Z

    .line 4813
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4814
    return-void

    .line 4817
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4819
    .local v0, "mark":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4824
    .local v1, "mask":I
    if-eqz v0, :cond_66

    if-nez v1, :cond_27

    goto :goto_66

    .line 4828
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4830
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p3, :cond_46

    .line 4831
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getNetdService()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4f

    .line 4835
    :catch_44
    move-exception v3

    goto :goto_50

    .line 4833
    :cond_46
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getNetdService()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_44

    .line 4837
    :goto_4f
    goto :goto_65

    .line 4835
    :goto_50
    nop

    .line 4836
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception modifying wakeup packet monitoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4839
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_65
    return-void

    .line 4825
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 5888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5889
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5890
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5891
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 5892
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public avoidBadWifi()Z
    .registers 2

    .line 2938
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .registers 3
    .param p1, "suggestedTimeOutMs"    # I

    .line 4037
    const/4 v0, -0x1

    return v0
.end method

.method createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6021
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6016
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2040
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2041
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .line 3764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3765
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3766
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3767
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 3768
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public factoryReset()V
    .registers 10

    .line 5942
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5944
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5945
    return-void

    .line 5948
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5951
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 5953
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 5955
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5956
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2e
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 5957
    .local v6, "tether":Ljava/lang/String;
    invoke-virtual {p0, v6, v2}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    .end local v6    # "tether":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 5961
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_38
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_93

    .line 5963
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5964
    :try_start_47
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v4

    .line 5965
    .local v4, "alwaysOnPackage":Ljava/lang/String;
    if-eqz v4, :cond_53

    .line 5966
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    .line 5967
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 5971
    :cond_53
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v5, :cond_72

    if-nez v0, :cond_72

    .line 5972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_90

    .line 5974
    .local v5, "ident":J
    :try_start_5d
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "LOCKDOWN_VPN"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 5975
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 5976
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_6d

    .line 5978
    :try_start_69
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5979
    goto :goto_72

    .line 5978
    :catchall_6d
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 5983
    .end local v5    # "ident":J
    :cond_72
    :goto_72
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    .line 5984
    .local v5, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v5, :cond_8e

    .line 5985
    iget-boolean v6, v5, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_84

    .line 5986
    const-string v1, "[Legacy VPN]"

    const-string v6, "[Legacy VPN]"

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_8e

    .line 5990
    :cond_84
    iget-object v6, v5, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 5992
    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5995
    .end local v4    # "alwaysOnPackage":Ljava/lang/String;
    .end local v5    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_8e
    :goto_8e
    monitor-exit v2

    goto :goto_93

    :catchall_90
    move-exception v1

    monitor-exit v2
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_90

    throw v1

    .line 5998
    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6000
    return-void
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 4

    .line 1379
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1381
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1382
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .registers 3

    .line 1192
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1198
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1199
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .line 1182
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1184
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1185
    .local v1, "state":Landroid/net/NetworkState;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1186
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    .line 1187
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1240
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1242
    .local v0, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1243
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 4

    .line 1232
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1234
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1235
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1476
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 4

    .line 1279
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1280
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1281
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, "networkType":I
    :goto_8
    const/16 v2, 0x11

    if-gt v1, v2, :cond_18

    .line 1283
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1284
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_15

    .line 1285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1288
    .end local v1    # "networkType":I
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 8

    .line 1457
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1459
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1460
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1461
    .local v4, "network":Landroid/net/Network;
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 1462
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_1e

    .line 1467
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1470
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkState;

    return-object v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 5

    .line 1304
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1305
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1306
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Network;

    .line 1307
    .local v1, "result":[Landroid/net/Network;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 1308
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v3, v1, v2

    .line 1307
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1310
    .end local v2    # "i":I
    :cond_26
    monitor-exit v0

    return-object v1

    .line 1311
    .end local v1    # "result":[Landroid/net/Network;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .registers 5

    .line 3808
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3809
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3810
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 3811
    new-array v1, v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v1

    .line 3814
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3815
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    nop

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 3816
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 3817
    .local v3, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v3, :cond_2e

    .line 3818
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3815
    .end local v3    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3821
    .end local v2    # "i":I
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v2

    .line 3822
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 4021
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4022
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4024
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4025
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4026
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 4027
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4030
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4031
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 2

    .line 5920
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5921
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 12
    .param p1, "userId"    # I

    .line 1330
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1334
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1335
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1336
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_17

    .line 1337
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :cond_17
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1341
    :try_start_1a
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v4, :cond_46

    .line 1342
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 1343
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v4, :cond_46

    .line 1344
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 1345
    .local v5, "networks":[Landroid/net/Network;
    if-eqz v5, :cond_46

    .line 1346
    array-length v6, v5

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_46

    aget-object v8, v5, v7

    .line 1347
    .local v8, "network":Landroid/net/Network;
    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    move-object v1, v9

    .line 1348
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    move-object v2, v9

    .line 1349
    if-eqz v2, :cond_43

    .line 1350
    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .end local v8    # "network":Landroid/net/Network;
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 1356
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "networks":[Landroid/net/Network;
    :cond_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_59

    .line 1358
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkCapabilities;

    .line 1359
    .local v3, "out":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/net/NetworkCapabilities;

    .line 1360
    return-object v3

    .line 1356
    .end local v3    # "out":[Landroid/net/NetworkCapabilities;
    :catchall_59
    move-exception v4

    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v4
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 3562
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3563
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 3564
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 3204
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3206
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3207
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3209
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 3795
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3797
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3798
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3799
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 1400
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1401
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "networkType"    # I

    .line 1387
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1388
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1389
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_18

    .line 1390
    monitor-enter v0

    .line 1391
    :try_start_c
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v0

    return-object v1

    .line 1392
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1

    .line 1394
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 6

    .line 4114
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4115
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 4116
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4117
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040402

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_43

    .line 4120
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4123
    :goto_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 4124
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 4125
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 4126
    const-string v1, "0000000000"

    .line 4128
    :cond_57
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4129
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4130
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 4128
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4134
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_73
    return-object v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 3040
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3042
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3043
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xb

    .line 3044
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3045
    const/4 v1, 0x7

    return v1

    .line 3048
    :cond_15
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object v1

    .line 3049
    .local v1, "networkPreference":Ljava/lang/Integer;
    if-eqz v1, :cond_22

    .line 3050
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3053
    :cond_22
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->getMeteredMultipathPreference()I

    move-result v2

    return v2
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 1428
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1429
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 6
    .param p1, "networkType"    # I

    .line 1293
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1295
    .local v0, "uid":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    move-result-object v2

    .line 1296
    .local v2, "state":Landroid/net/NetworkState;
    iget-object v3, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1297
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object v1

    .line 1299
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 6
    .param p1, "networkType"    # I

    .line 1248
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1250
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 1254
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1255
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v3, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_24

    iget-object v3, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_24

    .line 1256
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1257
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1260
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_24
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    move-result-object v1

    .line 1261
    .restart local v1    # "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1266
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1268
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_13

    .line 1269
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v1

    .line 1270
    .local v1, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1271
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1273
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkWatchlistConfigHash()[B
    .registers 3

    .line 6004
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkWatchlistManager;

    .line 6005
    .local v0, "nwm":Landroid/net/NetworkWatchlistManager;
    if-nez v0, :cond_13

    .line 6006
    const-string v1, "Unable to get NetworkWatchlistManager"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6007
    const/4 v1, 0x0

    return-object v1

    .line 6010
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v1

    return-object v1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 3441
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0

    .line 3442
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3443
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_e

    return-object v0

    .line 3444
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    return-object v2

    .line 3447
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 3448
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v1, :cond_23

    return-object v2

    .line 3449
    :cond_23
    monitor-enter v1

    .line 3450
    :try_start_24
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    .line 3451
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v3, :cond_2e

    monitor-exit v1

    return-object v2

    .line 3452
    :cond_2e
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    monitor-exit v1

    return-object v2

    .line 3453
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .registers 5
    .param p1, "networkType"    # I

    .line 2001
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string v1, "android.telephony.apn-restore"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    .local v0, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 2004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2006
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    return v1

    .line 2007
    :catch_15
    move-exception v1

    .line 2011
    :cond_16
    const v1, 0xea60

    .line 2013
    .local v1, "ret":I
    const/16 v2, 0x11

    if-gt p1, v2, :cond_29

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    if-eqz v2, :cond_29

    .line 2015
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    .line 2017
    :cond_29
    return v1
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1949
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 3236
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3237
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3238
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3240
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .line 3258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3259
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 3216
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3217
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3218
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3220
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 3226
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3227
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3228
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3230
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 3276
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3277
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .line 3264
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3265
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .line 3270
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3271
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 5
    .param p1, "userId"    # I

    .line 3860
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3861
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3862
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 3863
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_16

    .line 3864
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3866
    :cond_16
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3868
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 5097
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eq v0, p1, :cond_b

    .line 5099
    return-void

    .line 5102
    :cond_b
    invoke-virtual {p2}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 5108
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5109
    .local v0, "oldLp":Landroid/net/LinkProperties;
    monitor-enter p1

    .line 5110
    :try_start_11
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5111
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 5112
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_1b

    .line 5113
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 5115
    :cond_1b
    return-void

    .line 5111
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6031
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActiveNetworkMetered()Z
    .registers 5

    .line 1483
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1486
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1487
    .local v1, "caps":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1488
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 1491
    :cond_18
    return v2
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3979
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 3980
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3982
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3983
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 3984
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 3985
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3988
    :cond_31
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3989
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I

    .line 1365
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1366
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callerPkg"    # Ljava/lang/String;

    .line 3282
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3283
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .registers 10
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 4576
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4577
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4580
    :cond_9
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4581
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    nop

    .line 4582
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4581
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 4583
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 4589
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V

    .line 4590
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4592
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4594
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 4597
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4598
    return-object v1
.end method

.method public makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;
    .registers 15
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6026
    new-instance v8, Lcom/android/internal/util/WakeupMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-object v8
.end method

.method protected metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6036
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    const-string/jumbo v1, "no IpConnectivityMetrics service"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    return-object v0
.end method

.method protected notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5778
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5779
    iget-object v0, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const v1, 0x80002

    if-eqz v0, :cond_12

    .line 5780
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5782
    return-void

    .line 5785
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5786
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 4
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    .line 5854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5855
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 8
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I
    .param p3, "arg1"    # I

    .line 5839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 5840
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 5841
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5845
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1b

    .line 5846
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_1e

    .line 5848
    :cond_1b
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5839
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5851
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 5162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5163
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5166
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 5167
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 6057
    new-instance v0, Lcom/android/server/ConnectivityService$ShellCmd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 6058
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 4604
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4605
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4606
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4608
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4609
    nop

    .line 4610
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4609
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 4612
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4613
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 4615
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4617
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 4620
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4621
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .registers 8
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 4519
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v0

    .line 4521
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 4522
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 4523
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 4524
    nop

    .line 4525
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4524
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 4526
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4527
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 4529
    new-instance v0, Landroid/net/NetworkRequest;

    .line 4530
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v1

    sget-object v2, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v3, -0x1

    invoke-direct {v0, p1, v3, v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4531
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 4532
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingRequest for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4533
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4535
    return-object v0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3717
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3719
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3720
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3721
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 3722
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_19

    .line 3723
    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3725
    :cond_19
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3727
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method protected registerNetdEventCallback()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1627
    const-string v0, "connmetrics"

    .line 1629
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1628
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 1630
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-nez v0, :cond_17

    .line 1631
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v1, "Missing IIpConnectivityMetrics"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v0, v1, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    .line 1640
    goto :goto_35

    .line 1638
    :catch_20
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error registering netd callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .registers 27
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkMisc"    # Landroid/net/NetworkMisc;

    move-object/from16 v14, p0

    .line 4728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4730
    new-instance v0, Landroid/net/LinkProperties;

    move-object/from16 v15, p3

    invoke-direct {v0, v15}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    move-object v13, v0

    .line 4731
    .local v13, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 4734
    new-instance v0, Landroid/net/NetworkCapabilities;

    move-object/from16 v12, p4

    invoke-direct {v0, v12}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v11, v0

    .line 4735
    .local v11, "nc":Landroid/net/NetworkCapabilities;
    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v4, Landroid/net/Network;

    .line 4736
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    move-result v1

    invoke-direct {v4, v1}, Landroid/net/Network;-><init>(I)V

    new-instance v5, Landroid/net/NetworkInfo;

    move-object/from16 v10, p2

    invoke-direct {v5, v10}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v9, v14, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v8, v14, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v7, Landroid/net/NetworkMisc;

    move-object/from16 v6, p6

    invoke-direct {v7, v6}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    iget-object v2, v14, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move-object v6, v13

    move-object/from16 v17, v7

    move-object v7, v11

    move-object/from16 v18, v8

    move/from16 v8, p5

    move-object/from16 v10, v18

    move-object v15, v11

    move-object/from16 v11, v17

    .end local v11    # "nc":Landroid/net/NetworkCapabilities;
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v12, v16

    move-object/from16 v16, v13

    move-object v13, v14

    .line 4736
    .end local v13    # "lp":Landroid/net/LinkProperties;
    .local v16, "lp":Landroid/net/LinkProperties;
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    .line 4739
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v14, v1, v15}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4740
    monitor-enter p0

    .line 4741
    :try_start_5d
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v2, v14, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 4742
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_a8

    .line 4743
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 4744
    .local v0, "extraInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 4745
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    :cond_75
    move-object v2, v0

    .line 4746
    .local v2, "name":Ljava/lang/String;
    :goto_76
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {v14, v3, v4, v2}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V

    .line 4747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4748
    iget-object v3, v14, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, v14, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4749
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    return v3

    .line 4742
    .end local v0    # "extraInfo":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .registers 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .line 4632
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4633
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    .line 4634
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4635
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 7
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 4625
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    .line 4626
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4627
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4626
    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4628
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 4546
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4547
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4548
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4547
    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4549
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 5897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5898
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5899
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5900
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 5901
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public reportInetCondition(II)V
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .line 3380
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3381
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_9

    return-void

    .line 3382
    :cond_9
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v2, 0x32

    if-le p2, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 3383
    return-void
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 3387
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3388
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 3389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3390
    .local v0, "uid":I
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 3391
    .local v1, "connectivityInfo":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3392
    const/16 v4, 0x24

    invoke-virtual {v3, v4, v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3391
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3393
    return-void
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .line 4481
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4482
    const/4 v0, 0x0

    .line 4483
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 4484
    return v1

    .line 4486
    :cond_8
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4487
    :try_start_b
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v0, v3

    .line 4488
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_24

    .line 4489
    if-eqz v0, :cond_23

    .line 4490
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100a

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4491
    const/4 v1, 0x1

    return v1

    .line 4493
    :cond_23
    return v1

    .line 4488
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .registers 13
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    .line 4426
    if-nez p1, :cond_5

    .line 4427
    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    goto :goto_7

    .line 4428
    :cond_5
    sget-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 4432
    .local v0, "type":Landroid/net/NetworkRequest$Type;
    :goto_7
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_17

    .line 4433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 4434
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    goto :goto_23

    .line 4436
    :cond_17
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v1

    .line 4437
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 4441
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 4443
    :goto_23
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 4444
    nop

    .line 4445
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4444
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 4451
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 4453
    if-ltz p3, :cond_7b

    .line 4456
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4458
    new-instance v1, Landroid/net/NetworkRequest;

    .line 4459
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {v1, p1, p5, v2, v0}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4460
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, p2, v1, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 4461
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4463
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4464
    if-lez p3, :cond_7a

    .line 4465
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, p3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4468
    :cond_7a
    return-object v1

    .line 4454
    .end local v1    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad timeout specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 14
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    .line 1522
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1523
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1524
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1529
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_17} :catch_bb

    .line 1533
    .local v1, "addr":Ljava/net/InetAddress;
    nop

    .line 1532
    nop

    .line 1535
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1537
    return v0

    .line 1540
    :cond_35
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1541
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_71

    .line 1542
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_70

    .line 1545
    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on down network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1547
    :goto_70
    return v0

    .line 1551
    :cond_71
    monitor-enter v2

    .line 1552
    :try_start_72
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 1553
    .local v3, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_b8

    .line 1555
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_82

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_82

    .line 1561
    return v0

    .line 1564
    :cond_82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1565
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1569
    .local v4, "token":J
    :try_start_8a
    monitor-enter v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_b3

    .line 1570
    :try_start_8b
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1571
    .local v6, "lp":Landroid/net/LinkProperties;
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    .line 1572
    .local v7, "netId":I
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_b0

    .line 1573
    :try_start_92
    invoke-direct {p0, v6, v1, v7, v0}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v8

    .line 1574
    .local v8, "ok":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestRouteToHostAddress ok="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_b3

    .line 1575
    nop

    .line 1577
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    return v8

    .line 1572
    .end local v6    # "lp":Landroid/net/LinkProperties;
    .end local v7    # "netId":I
    .end local v8    # "ok":Z
    :catchall_b0
    move-exception v6

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v6
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    .line 1577
    :catchall_b3
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1553
    .end local v0    # "uid":I
    .end local v3    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v4    # "token":J
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 1530
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_bb
    move-exception v1

    .line 1531
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1532
    return v0
.end method

.method protected reserveNetId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1024
    const/16 v1, 0x64

    move v2, v1

    .local v2, "i":I
    :goto_6
    const v3, 0xfbff

    if-gt v2, v3, :cond_2b

    .line 1025
    :try_start_b
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1026
    .local v4, "netId":I
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    if-le v5, v3, :cond_17

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1028
    :cond_17
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1029
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1030
    monitor-exit v0

    return v4

    .line 1024
    .end local v4    # "netId":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1033
    .end local v2    # "i":I
    :catchall_29
    move-exception v1

    goto :goto_34

    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_29

    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_29

    throw v1
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 1734
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1735
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1736
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 2841
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2842
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2843
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 2842
    const/16 v4, 0x1c

    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2844
    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 4156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4159
    .local v0, "ident":J
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/miui/enterprise/RestrictionsHelper;->handleAirplaneChange(Landroid/content/Context;Z)Z

    move-result p1

    .line 4161
    :try_start_d
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4162
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4163
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4164
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4165
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_35

    .line 4167
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4168
    nop

    .line 4169
    return-void

    .line 4167
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z

    .line 3994
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3995
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3997
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3999
    :try_start_9
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 4000
    monitor-exit v0

    return v2

    .line 4003
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4004
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_39

    .line 4005
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has no Vpn configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    monitor-exit v0

    return v2

    .line 4008
    :cond_39
    invoke-virtual {v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_41

    .line 4009
    monitor-exit v0

    return v2

    .line 4011
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 4012
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    .line 4013
    monitor-exit v0

    return v2

    .line 4015
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_4d
    monitor-exit v0

    .line 4016
    const/4 v0, 0x1

    return v0

    .line 4015
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 2848
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2849
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2850
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 11
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    .line 3485
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3487
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3488
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-ne p1, v1, :cond_c

    monitor-exit v0

    return-void

    .line 3489
    :cond_c
    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    monitor-exit v0

    return-void

    .line 3490
    :cond_18
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    monitor-exit v0

    return-void

    .line 3492
    :cond_26
    const-string v1, ""

    .line 3493
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3494
    .local v2, "port":I
    const-string v3, ""

    .line 3495
    .local v3, "exclList":Ljava/lang/String;
    const-string v4, ""

    .line 3496
    .local v4, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_97

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3497
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 3498
    :cond_45
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_65

    .line 3500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3501
    monitor-exit v0

    return-void

    .line 3503
    :cond_65
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3504
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 3505
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    move v2, v5

    .line 3506
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3507
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 3508
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_9a

    .line 3511
    :cond_97
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3513
    :cond_9a
    :goto_9a
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3514
    .local v5, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_a4
    .catchall {:try_start_6 .. :try_end_a4} :catchall_cd

    .line 3516
    .local v6, "token":J
    :try_start_a4
    const-string v8, "global_http_proxy_host"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3517
    const-string v8, "global_http_proxy_port"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3518
    const-string v8, "global_http_proxy_exclusion_list"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3520
    const-string v8, "global_proxy_pac_url"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b8
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_c8

    .line 3522
    :try_start_b8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3523
    nop

    .line 3525
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v8, :cond_c3

    .line 3526
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    move-object p1, v8

    .line 3528
    :cond_c3
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3529
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    monitor-exit v0

    .line 3530
    return-void

    .line 3522
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "exclList":Ljava/lang/String;
    .restart local v4    # "pacFileUrl":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_c8
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 3529
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :catchall_cd
    move-exception v1

    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_b8 .. :try_end_cf} :catchall_cd

    throw v1
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 8
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 4140
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4141
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4142
    return-void

    .line 4144
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4147
    .local v0, "ident":J
    const v2, 0xfc00

    add-int/lit8 v3, p2, 0x1

    add-int/2addr v2, v3

    .line 4148
    .local v2, "id":I
    :try_start_14
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 4150
    .end local v2    # "id":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4151
    nop

    .line 4152
    return-void

    .line 4150
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 6
    .param p1, "networks"    # [Landroid/net/Network;

    .line 5906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5908
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5909
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5910
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    .line 5911
    .local v2, "success":Z
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_28

    .line 5912
    if-eqz v2, :cond_27

    .line 5913
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$ConnectivityService$HR6p9H95BgebyI-3AFU2mC38SI0;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$HR6p9H95BgebyI-3AFU2mC38SI0;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 5915
    :cond_27
    return v2

    .line 5911
    .end local v2    # "success":Z
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public setUsbTethering(ZLjava/lang/String;)I
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "callerPkg"    # Ljava/lang/String;

    .line 3246
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3247
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3248
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    return v0

    .line 3250
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authorized"    # Z

    .line 3745
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3747
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3748
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 3749
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_13

    .line 3750
    invoke-virtual {v1, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    .line 3752
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_13
    monitor-exit v0

    .line 3753
    return-void

    .line 3752
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 2928
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2929
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$_3z0y84PR2_gdaCr6y5PLFvhcHo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$_3z0y84PR2_gdaCr6y5PLFvhcHo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 2935
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 3777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3778
    .local v0, "user":I
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 3779
    .local v1, "egress":Landroid/net/LinkProperties;
    if-eqz v1, :cond_26

    .line 3782
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3783
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3784
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 3785
    monitor-exit v2

    .line 3786
    return-void

    .line 3785
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v3

    .line 3780
    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    .registers 18
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddr"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddr"    # Ljava/lang/String;

    .line 5927
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 5928
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 5929
    invoke-direct {v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 5928
    const/16 v9, 0x1194

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 5932
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z
    .param p4, "callerPkg"    # Ljava/lang/String;

    .line 3311
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3312
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3313
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 3314
    return-void

    .line 3316
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 3317
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "slot"    # I

    .line 5936
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const v2, 0x8100c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5938
    return-void
.end method

.method public stopTethering(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "callerPkg"    # Ljava/lang/String;

    .line 3321
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3322
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 3323
    return-void
.end method

.method systemReady()V
    .registers 4

    .line 1827
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->registerNetdEventCallback()V

    .line 1829
    monitor-enter p0

    .line 1830
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1831
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    .line 1832
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1835
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_50

    .line 1837
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 1844
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1845
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1847
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 1849
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/WifiAssistant;->make(Landroid/content/Context;)V

    .line 1850
    return-void

    .line 1835
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public tether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;

    .line 3179
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3180
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3181
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 3182
    .local v0, "status":I
    return v0

    .line 3184
    .end local v0    # "status":I
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 4645
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4646
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4647
    return-void
.end method

.method public untether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;

    .line 3191
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3193
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3194
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 3195
    .local v0, "status":I
    return v0

    .line 3197
    .end local v0    # "status":I
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public updateLockdownVpn()Z
    .registers 15

    .line 3893
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    .line 3894
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    return v1

    .line 3898
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3900
    :try_start_14
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 3901
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b1

    .line 3902
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 3903
    .local v2, "profileTag":[B
    if-nez v2, :cond_33

    .line 3904
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    monitor-exit v0

    return v1

    .line 3907
    :cond_33
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 3908
    .local v5, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3909
    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 3908
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 3910
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v6, :cond_70

    .line 3911
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lockdown VPN configured invalid profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 3913
    monitor-exit v0

    return v3

    .line 3915
    :cond_70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3916
    .local v4, "user":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    move-object v13, v7

    .line 3917
    .local v13, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v13, :cond_a0

    .line 3918
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not ready yet. Skipping lockdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    monitor-exit v0

    return v1

    .line 3921
    :cond_a0
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v7, v1

    move-object v10, p0

    move-object v11, v13

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 3922
    .end local v2    # "profileTag":[B
    .end local v4    # "user":I
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v13    # "vpn":Lcom/android/server/connectivity/Vpn;
    goto :goto_b4

    .line 3923
    :cond_b1
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 3925
    :goto_b4
    monitor-exit v0

    .line 3927
    return v3

    .line 3925
    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_14 .. :try_end_b8} :catchall_b6

    throw v1
.end method

.method updateMobileDataAlwaysOn()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 971
    return-void
.end method

.method updatePrivateDnsSettings()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 977
    return-void
.end method
