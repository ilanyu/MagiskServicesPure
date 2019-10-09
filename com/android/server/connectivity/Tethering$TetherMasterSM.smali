.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
    }
.end annotation


# static fields
.field private static final BASE_MASTER:I = 0x50000

.field static final CMD_CLEAR_ERROR:I = 0x50006

.field static final CMD_RETRY_UPSTREAM:I = 0x50004

.field static final CMD_UPSTREAM_CHANGED:I = 0x50003

.field static final EVENT_IFACE_SERVING_STATE_ACTIVE:I = 0x50001

.field static final EVENT_IFACE_SERVING_STATE_INACTIVE:I = 0x50002

.field static final EVENT_IFACE_UPDATE_LINKPROPERTIES:I = 0x50007

.field static final EVENT_UPSTREAM_CALLBACK:I = 0x50005

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private final mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

.field private final mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private final mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private final mTetherModeAliveState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "deps"    # Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 1263
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1264
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1266
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    .line 1267
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 1268
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 1269
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 1270
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 1271
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 1272
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 1274
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 1283
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 1284
    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    .line 1283
    invoke-virtual {p4, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    .line 1285
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    .line 1287
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1288
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1219
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateActive(ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1219
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateInactive(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1219
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1219
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILjava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 1219
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1219
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private handleInterfaceServingStateActive(ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1443
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_12

    .line 1444
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    .line 1448
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 1452
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1454
    :cond_1f
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1459
    :goto_31
    invoke-virtual {p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v1

    if-nez v1, :cond_66

    .line 1460
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 1461
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1462
    .local v2, "iface":Ljava/lang/String;
    packed-switch p1, :pswitch_data_68

    .line 1470
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown active serving mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v2    # "iface":Ljava/lang/String;
    goto :goto_66

    .line 1467
    .restart local v1    # "mgr":Landroid/net/wifi/WifiManager;
    .restart local v2    # "iface":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1468
    goto :goto_66

    .line 1464
    :pswitch_61
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1465
    nop

    .line 1474
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_61
        :pswitch_5d
    .end packed-switch
.end method

.method private handleInterfaceServingStateInactive(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 5
    .param p1, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1477
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1478
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1479
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1483
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v0

    if-nez v0, :cond_36

    .line 1484
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->lastError()I

    move-result v0

    if-eqz v0, :cond_36

    .line 1485
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 1486
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1485
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1489
    :cond_36
    return-void
.end method

.method private handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V
    .registers 7
    .param p1, "arg1"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 1492
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    .line 1493
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1494
    return-void

    .line 1497
    :cond_d
    move-object v0, p2

    check-cast v0, Landroid/net/NetworkState;

    .line 1499
    .local v0, "ns":Landroid/net/NetworkState;
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    invoke-static {v2, v0}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_49

    .line 1515
    :cond_1c
    packed-switch p1, :pswitch_data_56

    .line 1539
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown arg1 value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_48

    .line 1536
    :pswitch_3a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1537
    goto :goto_48

    .line 1529
    :pswitch_3f
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1530
    goto :goto_48

    .line 1526
    :pswitch_43
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1527
    goto :goto_48

    .line 1524
    :pswitch_47
    nop

    .line 1542
    :goto_48
    return-void

    .line 1505
    :cond_49
    :goto_49
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object v2

    if-nez v2, :cond_54

    .line 1510
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1512
    :cond_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .registers 6
    .param p1, "tryCell"    # Z

    .line 1366
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->maybeUpdateConfiguration()V
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1369
    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 1368
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;

    move-result-object v0

    .line 1370
    .local v0, "ns":Landroid/net/NetworkState;
    if-nez v0, :cond_2d

    .line 1371
    if-eqz p1, :cond_25

    .line 1372
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    goto :goto_2d

    .line 1375
    :cond_25
    const v1, 0x50004

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1378
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v1

    if-eqz v0, :cond_38

    iget-object v2, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->setCurrentUpstream(Landroid/net/Network;)V

    .line 1379
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setUpstreamNetwork(Landroid/net/NetworkState;)V

    .line 1380
    return-void
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1438
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1440
    return-void
.end method

.method protected notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V
    .registers 5
    .param p1, "ifaces"    # Landroid/net/util/InterfaceSet;

    .line 1431
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->access$2102(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 1432
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1433
    .local v1, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    const v2, 0x50070

    invoke-virtual {v1, v2, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1434
    .end local v1    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    goto :goto_b

    .line 1435
    :cond_1e
    return-void
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 1410
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 1411
    .local v0, "dnsServers":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 1413
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1415
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 1418
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    const-string v3, "SET DNS forwarders: network=%s dnsServers=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 1421
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1419
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_3e

    .line 1427
    goto :goto_5f

    .line 1422
    :catch_3e
    move-exception v2

    .line 1425
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting DNS forwarders failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1426
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1428
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method protected setUpstreamNetwork(Landroid/net/NetworkState;)V
    .registers 6
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1383
    const/4 v0, 0x0

    .line 1384
    .local v0, "ifaces":Landroid/net/util/InterfaceSet;
    if-eqz p1, :cond_3d

    .line 1388
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for default routes on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 1389
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getTetheringInterfaces(Landroid/net/NetworkState;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found upstream interface(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 1393
    :cond_3d
    if-eqz v0, :cond_46

    .line 1394
    iget-object v1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 1396
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V

    .line 1397
    if-eqz p1, :cond_57

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    invoke-static {v1, p1}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1401
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    goto :goto_63

    .line 1402
    :cond_57
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-nez v1, :cond_63

    .line 1404
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1406
    :cond_63
    :goto_63
    return-void
.end method

.method protected turnOffMasterTetherSettings()Z
    .registers 4

    .line 1345
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_37

    .line 1350
    nop

    .line 1352
    :try_start_b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_27

    .line 1357
    nop

    .line 1358
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1359
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "SET master tether settings: OFF"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1360
    const/4 v0, 0x1

    return v0

    .line 1353
    :catch_27
    move-exception v1

    .line 1354
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1355
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1356
    return v0

    .line 1346
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_37
    move-exception v1

    .line 1347
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1348
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1349
    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .registers 7

    .line 1317
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 1319
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_50

    .line 1324
    nop

    .line 1328
    :try_start_12
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 1338
    goto :goto_34

    .line 1329
    :catch_1e
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1332
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_33} :catch_40

    .line 1337
    nop

    .line 1339
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_34
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    const-string v2, "SET master tether settings: ON"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1340
    return v3

    .line 1333
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_40
    move-exception v3

    .line 1334
    .local v3, "ee":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1335
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1336
    return v1

    .line 1320
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ee":Ljava/lang/Exception;
    :catch_50
    move-exception v2

    .line 1321
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1322
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1323
    return v1
.end method
