.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    .line 137
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;)V

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 49
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;

    .line 36
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private addActionIfNeeded(Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 163
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    :cond_15
    return-void
.end method

.method private handleAction(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    .line 172
    const-string/jumbo v1, "phone"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "intentSlot":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v4

    .line 175
    .local v4, "dataSlot":I
    if-eq v1, v4, :cond_21

    .line 177
    return v3

    .line 179
    .end local v1    # "intentSlot":I
    .end local v4    # "dataSlot":I
    :cond_21
    goto :goto_34

    :cond_22
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    .line 199
    :cond_34
    :goto_34
    return v2

    .line 181
    :cond_35
    :goto_35
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    .line 182
    .local v1, "dataSlot":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 183
    .local v4, "dataSub":[I
    const/4 v5, -0x1

    .line 184
    .local v5, "dataSubId":I
    if-eqz v4, :cond_49

    array-length v6, v4

    if-lez v6, :cond_49

    .line 185
    aget v5, v4, v2

    .line 187
    :cond_49
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2}, Landroid/telephony/PhoneStateListener;->getSubId()I

    move-result v2

    if-eq v5, v2, :cond_88

    .line 189
    const-string v2, "DataConnectionStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "listen phone state subId new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v7}, Landroid/telephony/PhoneStateListener;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5}, Landroid/telephony/PhoneStateListener;->setSubId(I)V

    .line 191
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1c1

    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 197
    :cond_88
    return v3
.end method

.method private hasService()Z
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 133
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 134
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 132
    :goto_18
    return v1
.end method

.method private isCdma()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private notePhoneDataConnectionState()V
    .registers 7

    .line 86
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_5

    .line 87
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    move v0, v3

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v2

    .line 91
    .local v0, "simReadyOrUnknown":Z
    :goto_17
    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 92
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    move v1, v2

    .line 94
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    .line 96
    .local v2, "networkType":I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v3

    if-eqz v3, :cond_41

    const/16 v2, 0x13

    .line 100
    :cond_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_47

    .line 103
    goto :goto_4f

    .line 101
    :catch_47
    move-exception v3

    .line 102
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "DataConnectionStats"

    const-string v5, "Error noting data connection state"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 107
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 109
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_53

    .line 110
    :cond_14
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 111
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_53

    .line 112
    :cond_21
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 113
    const-string/jumbo v1, "reason"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 116
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_4e

    .line 117
    :cond_3d
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 118
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_4e

    .line 120
    :cond_4a
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 122
    .end local v1    # "lockedReason":Ljava/lang/String;
    :goto_4e
    goto :goto_53

    .line 123
    :cond_4f
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 125
    :goto_53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->handleAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 75
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 77
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 78
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    goto :goto_2d

    .line 79
    :cond_1a
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 81
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 83
    :cond_2d
    :goto_2d
    return-void
.end method

.method public startMonitoring()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 56
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/DataConnectionStats;->addActionIfNeeded(Landroid/content/IntentFilter;)V

    .line 68
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method
