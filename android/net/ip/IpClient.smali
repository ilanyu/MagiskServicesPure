.class public Landroid/net/ip/IpClient;
.super Lcom/android/internal/util/StateMachine;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpClient$MessageHandlingLogger;,
        Landroid/net/ip/IpClient$RunningState;,
        Landroid/net/ip/IpClient$StartedState;,
        Landroid/net/ip/IpClient$StoppingState;,
        Landroid/net/ip/IpClient$StoppedState;,
        Landroid/net/ip/IpClient$Dependencies;,
        Landroid/net/ip/IpClient$InitialConfiguration;,
        Landroid/net/ip/IpClient$ProvisioningConfiguration;,
        Landroid/net/ip/IpClient$LoggingCallbackWrapper;,
        Landroid/net/ip/IpClient$WaitForProvisioningCallback;,
        Landroid/net/ip/IpClient$Callback;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x4

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x9

.field private static final CMD_START:I = 0x3

.field private static final CMD_STOP:I = 0x2

.field private static final CMD_TERMINATE_AFTER_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x8

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x7

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipclient"

.field public static final DUMP_ARG_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xb

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x6

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x5

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0xa

.field private static final EVENT_READ_PACKET_FILTER_COMPLETE:I = 0xc

.field private static final IMMEDIATE_FAILURE_DURATION:I = 0x0

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final MAX_PACKET_RECORDS:I = 0x64

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/util/SharedLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpClient$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

.field private final mConnectivityPacketLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mDependencies:Landroid/net/ip/IpClient$Dependencies;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private final mInterfaceName:Ljava/lang/String;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

.field private mMulticastFiltering:Z

.field private mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mRunningState:Lcom/android/internal/util/State;

.field private final mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpClient;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpClient;->sMessageClasses:[Ljava/lang/Class;

    .line 104
    sget-object v0, Landroid/net/ip/IpClient;->sMessageClasses:[Ljava/lang/Class;

    .line 105
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpClient;->sWhatToString:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpClient$Callback;

    .line 689
    new-instance v0, Landroid/net/ip/IpClient$Dependencies;

    invoke-direct {v0}, Landroid/net/ip/IpClient$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V

    .line 690
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpClient$Callback;
    .param p4, "deps"    # Landroid/net/ip/IpClient$Dependencies;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v0, Landroid/net/ip/IpClient$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StoppedState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    .line 626
    new-instance v0, Landroid/net/ip/IpClient$StoppingState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StoppingState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    .line 627
    new-instance v0, Landroid/net/ip/IpClient$StartedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StartedState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    .line 628
    new-instance v0, Landroid/net/ip/IpClient$RunningState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$RunningState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    .line 645
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 671
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    .line 707
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    .line 712
    iput-object p1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    .line 713
    iput-object p2, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mClatInterfaceName:Ljava/lang/String;

    .line 715
    new-instance v0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    .line 716
    iput-object p4, p0, Landroid/net/ip/IpClient;->mDependencies:Landroid/net/ip/IpClient$Dependencies;

    .line 717
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 718
    invoke-virtual {p4}, Landroid/net/ip/IpClient$Dependencies;->getNMS()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    .line 720
    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/util/SharedLog;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    const/16 v4, 0x1f4

    invoke-direct {v2, v4, v3}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/util/SharedLog;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    .line 722
    sget-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    .line 724
    new-instance v0, Landroid/net/ip/IpClient$MessageHandlingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;-><init>(Landroid/net/ip/IpClient$1;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    .line 728
    new-instance v0, Landroid/net/ip/InterfaceController;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {p4}, Landroid/net/ip/IpClient$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 730
    new-instance v0, Landroid/net/ip/IpClient$3;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/ip/IpClient$2;

    invoke-direct {v2, p0}, Landroid/net/ip/IpClient$2;-><init>(Landroid/net/ip/IpClient;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/net/ip/IpClient$3;-><init>(Landroid/net/ip/IpClient;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 775
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 776
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 778
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 780
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 785
    invoke-direct {p0}, Landroid/net/ip/IpClient;->configureAndStartStateMachine()V

    .line 789
    invoke-direct {p0}, Landroid/net/ip/IpClient;->startStateMachineUpdaters()V

    .line 790
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/os/INetworkManagementService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpClient$Callback;
    .param p4, "nwService"    # Landroid/os/INetworkManagementService;

    .line 698
    new-instance v0, Landroid/net/ip/IpClient$1;

    invoke-direct {v0, p4}, Landroid/net/ip/IpClient$1;-><init>(Landroid/os/INetworkManagementService;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V

    .line 702
    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$ProvisioningConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/ip/IpClient$ProvisioningConfiguration;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/IpClient;Z)Z
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/ProxyInfo;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/ip/IpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-boolean v0, p0, Landroid/net/ip/IpClient;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/net/ip/IpClient;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Landroid/net/ip/IpClient;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/dhcp/DhcpClient;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/ip/IpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleProvisioningFailure()V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/apf/ApfFilter;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/ip/IpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/ip/IpClient;I)V
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/ip/IpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/ip/IpClient$InitialConfiguration;

    .line 99
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->applyInitialConfig(Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/util/MultinetworkPolicyTracker;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/net/ip/IpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIpReachabilityMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/net/ip/IpClient;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/ip/IpReachabilityMonitor;

    .line 99
    iput-object p1, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/net/ip/IpClient;)Landroid/util/LocalLog;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/ip/IpClient;)Landroid/os/ConditionVariable;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/ip/IpClient;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-object v0, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/ip/IpClient;Landroid/net/DhcpResults;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .line 99
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/ip/IpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic access$500(Landroid/net/ip/IpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->stopAllIP()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/ip/IpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/ip/IpClient;)J
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    iget-wide v0, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$702(Landroid/net/ip/IpClient;J)J
    .registers 3
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # J

    .line 99
    iput-wide p1, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$800(Landroid/net/ip/IpClient;I)V
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/IpClient;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->recordMetric(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ip/IpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/ip/IpClient;

    .line 99
    invoke-direct {p0}, Landroid/net/ip/IpClient;->stopStateMachineUpdaters()V

    return-void
.end method

.method private static addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V
    .registers 5
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1275
    .local p1, "dnses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1276
    .local v1, "dns":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1277
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1279
    .end local v1    # "dns":Ljava/net/InetAddress;
    :cond_1f
    goto :goto_4

    .line 1280
    :cond_20
    return-void
.end method

.method static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1868
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p1}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1859
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1860
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1861
    const/4 v0, 0x1

    return v0

    .line 1863
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_16
    goto :goto_4

    .line 1864
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private applyInitialConfig(Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .registers 5
    .param p1, "config"    # Landroid/net/ip/IpClient$InitialConfiguration;

    .line 1381
    iget-object v0, p1, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$$Lambda$IpClient$GdLECAc1sQEo2Jjde3Y4ykVjDBg;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$GdLECAc1sQEo2Jjde3Y4ykVjDBg;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1382
    .local v1, "addr":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v1}, Landroid/net/ip/InterfaceController;->addAddress(Landroid/net/LinkAddress;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x0

    return v0

    .line 1383
    .end local v1    # "addr":Landroid/net/LinkAddress;
    :cond_22
    goto :goto_c

    .line 1385
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .registers 9

    .line 1203
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 1204
    .local v0, "newLp":Landroid/net/LinkProperties;
    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v1}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1217
    .local v1, "netlinkLinkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 1218
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1219
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1220
    .end local v3    # "route":Landroid/net/RouteInfo;
    goto :goto_1f

    .line 1221
    :cond_2f
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1227
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v2, :cond_71

    .line 1228
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1229
    .restart local v3    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1230
    .end local v3    # "route":Landroid/net/RouteInfo;
    goto :goto_46

    .line 1231
    :cond_56
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, v2, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1232
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, v2, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget v2, v2, Landroid/net/DhcpResults;->mtu:I

    if-eqz v2, :cond_71

    .line 1235
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget v2, v2, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1240
    :cond_71
    iget-object v2, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 1241
    iget-object v2, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1243
    :cond_7e
    iget-object v2, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_87

    .line 1244
    iget-object v2, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1248
    :cond_87
    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    if-eqz v2, :cond_c2

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    if-eqz v2, :cond_c2

    .line 1249
    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    .line 1252
    .local v2, "config":Landroid/net/ip/IpClient$InitialConfiguration;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/ip/IpClient$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1253
    iget-object v3, v2, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 1254
    .local v5, "prefix":Landroid/net/IpPrefix;
    new-instance v6, Landroid/net/RouteInfo;

    iget-object v7, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v6, v5, v4, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1255
    .end local v5    # "prefix":Landroid/net/IpPrefix;
    goto :goto_a6

    .line 1257
    :cond_bd
    iget-object v3, v2, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v0, v3}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1259
    .end local v2    # "config":Landroid/net/ip/IpClient$InitialConfiguration;
    :cond_c2
    iget-object v2, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1267
    .local v2, "oldLp":Landroid/net/LinkProperties;
    return-object v0
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 1

    .line 843
    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 13
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 1085
    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1086
    .local v0, "config":Landroid/net/ip/IpClient$InitialConfiguration;
    :goto_a
    invoke-static {p1, v0}, Landroid/net/ip/IpClient;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v1

    .line 1087
    .local v1, "wasProvisioned":Z
    invoke-static {p2, v0}, Landroid/net/ip/IpClient;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v2

    .line 1089
    .local v2, "isProvisioned":Z
    if-nez v1, :cond_19

    if-eqz v2, :cond_19

    .line 1090
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .local v3, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :goto_18
    goto :goto_29

    .line 1091
    .end local v3    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    .line 1092
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_18

    .line 1093
    :cond_20
    if-nez v1, :cond_27

    if-nez v2, :cond_27

    .line 1094
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_18

    .line 1106
    :cond_27
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1109
    .restart local v3    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :goto_29
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_39

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v4

    if-nez v4, :cond_39

    move v4, v6

    goto :goto_3a

    :cond_39
    move v4, v5

    .line 1110
    .local v4, "lostIPv6":Z
    :goto_3a
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-nez v7, :cond_48

    move v7, v6

    goto :goto_49

    :cond_48
    move v7, v5

    .line 1111
    .local v7, "lostIPv4Address":Z
    :goto_49
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    if-nez v8, :cond_57

    move v8, v6

    goto :goto_58

    :cond_57
    move v8, v5

    .line 1126
    .local v8, "lostIPv6Router":Z
    :goto_58
    iget-object v9, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    if-eqz v9, :cond_66

    iget-object v9, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1127
    invoke-virtual {v9}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v9

    if-nez v9, :cond_66

    move v5, v6

    nop

    .line 1141
    .local v5, "ignoreIPv6ProvisioningLoss":Z
    :cond_66
    if-nez v7, :cond_6c

    if-eqz v4, :cond_6e

    if-nez v5, :cond_6e

    .line 1142
    :cond_6c
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1150
    :cond_6e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v6

    if-eqz v6, :cond_7a

    if-eqz v8, :cond_7a

    if-nez v5, :cond_7a

    .line 1151
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1154
    :cond_7a
    return-object v3
.end method

.method private configureAndStartStateMachine()V
    .registers 3

    .line 793
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    .line 794
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    .line 795
    iget-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 796
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    .line 798
    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->setInitialState(Lcom/android/internal/util/State;)V

    .line 800
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 801
    return-void
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 1158
    sget-object v0, Landroid/net/ip/IpClient$5;->$SwitchMap$android$net$LinkProperties$ProvisioningChange:[I

    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 1173
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    goto :goto_25

    .line 1167
    :pswitch_11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->recordMetric(I)V

    .line 1168
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 1169
    goto :goto_25

    .line 1161
    :pswitch_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->recordMetric(I)V

    .line 1162
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 1163
    nop

    .line 1176
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_11
    .end packed-switch
.end method

.method private doImmediateProvisioningFailure(I)V
    .registers 6
    .param p1, "failureType"    # I

    .line 1344
    const-string/jumbo v0, "onProvisioningFailure(): %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->recordMetric(I)V

    .line 1346
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 1347
    return-void
.end method

.method public static dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 114
    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "ifname":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .end local v1    # "ifname":Ljava/lang/String;
    goto :goto_a

    .line 117
    .restart local v1    # "ifname":Ljava/lang/String;
    :cond_23
    const-string v2, "--- BEGIN %s ---"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    sget-object v2, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/util/SharedLog;

    .line 120
    .local v2, "smLog":Landroid/net/util/SharedLog;
    const/4 v4, 0x0

    if-eqz v2, :cond_45

    .line 121
    const-string v6, "State machine log:"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v4, p0, v4}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 125
    :cond_45
    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    sget-object v6, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LocalLog;

    .line 128
    .local v6, "pktLog":Landroid/util/LocalLog;
    if-eqz v6, :cond_60

    .line 129
    const-string v7, "Connectivity packet log:"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v7

    invoke-virtual {v7, v4, p0, v4}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 133
    :cond_60
    const-string v4, "--- END %s ---"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .end local v1    # "ifname":Ljava/lang/String;
    .end local v2    # "smLog":Landroid/net/util/SharedLog;
    .end local v6    # "pktLog":Landroid/util/LocalLog;
    goto :goto_a

    .line 135
    :cond_6e
    return-void
.end method

.method static find(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1880
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1881
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1882
    return-object v1

    .line 1884
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_15
    goto :goto_4

    .line 1885
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1889
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private handleIPv4Failure()V
    .registers 3

    .line 1314
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1317
    iget-object v1, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v1, v0}, Landroid/net/ip/IpClient$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1319
    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleProvisioningFailure()V

    .line 1320
    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .registers 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 1296
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1297
    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1298
    .local v0, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    .line 1303
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    iget-object v2, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpClient$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1304
    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1305
    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .registers 6
    .param p1, "sendCallbacks"    # Z

    .line 1284
    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1285
    .local v0, "newLp":Landroid/net/LinkProperties;
    iget-object v1, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 1286
    return v2

    .line 1288
    :cond_e
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    .line 1289
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    if-eqz p1, :cond_17

    .line 1290
    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1292
    :cond_17
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v1, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    return v2
.end method

.method private handleProvisioningFailure()V
    .registers 4

    .line 1323
    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1324
    .local v0, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    .line 1333
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v2, :cond_e

    .line 1334
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1337
    :cond_e
    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1338
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v2, :cond_1a

    .line 1339
    iget-object v2, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1341
    :cond_1a
    return-void
.end method

.method static isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .registers 4
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "config"    # Landroid/net/ip/IpClient$InitialConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1065
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 1068
    :cond_d
    if-nez p1, :cond_11

    .line 1069
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_11
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/ip/IpClient$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 1066
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method static join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .param p0, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1876
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$GdLECAc1sQEo2Jjde3Y4ykVjDBg(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$not$0(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "fn"    # Ljava/util/function/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 1872
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v1, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 1872
    .local p0, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;

    invoke-direct {v0, p0}, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method private recordMetric(I)V
    .registers 7
    .param p1, "type"    # I

    .line 1054
    iget-wide v0, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    sub-long v2, v0, v2

    nop

    .line 1056
    :cond_11
    move-wide v0, v2

    .line 1057
    .local v0, "duration":J
    iget-object v2, p0, Landroid/net/ip/IpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/metrics/IpManagerEvent;

    invoke-direct {v4, p1, v0, v1}, Landroid/net/metrics/IpManagerEvent;-><init>(IJ)V

    invoke-virtual {v2, v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 1058
    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    .line 1041
    iget-object v0, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    .line 1043
    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1044
    const-string v1, ""

    iput-object v1, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    .line 1045
    iput-object v0, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 1047
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1048
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 4
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1182
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v0, :cond_9

    .line 1183
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 1185
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v0, :cond_12

    .line 1186
    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 1189
    :cond_12
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p1}, Landroid/net/ip/IpClient;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1190
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1192
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_28

    .line 1195
    iget-object v1, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1198
    :cond_28
    return-object v0
.end method

.method private startIPv4()Z
    .registers 5

    .line 1352
    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_23

    .line 1353
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/ip/InterfaceController;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1354
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->handleIPv4Success(Landroid/net/DhcpResults;)V

    goto :goto_58

    .line 1356
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 1360
    :cond_23
    iget-object v0, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-static {v0, p0, v1}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/InterfaceParams;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1361
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    .line 1362
    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRapidCommit:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v0, :cond_3f

    goto :goto_48

    .line 1367
    :cond_3f
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_58

    .line 1363
    :cond_48
    :goto_48
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v1, 0x3000a

    .line 1364
    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRapidCommit:Z

    .line 1365
    iget-object v3, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v3, v3, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDiscoverSent:Z

    .line 1363
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(III)V

    .line 1370
    :goto_58
    const/4 v0, 0x1

    return v0
.end method

.method private startIPv6()Z
    .registers 4

    .line 1374
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/InterfaceController;->setIPv6PrivacyExtensions(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 1375
    invoke-virtual {v0, v2}, Landroid/net/ip/InterfaceController;->setIPv6AddrGenModeIfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 1376
    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->enableIPv6()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 1374
    :goto_1f
    return v1
.end method

.method private startIpReachabilityMonitor()Z
    .registers 11

    .line 1390
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v9, Landroid/net/ip/IpReachabilityMonitor;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 1393
    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Landroid/net/ip/IpClient$4;

    invoke-direct {v7, p0}, Landroid/net/ip/IpClient$4;-><init>(Landroid/net/ip/IpClient;)V

    iget-object v8, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v9, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 1409
    goto :goto_29

    .line 1402
    :catch_1c
    move-exception v2

    .line 1407
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "IpReachabilityMonitor failure: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-direct {p0, v3, v4}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    .line 1411
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_29
    iget-object v2, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v2, :cond_2f

    move v0, v1

    nop

    :cond_2f
    return v0
.end method

.method private startStateMachineUpdaters()V
    .registers 5

    .line 805
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 808
    goto :goto_14

    .line 806
    :catch_8
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Couldn\'t register NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method private stopAllIP()V
    .registers 2

    .line 1425
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->disableIPv6()Z

    .line 1426
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearAllAddresses()Z

    .line 1427
    return-void
.end method

.method private stopStateMachineUpdaters()V
    .registers 5

    .line 813
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 816
    goto :goto_14

    .line 814
    :catch_8
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Couldn\'t unregister NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method


# virtual methods
.method public awaitShutdown()V
    .registers 5

    .line 836
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 839
    goto :goto_1d

    .line 837
    :catch_6
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while awaiting shutdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 840
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1d
    return-void
.end method

.method public buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1416
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .registers 2

    .line 883
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 884
    return-void
.end method

.method public confirmConfiguration()V
    .registers 2

    .line 879
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 880
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 919
    if-eqz p3, :cond_14

    array-length v0, p3

    if-lez v0, :cond_14

    const-string v0, "confirm"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 921
    invoke-virtual {p0}, Landroid/net/ip/IpClient;->confirmConfiguration()V

    .line 922
    return-void

    .line 926
    :cond_14
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    .line 927
    .local v0, "apfFilter":Landroid/net/apf/ApfFilter;
    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    .line 928
    .local v1, "provisioningConfig":Landroid/net/ip/IpClient$ProvisioningConfiguration;
    if-eqz v1, :cond_1d

    .line 929
    iget-object v2, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 931
    .local v2, "apfCapabilities":Landroid/net/apf/ApfCapabilities;
    :goto_1e
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 932
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " APF dump:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 934
    if-eqz v0, :cond_63

    .line 935
    invoke-virtual {v2}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 937
    iget-object v4, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 938
    iget-object v4, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v4}, Landroid/net/ip/IpClient$Callback;->startReadPacketFilter()V

    .line 939
    iget-object v4, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 940
    const-string v4, "TIMEOUT: DUMPING STALE APF SNAPSHOT"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 943
    :cond_5f
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_91

    .line 946
    :cond_63
    const-string v4, "No active ApfFilter; "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 947
    if-nez v1, :cond_70

    .line 948
    const-string v4, "IpClient not yet started."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 949
    :cond_70
    if-eqz v2, :cond_8c

    iget v4, v2, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v4, :cond_77

    goto :goto_8c

    .line 952
    :cond_77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApfFilter not yet started, APF capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 950
    :cond_8c
    :goto_8c
    const-string v4, "Hardware does not support APF."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 955
    :goto_91
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 956
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " current ProvisioningConfiguration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 959
    const-string v4, "N/A"

    invoke-static {v1, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 962
    iget-object v4, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    .line 963
    .local v4, "iprm":Landroid/net/ip/IpReachabilityMonitor;
    if-eqz v4, :cond_e2

    .line 964
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " current IpReachabilityMonitor state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 967
    invoke-virtual {v4, v3}, Landroid/net/ip/IpReachabilityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 968
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 971
    :cond_e2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " StateMachine dump:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 974
    iget-object v5, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v5, p1, v3, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 975
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 977
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " connectivity packet log:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 980
    const-string v5, "Debug with python and scapy via:"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    const-string/jumbo v5, "shell$ python"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const-string v5, ">>> from scapy import all as scapy"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v5, ">>> scapy.Ether(\"<paste_hex_string>\".decode(\"hex\")).show2()"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 986
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 987
    iget-object v5, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    invoke-virtual {v5}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v5

    invoke-virtual {v5, p1, v3, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 988
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 989
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1003
    const-string v0, "%s/%d %d %d %s [%s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1005
    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    if-nez v2, :cond_10

    const/4 v2, -0x1

    goto :goto_14

    :cond_10
    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    :goto_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1006
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    aput-object v3, v1, v2

    .line 1003
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "logLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/net/ip/IpClient;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "richerLogLine":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1014
    iget-object v2, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    invoke-virtual {v2}, Landroid/net/ip/IpClient$MessageHandlingLogger;->reset()V

    .line 1015
    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "what"    # I

    .line 998
    sget-object v0, Landroid/net/ip/IpClient;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onQuitting()V
    .registers 2

    .line 821
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onQuit()V

    .line 822
    iget-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 823
    return-void
.end method

.method public readPacketFilterComplete([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 887
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    .line 888
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1023
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1024
    .local v0, "shouldLog":Z
    :goto_8
    if-nez v0, :cond_f

    .line 1025
    iget-object v1, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->reset()V

    .line 1027
    :cond_f
    return v0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 907
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    .line 908
    return-void
.end method

.method public setMulticastFilter(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 915
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    .line 916
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .registers 3
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .line 897
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    .line 898
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 827
    invoke-virtual {p0}, Landroid/net/ip/IpClient;->stop()V

    .line 828
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 829
    return-void
.end method

.method public startProvisioning()V
    .registers 2

    .line 871
    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    .line 872
    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .registers 3
    .param p1, "staticIpConfig"    # Landroid/net/StaticIpConfiguration;

    .line 865
    invoke-static {}, Landroid/net/ip/IpClient;->buildProvisioningConfiguration()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    .line 866
    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    .line 865
    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    .line 868
    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V
    .registers 4
    .param p1, "req"    # Landroid/net/ip/IpClient$ProvisioningConfiguration;

    .line 847
    invoke-virtual {p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 848
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    .line 849
    return-void

    .line 852
    :cond_b
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDependencies:Landroid/net/ip/IpClient$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 853
    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_38

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find InterfaceParams for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    .line 856
    return-void

    .line 859
    :cond_38
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 860
    const/4 v0, 0x3

    new-instance v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v1, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    .line 861
    return-void
.end method

.method public stop()V
    .registers 2

    .line 875
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 876
    return-void
.end method
