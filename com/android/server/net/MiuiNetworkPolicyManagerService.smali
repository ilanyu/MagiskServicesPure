.class Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"


# static fields
.field private static final BG_MIN_BANDWIDTH:J = 0x186a0L

.field private static final CLOUD_LOW_LATENCY_APPLIST_FOR_MOBILE:Ljava/lang/String; = "cloud_block_scan_applist_for_mobile"

.field private static final CLOUD_LOW_LATENCY_WHITELIST:Ljava/lang/String; = "cloud_lowlatency_whitelist"

.field private static final CLOUD_NETWORK_PRIORITY_ENABLED:Ljava/lang/String; = "cloud_network_priority_enabled"

.field private static final CLOUD_RESTRICT_WIFI_POWERSAVE_APPLIST:Ljava/lang/String; = "cloud_block_scan_applist"

.field private static final DEBUG:Z = false

.field private static final DISABLE_LIMIT_TIMEOUT:I = 0x1388

.field private static final DISABLE_POWER_SAVE_TIMEOUT:I = 0x1388

.field private static final ENABLE_LIMIT_TIMEOUT:I = 0x61a8

.field private static final FG_MAX_BANDWIDTH:J = 0x7a120L

.field private static final HISTORY_BANDWIDTH_MIN:J = 0x30d40L

.field private static final HISTORY_BANDWIDTH_SIZE:I = 0x14

.field private static final IS_QCOM:Z

.field private static final LATENCY_ACTION_CHANGE_LEVEL:Ljava/lang/String; = "com.android.phone.intent.action.CHANGE_LEVEL"

.field private static final LATENCY_DEFAULT:I = -0x1

.field private static final LATENCY_KEY_LEVEL_DL:Ljava/lang/String; = "Level_DL"

.field private static final LATENCY_KEY_LEVEL_UL:Ljava/lang/String; = "Level_UL"

.field private static final LATENCY_KEY_RAT_TYPE:Ljava/lang/String; = "Rat_type"

.field private static final LATENCY_OFF:I = 0x0

.field private static final LATENCY_ON:I = 0x1

.field private static final LATENCY_VALUE_L1:J = 0x1L

.field private static final LATENCY_VALUE_L2:J = 0x2L

.field private static final LATENCY_VALUE_L3:J = 0x3L

.field private static final LATENCY_VALUE_L4:J = 0x4L

.field private static final LATENCY_VALUE_WLAN:J = 0x1L

.field private static final LATENCY_VALUE_WWAN:J = 0x0L

.field private static final MSG_BANDWIDTH_POLL:I = 0x6

.field private static final MSG_DISABLE_LIMIT_TIMEOUT:I = 0x5

.field private static final MSG_DISABLE_POWER_SAVE_TIMEOUT:I = 0x8

.field private static final MSG_ENABLE_LIMIT_TIMEOUT:I = 0x4

.field private static final MSG_MOBILE_LATENCY_CHANGED:I = 0x9

.field private static final MSG_SET_RPS_STATS:I = 0xa

.field private static final MSG_SET_TRAFFIC_POLICY:I = 0x7

.field private static final MSG_UID_DATA_ACTIVITY_CHANGED:I = 0x3

.field public static final MSG_UID_STATE_CHANGED:I = 0x1

.field public static final MSG_UID_STATE_GONED:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_CLOSED:I = 0xff

.field private static final NETWORK_PRIORITY_MODE_FAST:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_NORMAL:I = 0x1

.field private static final NETWORK_PRIORITY_MODE_WMM:I = 0x0

.field private static final NETWORK_PRIORITY_WHITELIST:Ljava/lang/String; = "cloud_network_priority_whitelist"

.field private static final NOTIFACATION_RECEIVER_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final POLL_BANDWIDTH_INTERVAL_SECS:I = 0x3

.field private static final POWER_SAVE_IDLETIMER_LABEL:Ljava/lang/String; = "ps"

.field private static final POWER_SAVE_IDLETIMER_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicy"

.field private static final WMM_AC_BE:I = 0x0

.field private static final WMM_AC_VI:I = 0x1

.field private static final WMM_AC_VO:I = 0x2

.field private static mMobileLatencyState:I

.field private static sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# instance fields
.field private mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHistoryBandWidth:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mLastRxBytes:J

.field private mLimitEnabled:Z

.field private mLowLatencyApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowLatencyAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileLowLatencyApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileLowLatencyAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileNwReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedRestrictPowerSaveApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

.field private mNetworkPriorityMode:I

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerSaveEnabled:Z

.field private mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

.field private mRpsEnabled:Z

.field private mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

.field private mTrafficPolicyMode:I

.field private mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUnRestrictApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnRestrictAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 162
    const/4 v0, -0x1

    sput v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    .line 164
    const-string/jumbo v0, "qcom"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->IS_QCOM:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z

    .line 135
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 163
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 532
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 777
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 860
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .line 871
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 980
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileNwReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 181
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MiuiNetworkPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    .line 185
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    .line 186
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    .line 187
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    .line 188
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    .line 189
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    .line 190
    iput v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    .line 191
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    .line 192
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isQosFeatureAllowed()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 193
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    .line 195
    :cond_95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityCloudControl()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getNeedRestrictPowerSaveApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateUidState(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->removeUidState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveForUidDataActivityChanged(IZ)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->calculateBandWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatency()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableRps(Z)V

    return-void
.end method

.method static synthetic access$3300()Z
    .registers 1

    .line 67
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getMobileLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$3900()I
    .registers 1

    .line 67
    sget v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method private addHistoryBandWidth(J)V
    .registers 5
    .param p1, "bwBps"    # J

    .line 378
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 379
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 381
    :cond_f
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method private calculateBandWidth()V
    .registers 9

    .line 357
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 358
    .local v0, "rxBytes":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_35

    .line 359
    :cond_12
    const-string v4, "MiuiNetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rxByte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mLastRxBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 362
    :cond_35
    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_42

    cmp-long v2, v0, v2

    if-ltz v2, :cond_42

    .line 363
    iput-wide v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 364
    return-void

    .line 366
    :cond_42
    iget-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    .line 367
    .local v2, "bwBps":J
    const-wide/32 v4, 0x30d40

    cmp-long v4, v2, v4

    if-ltz v4, :cond_53

    .line 368
    invoke-direct {p0, v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    .line 374
    :cond_53
    iput-wide v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 375
    return-void
.end method

.method private enableBandwidthPoll(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 385
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 387
    if-eqz p1, :cond_18

    .line 388
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    const-wide/32 v0, 0x30d40

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    .line 391
    :cond_18
    return-void
.end method

.method private enableMobileLowLatency(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .line 1015
    const-string v0, "MiuiNetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMobileLowLatency enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMobileLatencyState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move v0, p1

    .line 1018
    .local v0, "mobileState":I
    sget v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    if-eq v1, v0, :cond_59

    .line 1019
    sput v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    .line 1020
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone.intent.action.CHANGE_LEVEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v2, "Rat_type"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1024
    const-string v2, "Level_UL"

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x4

    if-eqz p1, :cond_47

    move-wide v7, v5

    goto :goto_48

    :cond_47
    move-wide v7, v3

    :goto_48
    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1025
    const-string v2, "Level_DL"

    if-eqz p1, :cond_51

    move-wide v3, v5

    nop

    :cond_51
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1026
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1028
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_59
    return-void
.end method

.method private enableNetworkPriority(I)V
    .registers 12
    .param p1, "mode"    # I

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "isNeedUpdate":Z
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v1

    .line 475
    .local v1, "wasWmmerEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v2

    .line 476
    .local v2, "isWmmerEnabled":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_15

    if-nez v2, :cond_15

    .line 478
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v4}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    goto :goto_1f

    .line 479
    :cond_15
    if-nez v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 481
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v3}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    .line 482
    const/4 v0, 0x1

    .line 485
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v5

    .line 486
    .local v5, "wasLimitterEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v6

    .line 487
    .local v6, "isLimitterEnabled":Z
    if-eqz v5, :cond_3d

    if-nez v6, :cond_3d

    .line 488
    iget-object v7, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    iget-object v7, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v7, v4}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    goto :goto_47

    .line 490
    :cond_3d
    if-nez v5, :cond_47

    if-eqz v6, :cond_47

    .line 491
    iget-object v7, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v7, v3}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    .line 492
    const/4 v0, 0x1

    .line 494
    :cond_47
    :goto_47
    if-ne p1, v3, :cond_4d

    .line 495
    invoke-direct {p0, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    goto :goto_50

    .line 497
    :cond_4d
    invoke-direct {p0, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    .line 499
    :goto_50
    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    .line 500
    if-eqz v0, :cond_57

    .line 501
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRuleGlobal()V

    .line 503
    :cond_57
    return-void
.end method

.method private enablePowerSave(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 338
    const-string v0, "MiuiNetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable ps, mPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    if-eq v0, p1, :cond_2b

    .line 340
    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    .line 341
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-virtual {v0, p1}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->enablePowerSave(Z)V

    .line 343
    :cond_2b
    return-void
.end method

.method private enableRps(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 1053
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->updateIface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "iface":Ljava/lang/String;
    const-string v1, "MiuiNetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRps interface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-eqz v0, :cond_2f

    .line 1056
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/MiuiNetworkManagementService;->enableRps(Ljava/lang/String;Z)Z

    .line 1058
    :cond_2f
    return-void
.end method

.method public static get()Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .registers 2

    .line 172
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    if-eqz v0, :cond_7

    .line 173
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0

    .line 175
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MiuiNetworkPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 682
    nop

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_lowlatency_whitelist"

    .line 682
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "whiteString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 685
    .local v1, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 686
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 688
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 689
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 693
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private getMobileLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 964
    nop

    .line 965
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_block_scan_applist_for_mobile"

    .line 964
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "appString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 968
    .local v1, "appList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 969
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 971
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 972
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 976
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private getNeedRestrictPowerSaveApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 633
    nop

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_block_scan_applist"

    .line 633
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "appString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 636
    .local v1, "appList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 637
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 639
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 640
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 644
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 584
    nop

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_network_priority_whitelist"

    .line 584
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "whiteString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 587
    .local v1, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 588
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 590
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 591
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 595
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private getWmmForUidState(II)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 250
    invoke-direct {p0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateWmmed(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 251
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 252
    const/4 v0, 0x2

    return v0

    .line 254
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private isLimitterEnabled()Z
    .registers 2

    .line 427
    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isLimitterEnabled(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 431
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    nop

    :cond_9
    :goto_9
    return v0
.end method

.method private static isMobileLatencyAllowed()Z
    .registers 3

    .line 1061
    sget-boolean v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->IS_QCOM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1062
    return v1

    .line 1065
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    .line 1066
    return v1

    .line 1068
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileLatencyEnabledForUid(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 1003
    const/4 v0, 0x2

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    .line 1005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1003
    :goto_18
    return v0
.end method

.method private isPowerSaveRestrictedForUid(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 306
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private static isQosFeatureAllowed()Z
    .registers 2

    .line 1076
    const-string v0, "cepheus"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "raphael"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "davinci"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1077
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "crux"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "tucana"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1078
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 1076
    :goto_38
    return v0
.end method

.method private isStateUnRestrictedForUid(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 264
    if-ltz p2, :cond_17

    const/4 v0, 0x3

    if-le p2, v0, :cond_15

    const/16 v0, 0x12

    if-ge p2, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 264
    :goto_18
    return v0
.end method

.method private isStateWmmed(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 260
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isUidValidForRules(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 270
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_11

    .line 271
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    .line 275
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method private isWmmerEnabled()Z
    .registers 2

    .line 436
    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isWmmerEnabled(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 440
    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static make(Landroid/content/Context;)Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 168
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0
.end method

.method private networkPriorityCloudControl()V
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_network_priority_enabled"

    .line 394
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "cvalue":Ljava/lang/String;
    const-string/jumbo v1, "mediatek"

    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v0, "off"

    .line 398
    :cond_20
    :try_start_20
    const-string/jumbo v1, "sys.net.support.netprio"

    const-string/jumbo v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "false"

    goto :goto_32

    :cond_2f
    const-string/jumbo v2, "true"

    :goto_32
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_36

    .line 401
    goto :goto_3e

    .line 399
    :catch_36
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiuiNetworkPolicy"

    const-string v3, "Failed to set network priority support config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private networkPriorityMode()I
    .registers 7

    .line 405
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_network_priority_enabled"

    .line 405
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "cvalue":Ljava/lang/String;
    const-string/jumbo v1, "mediatek"

    const-string/jumbo v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v0, "off"

    .line 408
    :cond_20
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 409
    .local v1, "isCloudUnForceClosed":Z
    if-eqz v1, :cond_55

    .line 410
    iget v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    if-eqz v3, :cond_32

    .line 411
    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return v2

    .line 413
    :cond_32
    const/4 v3, 0x0

    .line 414
    .local v3, "def":I
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 415
    const/4 v3, 0x1

    goto :goto_47

    .line 416
    :cond_3e
    const-string v4, "fast"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 417
    const/4 v3, 0x2

    .line 419
    :cond_47
    :goto_47
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_network_priority_enabled"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 421
    .local v2, "uvalue":I
    return v2

    .line 423
    .end local v2    # "uvalue":I
    .end local v3    # "def":I
    :cond_55
    const/16 v2, 0xff

    return v2
.end method

.method private registerLowLatencyAppsChangedObserver()V
    .registers 6

    .line 697
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 720
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cloud_lowlatency_whitelist"

    .line 721
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 720
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 723
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method

.method private registerMiuiOptimizationChangedObserver()V
    .registers 6

    .line 732
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 751
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->MIUI_OPTIMIZATION:Ljava/lang/String;

    .line 752
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 751
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 753
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    return-void
.end method

.method private registerMobileLatencyAppsChangedObserver()V
    .registers 6

    .line 930
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 952
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cloud_block_scan_applist_for_mobile"

    .line 953
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 952
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 955
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method private registerNetworkProrityModeChangedObserver()V
    .registers 6

    .line 506
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 520
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cloud_network_priority_enabled"

    .line 521
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 520
    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 522
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_network_priority_enabled"

    .line 523
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 524
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private registerRestrictPowerSaveAppsChangedObserver()V
    .registers 6

    .line 599
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 621
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cloud_block_scan_applist"

    .line 622
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 621
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 624
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 630
    return-void
.end method

.method private registerUnRestirctAppsChangedObserver()V
    .registers 6

    .line 648
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 670
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cloud_network_priority_whitelist"

    .line 671
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 670
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 673
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method private removeUidState(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 568
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 569
    .local v0, "index":I
    if-ltz v0, :cond_23

    .line 570
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 571
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 572
    const/16 v2, 0x12

    if-eq v1, v2, :cond_23

    .line 573
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 575
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 576
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyForUidStateChange(III)V

    .line 581
    .end local v1    # "oldUidState":I
    :cond_23
    return-void
.end method

.method private updateLimit(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .line 762
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    if-eq v0, p1, :cond_41

    .line 763
    const-wide/16 v0, 0x0

    .line 764
    .local v0, "bwBps":J
    if-eqz p1, :cond_3a

    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 765
    const-wide/32 v0, 0x30d40

    .line 766
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-lez v2, :cond_24

    .line 767
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 769
    :cond_24
    const-wide/16 v2, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/32 v4, 0x7a120

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 770
    .local v2, "fgBw":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x186a0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 772
    .end local v2    # "fgBw":J
    :cond_3a
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->setLimit(ZJ)Z

    .line 773
    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    .line 775
    .end local v0    # "bwBps":J
    :cond_41
    return-void
.end method

.method private updateLimitterForUidState(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 286
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->whiteListUid(IZ)Z

    .line 289
    :cond_f
    return-void
.end method

.method private updateMobileLatency()V
    .registers 7

    .line 1031
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1032
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_32

    .line 1033
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1034
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v4, 0x12

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1036
    .local v3, "state":I
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    .line 1037
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1038
    invoke-direct {p0, v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyStateForUidState(II)V

    .line 1032
    .end local v2    # "uid":I
    .end local v3    # "state":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1041
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method private updateMobileLatencyForUidStateChange(III)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 1045
    invoke-static {p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1046
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v0

    .line 1047
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 1048
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyStateForUidState(II)V

    .line 1050
    :cond_14
    return-void
.end method

.method private updateMobileLatencyStateForUidState(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 1009
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v0

    .line 1011
    .local v0, "enabled":Z
    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableMobileLowLatency(Z)V

    .line 1012
    return-void
.end method

.method private updatePowerSaveForUidDataActivityChanged(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .line 316
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 317
    .local v0, "state":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v1

    .line 318
    .local v1, "restrict":Z
    const-string v2, "MiuiNetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update ps for data activity, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", restrict = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz p2, :cond_52

    if-eqz v1, :cond_52

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_52

    .line 321
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    goto :goto_5c

    .line 322
    :cond_52
    if-nez p2, :cond_5c

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    if-nez v2, :cond_5c

    .line 323
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    .line 325
    :cond_5c
    :goto_5c
    return-void
.end method

.method private updatePowerSaveStateForUidState(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v6

    .line 332
    .local v6, "restrict":Z
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v3, "ps"

    const/4 v4, 0x2

    move v2, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiNetworkManagementService;->listenUidDataActivity(IILjava/lang/String;IZ)Z

    .line 334
    xor-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    .line 335
    return-void
.end method

.method private updateRuleGlobal()V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 348
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 349
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 350
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v4, 0x12

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 352
    .local v3, "state":I
    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 348
    .end local v2    # "uid":I
    .end local v3    # "state":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 354
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method private updateRulesForUidStateChange(III)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 292
    invoke-static {p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 294
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateWmmForUidState(II)V

    .line 296
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_20

    .line 297
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimitterForUidState(II)V

    .line 299
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_2d

    .line 300
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveStateForUidState(II)V

    .line 303
    :cond_2d
    return-void
.end method

.method private updateUidState(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 555
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 556
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_1b

    .line 558
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 559
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 560
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 561
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyForUidStateChange(III)V

    .line 564
    :cond_1b
    return-void
.end method

.method private updateWmmForUidState(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 279
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->updateWmm(II)Z

    .line 283
    :cond_f
    return-void
.end method

.method private validatePriorityMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 444
    const/4 v0, 0x1

    if-eqz p1, :cond_f

    if-eq p1, v0, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/16 v1, 0xff

    if-ne p1, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    nop

    :cond_f
    :goto_f
    return v0
.end method


# virtual methods
.method public setNetworkTrafficPolicy(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->validatePriorityMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 452
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    const/4 v0, 0x1

    return v0

    .line 456
    :cond_1a
    return v1
.end method

.method public setRpsStatus(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .line 460
    const-string v0, "MiuiNetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRpsStatus/in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z

    if-eq v0, p1, :cond_40

    .line 462
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    const-string v0, "MiuiNetworkPolicy"

    const-string/jumbo v1, "setRpsStatus/out [ true ]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x1

    return v0

    .line 467
    :cond_40
    const-string v0, "MiuiNetworkPolicy"

    const-string/jumbo v1, "setRpsStatus/out [ false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method protected systemReady()V
    .registers 8

    .line 198
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    .line 201
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "wifiStateFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityCloudControl()V

    .line 215
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerUnRestirctAppsChangedObserver()V

    .line 217
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerLowLatencyAppsChangedObserver()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerRestrictPowerSaveAppsChangedObserver()V

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_4d

    .line 225
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMiuiOptimizationChangedObserver()V

    .line 229
    :cond_4d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-virtual {v2}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->registerUidObserver()V

    .line 238
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 240
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMobileLatencyAppsChangedObserver()V

    .line 241
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "mobileNwFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileNwReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    .end local v2    # "mobileNwFilter":Landroid/content/IntentFilter;
    :cond_89
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->systemReady(Lcom/android/server/MiuiNetworkManagementService;)V

    .line 247
    :cond_94
    return-void
.end method
