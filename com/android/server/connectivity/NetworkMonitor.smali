.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field private static final CMD_EVALUATE_PRIVATE_DNS:I = 0x8200f

.field private static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x8200d

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x8200e

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NO_UID:I = 0x0

.field private static final NUM_VALIDATION_LOG_LINES:I = 0x14

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field private final mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private final mCaptivePortalHttpUrl:Ljava/net/URL;

.field private final mCaptivePortalHttpsUrl:Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mCaptivePortalUserAgent:Ljava/lang/String;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field protected mIsCaptivePortalCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetwork:Landroid/net/Network;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mNextFallbackUrlIndex:I

.field private mPrivateDnsProviderHostname:Ljava/lang/String;

.field private mReevaluateToken:I

.field private final mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private mValidations:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .line 305
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V

    .line 307
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .param p6, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 236
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 244
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 276
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    .line 279
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 281
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 283
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 285
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 286
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 287
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 288
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 289
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 290
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 292
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 294
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 296
    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 299
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 301
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setDbg(Z)V

    .line 320
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 321
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 322
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 323
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    .line 324
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 325
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 327
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 328
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 329
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 331
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getIsCaptivePortalCheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 340
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getUseHttpsValidation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 341
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 343
    invoke-static {p6, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 344
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 345
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 347
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 348
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 96
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2308(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 96
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$2904(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 897
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 905
    const-string v0, "captive_portal_http_url"

    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    .line 906
    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalServerHttpsUrl()Ljava/lang/String;
    .registers 6

    .line 891
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_https_url"

    const-string v4, "https://www.google.com/generate_204"

    .line 892
    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 891
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .registers 5

    .line 957
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_user_agent"

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidationRequired()Z
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method public static isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p0, "dfltNetCap"    # Landroid/net/NetworkCapabilities;
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 249
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private logNetworkEvent(I)V
    .registers 6
    .param p1, "evtype"    # I

    .line 1360
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1361
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p1}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1362
    return-void
.end method

.method private logValidationProbe(JII)V
    .registers 10
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    .line 1389
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1390
    .local v0, "transports":[I
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 1391
    .local v1, "isFirstValidation":Z
    new-instance v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v2}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    .line 1392
    .local v2, "ev":Landroid/net/metrics/ValidationProbeEvent;
    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 1393
    iput p4, v2, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 1394
    iput-wide p1, v2, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 1395
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1396
    return-void
.end method

.method private makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .registers 5

    .line 941
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_fallback_probe_specs"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "settingsValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 945
    return-object v0

    .line 948
    :cond_12
    invoke-static {v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v2

    .line 949
    .end local v1    # "settingsValue":Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback probe specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    return-object v0
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .registers 11

    .line 911
    const/4 v0, 0x0

    :try_start_1
    const-string v1, ","

    .line 912
    .local v1, "separator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v4, "captive_portal_fallback_url"

    const-string v5, "http://www.google.com/gen_204"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, "firstUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "joinedUrls":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_20
    if-ge v7, v6, :cond_31

    aget-object v8, v5, v7

    .line 922
    .local v8, "s":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 923
    .local v9, "u":Ljava/net/URL;
    if-nez v9, :cond_2b

    .line 924
    goto :goto_2e

    .line 926
    :cond_2b
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "u":Ljava/net/URL;
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 928
    :cond_31
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 929
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v6, "could not create any url from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/net/URL;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/URL;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_54

    return-object v5

    .line 932
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "firstUrl":Ljava/lang/String;
    .end local v3    # "joinedUrls":Ljava/lang/String;
    .end local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catch_54
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback URLs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    new-array v0, v0, [Ljava/net/URL;

    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 1257
    if-eqz p1, :cond_1d

    .line 1259
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    .line 1260
    :catch_8
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1264
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeLogEvaluationResult(I)V
    .registers 8
    .param p1, "evtype"    # I

    .line 1381
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1382
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1383
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1384
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->reset()V

    .line 1386
    .end local v0    # "transports":[I
    :cond_27
    return-void
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4
    .param p1, "s"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "r"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 1365
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz v0, :cond_e

    .line 1366
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_b

    .line 1367
    const/16 v0, 0x8

    return v0

    .line 1369
    :cond_b
    const/16 v0, 0xa

    return v0

    .line 1372
    :cond_e
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_15

    .line 1373
    const/16 v0, 0x9

    return v0

    .line 1375
    :cond_15
    const/16 v0, 0xb

    return v0
.end method

.method private nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 972
    const/4 v0, 0x0

    return-object v0

    .line 975
    :cond_a
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 976
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .registers 4

    .line 962
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 963
    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_7
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 966
    .local v0, "idx":I
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 967
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    const v2, 0x82002

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    return-void
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 1053
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "host":Ljava/lang/String;
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    .line 1055
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    return-object v1
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .registers 13
    .param p1, "host"    # Ljava/lang/String;

    .line 1060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1061
    return-void

    .line 1064
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/net/util/Stopwatch;

    invoke-direct {v2}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v2

    .line 1069
    .local v2, "watch":Landroid/net/util/Stopwatch;
    const/4 v3, 0x1

    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 1070
    .local v4, "addresses":[Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1071
    .local v5, "buffer":Ljava/lang/StringBuffer;
    array-length v6, v4

    move v7, v0

    :goto_23
    if-ge v7, v6, :cond_36

    aget-object v8, v4, v7

    .line 1072
    .local v8, "address":Ljava/net/InetAddress;
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    .end local v8    # "address":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1074
    :cond_36
    const/4 v6, 0x1

    .line 1075
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4c
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_4c} :catch_4e

    .end local v4    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    move-object v4, v7

    .line 1079
    .local v4, "connectInfo":Ljava/lang/String;
    goto :goto_52

    .line 1076
    .end local v4    # "connectInfo":Ljava/lang/String;
    .end local v6    # "result":I
    :catch_4e
    move-exception v4

    .line 1077
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v6, 0x0

    .line 1078
    .restart local v6    # "result":I
    const-string v4, "FAIL"

    .line 1080
    .local v4, "connectInfo":Ljava/lang/String;
    :goto_52
    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v7

    .line 1081
    .local v7, "latency":J
    const-string v5, "%dms %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1082
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v0

    aput-object v4, v9, v3

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1081
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0, v7, v8, v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1084
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .registers 14
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getWifiScansAlwaysAvailableDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1277
    return-void

    .line 1280
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v0, :cond_c

    .line 1281
    return-void

    .line 1284
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v0, "latencyBroadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_e2

    .line 1340
    return-void

    .line 1288
    :pswitch_1f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1289
    .local v1, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_3b

    .line 1297
    const-string v2, "extra_ssid"

    .line 1298
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    const-string v2, "extra_bssid"

    .line 1300
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_b4

    .line 1303
    :cond_3b
    return-void

    .line 1307
    .end local v1    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_3c
    const-string v1, "extra_network_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1308
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1307
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1310
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v1, :cond_50

    return-void

    .line 1311
    :cond_50
    const/4 v2, 0x0

    .line 1312
    .local v2, "numRegisteredCellInfo":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 1313
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1314
    add-int/lit8 v2, v2, 0x1

    .line 1315
    const/4 v5, 0x1

    if-le v2, v5, :cond_6d

    .line 1318
    return-void

    .line 1320
    :cond_6d
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_7e

    .line 1321
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v5

    .line 1322
    .local v5, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1323
    .end local v5    # "cellId":Landroid/telephony/CellIdentityCdma;
    goto :goto_b2

    :cond_7e
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_8f

    .line 1324
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 1325
    .local v5, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1326
    .end local v5    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_b2

    :cond_8f
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_a0

    .line 1327
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 1328
    .local v5, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1329
    .end local v5    # "cellId":Landroid/telephony/CellIdentityLte;
    goto :goto_b2

    :cond_a0
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_b1

    .line 1330
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 1331
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1332
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_b2

    .line 1334
    :cond_b1
    return-void

    .line 1337
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b2
    :goto_b2
    goto :goto_55

    .line 1338
    :cond_b3
    nop

    .line 1342
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v2    # "numRegisteredCellInfo":I
    :goto_b4
    const-string v1, "extra_connectivity_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1343
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1342
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    const-string v1, "extra_response_received"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1346
    const-string v1, "extra_request_timestamp_ms"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1349
    if-eqz p1, :cond_d7

    .line 1350
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1352
    const-string v1, "extra_response_timestamp_ms"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1355
    :cond_d7
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1357
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_1f
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 14
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrl"    # Ljava/net/URL;
    .param p3, "httpUrl"    # Ljava/net/URL;

    .line 1176
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1209
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1210
    .local v1, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v9

    .line 1213
    .local v2, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1214
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1215
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_27} :catch_85

    .line 1219
    nop

    .line 1221
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1222
    .local v3, "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1225
    .local v4, "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1226
    return-object v4

    .line 1229
    :cond_37
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-nez v5, :cond_84

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_84

    .line 1234
    :cond_44
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v5

    .line 1235
    .local v5, "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v6

    goto :goto_53

    :cond_4f
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v6

    .line 1236
    .local v6, "fallbackUrl":Ljava/net/URL;
    :goto_53
    if-eqz v6, :cond_61

    .line 1237
    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    .line 1238
    .local v7, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1239
    return-object v7

    .line 1244
    .end local v7    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_61
    :try_start_61
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1245
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1246
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    return-object v7

    .line 1248
    :cond_73
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1249
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_7a} :catch_7b

    return-object v7

    .line 1250
    :catch_7b
    move-exception v7

    .line 1251
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v8, "Error: http or https probe wait interrupted!"

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1252
    sget-object v8, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v8

    .line 1230
    .end local v5    # "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .end local v6    # "fallbackUrl":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_84
    :goto_84
    return-object v3

    .line 1216
    .end local v3    # "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_85
    move-exception v3

    .line 1217
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1218
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "probeType"    # I
    .param p2, "url"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .line 367
    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "probeName":Ljava/lang/String;
    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2

    .line 381
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_9
    return-object v0
.end method


# virtual methods
.method public forceReevaluation(I)V
    .registers 4
    .param p1, "responsibleUid"    # I

    .line 351
    const v0, 0x82008

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 352
    return-void
.end method

.method public getIsCaptivePortalCheckEnabled()Z
    .registers 5

    .line 871
    const-string v0, "captive_portal_mode"

    .line 872
    .local v0, "symbol":Ljava/lang/String;
    const/4 v1, 0x1

    .line 873
    .local v1, "defaultValue":I
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 874
    .local v2, "mode":I
    if-eqz v2, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    return v3
.end method

.method public getUseHttpsValidation()Z
    .registers 5

    .line 880
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_use_https"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    return v1
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScansAlwaysAvailableDisabled()Z
    .registers 5

    .line 884
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v3, 0x1

    nop

    :cond_10
    return v3
.end method

.method protected isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 981
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v0, :cond_e

    .line 982
    const-string v0, "Validation disabled."

    invoke-direct {v7, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 983
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 986
    :cond_e
    const/4 v0, 0x0

    .line 987
    .local v0, "pacUrl":Ljava/net/URL;
    iget-object v8, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 988
    .local v8, "httpsUrl":Ljava/net/URL;
    iget-object v9, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1007
    .local v9, "httpUrl":Ljava/net/URL;
    iget-object v1, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v10

    .line 1008
    .local v10, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v10, :cond_3a

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1009
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1010
    if-nez v0, :cond_3a

    .line 1011
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v1

    .line 1015
    :cond_3a
    move-object v11, v0

    .end local v0    # "pacUrl":Ljava/net/URL;
    .local v11, "pacUrl":Ljava/net/URL;
    if-nez v11, :cond_44

    if-eqz v9, :cond_41

    if-nez v8, :cond_44

    .line 1016
    :cond_41
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1019
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1022
    .local v12, "startTime":J
    if-eqz v11, :cond_52

    .line 1023
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v7, v0, v11, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1036
    .local v14, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_50
    :goto_50
    move-object v14, v0

    goto :goto_7b

    .line 1024
    .end local v14    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_52
    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v0, :cond_5b

    .line 1025
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_50

    .line 1027
    :cond_5b
    const/4 v0, 0x1

    invoke-direct {v7, v10, v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1029
    .local v0, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v1

    if-nez v1, :cond_50

    .line 1030
    new-instance v1, Landroid/net/captiveportal/CaptivePortalProbeResult;

    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 1031
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitorInjector;->sendHttpProbe(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/util/LocalLog;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(I)V

    move-object v0, v1

    goto :goto_50

    .line 1036
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .restart local v14    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_7b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1038
    .local v15, "endTime":J
    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v14}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    .line 1038
    move-object v0, v7

    move-wide v3, v12

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1042
    return-object v14
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 3
    .param p1, "newCfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 356
    const v0, 0x8200d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 359
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 23
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1093
    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 1094
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v6, 0x257

    .line 1095
    .local v6, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1096
    .local v7, "redirectUrl":Ljava/lang/String;
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v8

    .line 1097
    .local v8, "probeTimer":Landroid/net/util/Stopwatch;
    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v9, v0

    .line 1099
    .local v9, "oldTag":I
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 1100
    const/4 v0, 0x0

    const/4 v10, 0x3

    if-ne v3, v10, :cond_2b

    const/4 v11, 0x1

    goto :goto_2c

    :cond_2b
    move v11, v0

    :goto_2c
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1101
    const/16 v11, 0x2710

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1102
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1103
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1104
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3c} :catch_104
    .catchall {:try_start_1c .. :try_end_3c} :catchall_100

    if-eqz v0, :cond_50

    .line 1105
    :try_start_3e
    const-string v0, "User-Agent"

    iget-object v11, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-virtual {v5, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_4b
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_50

    .line 1158
    :catchall_46
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_144

    .line 1152
    :catch_4b
    move-exception v0

    move-object/from16 v17, v8

    goto/16 :goto_107

    .line 1108
    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, "requestHeader":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1113
    .local v11, "requestTimestamp":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move v6, v13

    .line 1114
    const-string/jumbo v13, "location"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_68} :catch_104
    .catchall {:try_start_50 .. :try_end_68} :catchall_100

    move-object v7, v13

    .line 1117
    :try_start_69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1119
    .local v13, "responseTimestamp":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_78} :catch_fa
    .catchall {:try_start_69 .. :try_end_78} :catchall_f6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    sub-long v7, v13, v11

    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v17, "probeTimer":Landroid/net/util/Stopwatch;
    .local v18, "redirectUrl":Ljava/lang/String;
    :try_start_7e
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ret="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " request="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1119
    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1129
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_e2

    .line 1130
    const/4 v7, 0x3

    if-ne v3, v7, :cond_b4

    .line 1131
    const-string v7, "PAC fetch 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1133
    const/16 v6, 0xcc

    goto :goto_e2

    .line 1134
    :cond_b4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, 0x0

    cmp-long v7, v7, v15

    if-nez v7, :cond_c6

    .line 1139
    const-string v7, "200 response with Content-length=0 interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1141
    const/16 v6, 0xcc

    goto :goto_e2

    .line 1142
    :cond_c6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v7, v7, v15

    if-nez v7, :cond_e2

    .line 1145
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_e2

    .line 1146
    const-string v7, "Empty 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_e0} :catch_f2
    .catchall {:try_start_7e .. :try_end_e0} :catchall_ee

    .line 1148
    const/16 v6, 0xcc

    .line 1158
    .end local v0    # "requestHeader":Ljava/lang/String;
    .end local v11    # "requestTimestamp":J
    .end local v13    # "responseTimestamp":J
    :cond_e2
    :goto_e2
    if-eqz v5, :cond_e7

    .line 1159
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1161
    :cond_e7
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1162
    nop

    .line 1163
    move-object/from16 v7, v18

    goto :goto_125

    .line 1158
    :catchall_ee
    move-exception v0

    move-object/from16 v8, v17

    goto :goto_144

    .line 1152
    :catch_f2
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_107

    .line 1158
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_f6
    move-exception v0

    move-object/from16 v18, v7

    .line 1158
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_144

    .line 1152
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_fa
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 1152
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_107

    .line 1158
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_100
    move-exception v0

    move-object/from16 v18, v7

    .line 1158
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    goto :goto_144

    .line 1152
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_104
    move-exception v0

    move-object/from16 v17, v8

    .line 1153
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_107
    :try_start_107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Probe failed with exception "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v3, v2, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_107 .. :try_end_11b} :catchall_13f

    .line 1154
    nop

    .line 1158
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_121

    .line 1159
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1161
    :cond_121
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1162
    nop

    .line 1163
    :goto_125
    move-object/from16 v8, v17

    invoke-virtual {v8}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v10

    .line 1163
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    invoke-direct {v1, v10, v11, v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1165
    if-nez v4, :cond_13a

    .line 1166
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v6, v7, v10}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1168
    :cond_13a
    invoke-virtual {v4, v6, v7}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1158
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_13f
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v18, v7

    .line 1158
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    :goto_144
    if-eqz v5, :cond_149

    .line 1159
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1161
    :cond_149
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
