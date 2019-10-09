.class public Landroid/net/dhcp/DhcpClient;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;,
        Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$ReceiveThread;
    }
.end annotation


# static fields
.field public static final CMD_CLEAR_LINKADDRESS:I = 0x30007

.field public static final CMD_CONFIGURE_LINKADDRESS:I = 0x30008

.field private static final CMD_EXPIRE_DHCP:I = 0x3006a

.field private static final CMD_KICK:I = 0x30065

.field public static final CMD_ON_QUIT:I = 0x30005

.field public static final CMD_POST_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30003

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30006

.field private static final CMD_REBIND_DHCP:I = 0x30069

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field private static final CMD_RENEW_DHCP:I = 0x30068

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_START_DHCP_RAPID_COMMIT:I = 0x3000a

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z = true

.field public static final DHCP_FAILURE:I = 0x2

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field public static final EVENT_LINKADDRESS_CONFIGURED:I = 0x30009

.field private static final FIRST_MESSAGE_TIMEOUT_MS:I = 0xc8

.field private static final FIRST_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_TIMEOUT_MS:I = 0x1f400

.field private static final MSG_DBG:Z = false

.field private static final PACKET_DBG:Z = false

.field private static final PRIVATE_BASE:I = 0x30064

.field private static final PUBLIC_BASE:I = 0x30000

.field static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sMessageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguringInterfaceState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveLeaseState:Lcom/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/internal/util/State;

.field private mDhcpLease:Landroid/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpRapidCommitInitState:Lcom/android/internal/util/State;

.field private mDhcpRebindingState:Lcom/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/internal/util/State;

.field private mDhcpState:Lcom/android/internal/util/State;

.field public mDiscoverSent:Z

.field private final mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mHwAddr:[B

.field private mIface:Landroid/net/util/InterfaceParams;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mKickAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mLastBoundExitTime:J

.field private mLastInitEnterTime:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mOffer:Landroid/net/DhcpResults;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field public mRapidCommit:Z

.field private mRapidCommitWaitBeforeStartState:Lcom/android/internal/util/State;

.field private final mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    .line 153
    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    .line 154
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    return-void

    :array_1c
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
        0x2bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    .line 238
    const-string v0, "DhcpClient"

    invoke-virtual {p2}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 176
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 214
    new-instance v0, Landroid/net/dhcp/DhcpClient$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    .line 215
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    .line 216
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    .line 217
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRapidCommitInitState:Lcom/android/internal/util/State;

    .line 218
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    .line 219
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    .line 220
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    .line 221
    new-instance v0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    .line 222
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    .line 223
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    .line 224
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    .line 225
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    .line 226
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    .line 227
    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 228
    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRapidCommitInitState:Lcom/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRapidCommitWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 229
    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 240
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    .line 242
    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    .line 245
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    .line 246
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 247
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRapidCommitInitState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 248
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 249
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRapidCommitWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 250
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 251
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 252
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 253
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 254
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 255
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 256
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 257
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 258
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 259
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 261
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    .line 263
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    .line 266
    const-string v0, "KICK"

    const v1, 0x30065

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 268
    const-string v0, "TIMEOUT"

    const v1, 0x30067

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 270
    const-string v0, "RENEW"

    const v1, 0x30068

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 271
    const-string v0, "REBIND"

    const v1, 0x30069

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 272
    const-string v0, "EXPIRY"

    const v1, 0x3006a

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 273
    return-void
.end method

.method private acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V
    .registers 6
    .param p1, "results"    # Landroid/net/DhcpResults;
    .param p2, "msg"    # Ljava/lang/String;

    .line 504
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    .line 506
    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    .line 508
    return-void
.end method

.method static synthetic access$000(Landroid/net/dhcp/DhcpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRapidCommitInitState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/dhcp/DhcpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/dhcp/DhcpClient;)J
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Landroid/net/dhcp/DhcpClient;J)J
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # J

    .line 89
    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .line 89
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/DhcpResults;
    .param p2, "x2"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/dhcp/DhcpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/dhcp/DhcpClient;I)V
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->logError(I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 89
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/net/dhcp/DhcpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifyFailure()V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/dhcp/DhcpClient;I)V
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .registers 6
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Ljava/net/Inet4Address;
    .param p2, "x2"    # Ljava/net/Inet4Address;
    .param p3, "x3"    # Ljava/net/Inet4Address;
    .param p4, "x4"    # Ljava/net/Inet4Address;

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Ljava/net/Inet4Address;

    .line 89
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/net/dhcp/DhcpClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleLeaseTimers()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/dhcp/DhcpClient;)J
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Landroid/net/dhcp/DhcpClient;J)J
    .registers 3
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # J

    .line 89
    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .registers 1

    .line 89
    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$4300(Ljava/io/FileDescriptor;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;

    .line 89
    invoke-static {p0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .line 89
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRapidCommitWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private clearDhcpState()V
    .registers 4

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    .line 512
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    .line 513
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    .line 514
    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 352
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 353
    goto :goto_5

    :catch_4
    move-exception v0

    .line 354
    :goto_5
    return-void
.end method

.method private closeSockets()V
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 358
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 359
    return-void
.end method

.method private connectUdpSock(Ljava/net/Inet4Address;)Z
    .registers 5
    .param p1, "to"    # Ljava/net/Inet4Address;

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v1, 0x43

    invoke-static {v0, p1, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 343
    const/4 v0, 0x1

    return v0

    .line 344
    :catch_9
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DhcpClient"

    const-string v2, "Error connecting UDP socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    const/4 v1, 0x0

    return v1
.end method

.method private getSecs()S
    .registers 5

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private initInterface()Z
    .registers 4

    .line 288
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    .line 289
    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_2a

    .line 290
    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine InterfaceParams for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_2a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    .line 295
    new-instance v0, Landroid/system/PacketSocketAddress;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget v1, v1, Landroid/net/util/InterfaceParams;->index:I

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method private initPacketSocket()Z
    .registers 4

    .line 310
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    .line 311
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v1, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v1, v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 312
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 313
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_22} :catch_25
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_22} :catch_25

    .line 317
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    nop

    .line 318
    const/4 v0, 0x1

    return v0

    .line 314
    :catch_25
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DhcpClient"

    const-string v2, "Error creating packet socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, 0x0

    return v1
.end method

.method private initSockets()Z
    .registers 2

    .line 305
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initPacketSocket()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private initUdpSocket()Z
    .registers 8

    .line 322
    const/16 v0, -0xc0

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 324
    .local v0, "oldTag":I
    const/4 v1, 0x0

    :try_start_7
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    .line 325
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_REUSEADDR:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 326
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 327
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 328
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 329
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v4, 0x44

    invoke-static {v2, v3, v4}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 330
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_48
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_48} :catch_4f
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_48} :catch_4f
    .catchall {:try_start_7 .. :try_end_48} :catchall_4d

    .line 335
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 336
    nop

    .line 337
    return v5

    .line 335
    :catchall_4d
    move-exception v1

    goto :goto_5c

    .line 331
    :catch_4f
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v3, "DhcpClient"

    const-string v4, "Error creating UDP socket"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    .line 333
    nop

    .line 335
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 333
    return v1

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5c
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v1
.end method

.method private logError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 1174
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/metrics/DhcpErrorEvent;

    invoke-direct {v2, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 1175
    return-void
.end method

.method private logState(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # I

    .line 1178
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/metrics/DhcpClientEvent;

    invoke-direct {v2, p1, p2}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 1179
    return-void
.end method

.method public static makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/InterfaceParams;)Landroid/net/dhcp/DhcpClient;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "ifParams"    # Landroid/net/util/InterfaceParams;

    .line 281
    new-instance v0, Landroid/net/dhcp/DhcpClient;

    iget-object v1, p2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 282
    .local v0, "client":Landroid/net/dhcp/DhcpClient;
    iput-object p2, v0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    .line 283
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    .line 284
    return-object v0
.end method

.method private makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;
    .registers 6
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-object v0
.end method

.method private notifyFailure()V
    .registers 6

    .line 500
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30004

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 501
    return-void
.end method

.method private notifySuccess()V
    .registers 6

    .line 495
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    const v2, 0x30004

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method private scheduleLeaseTimers()V
    .registers 15

    .line 471
    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 472
    const-string v0, "DhcpClient"

    const-string v1, "Infinite lease, no timer scheduling needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 483
    .local v0, "now":J
    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    sub-long/2addr v2, v0

    .line 484
    .local v2, "remainingDelay":J
    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    .line 485
    .local v4, "renewDelay":J
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    .line 486
    .local v6, "rebindDelay":J
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v4

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 487
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 488
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 489
    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling renewal in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3e8

    div-long v12, v4, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "s"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling rebind in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v6, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "s"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling expiry in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v2, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private sendDiscoverPacket()Z
    .registers 8

    .line 446
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    .line 447
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    iget-boolean v6, p0, Landroid/net/dhcp/DhcpClient;->mRapidCommit:Z

    .line 446
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 449
    .local v0, "packet":Ljava/nio/ByteBuffer;
    const-string v1, "DHCPDISCOVER"

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result v1

    return v1
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .registers 16
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    .line 456
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {v0, p1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 457
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    .line 459
    .local v0, "encap":I
    :goto_b
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    .line 460
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v3

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    const/4 v10, 0x0

    .line 459
    move v1, v0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 463
    .local v1, "packet":Ljava/nio/ByteBuffer;
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 464
    .local v2, "serverStr":Ljava/lang/String;
    :goto_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCPREQUEST ciaddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " serverid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "description":Ljava/lang/String;
    invoke-direct {p0, v1, v3, v0, p4}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result v4

    return v4
.end method

.method private startNewTransaction()V
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    .line 302
    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z
    .registers 15
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "encap"    # I
    .param p4, "to"    # Ljava/net/Inet4Address;

    .line 412
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2e

    .line 413
    :try_start_4
    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    invoke-static/range {v4 .. v9}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    goto :goto_73

    .line 431
    :catch_2c
    move-exception v0

    goto :goto_75

    .line 415
    :cond_2e
    const/4 v2, 0x2

    if-ne p3, v2, :cond_57

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-virtual {p4, v3}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 416
    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v3, 0x43

    invoke-static {v2, p1, v1, p4, v3}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    goto :goto_73

    .line 427
    :cond_57
    const-string v3, "DhcpClient"

    const-string v4, "Unicasting %s to %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    .line 428
    invoke-static {v5}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v5

    aput-object v5, v2, v0

    .line 427
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v2, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_73
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_73} :catch_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_73} :catch_2c

    .line 434
    :goto_73
    nop

    .line 435
    return v0

    .line 431
    :goto_75
    nop

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DhcpClient"

    const-string v3, "Can\'t send packet: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    return v1
.end method


# virtual methods
.method public buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;
    .registers 8

    .line 439
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    .line 440
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    .line 441
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    iget-boolean v6, p0, Landroid/net/dhcp/DhcpClient;->mRapidCommit:Z

    .line 440
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public doQuit()V
    .registers 3

    .line 522
    const-string v0, "DhcpClient"

    const-string v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    .line 524
    return-void
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .registers 7
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .line 733
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    move-result v0

    .line 734
    .local v0, "xid":I
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2a

    .line 735
    const-string v1, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected transaction ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return v2

    .line 738
    :cond_2a
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v1

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_65

    .line 739
    const-string v1, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC addr mismatch: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return v2

    .line 744
    :cond_65
    const/4 v1, 0x1

    return v1
.end method

.method protected onQuitting()V
    .registers 3

    .line 528
    const-string v0, "DhcpClient"

    const-string/jumbo v1, "onQuitting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 530
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .registers 2

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    .line 277
    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .registers 7
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .line 748
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    move-result-wide v0

    .line 749
    .local v0, "leaseTimeMillis":J
    nop

    .line 750
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    nop

    :cond_11
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    .line 751
    return-void
.end method
