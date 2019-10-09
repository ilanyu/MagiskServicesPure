.class public Lcom/android/server/net/NetworkPolicyLogger;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyLogger$Data;,
        Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
    }
.end annotation


# static fields
.field private static final EVENT_APP_IDLE_STATE_CHANGED:I = 0x8

.field private static final EVENT_DEVICE_IDLE_MODE_ENABLED:I = 0x7

.field private static final EVENT_FIREWALL_CHAIN_ENABLED:I = 0xc

.field private static final EVENT_METEREDNESS_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_BLOCKED:I = 0x1

.field private static final EVENT_PAROLE_STATE_CHANGED:I = 0x9

.field private static final EVENT_POLICIES_CHANGED:I = 0x3

.field private static final EVENT_RESTRICT_BG_CHANGED:I = 0x6

.field private static final EVENT_TEMP_POWER_SAVE_WL_CHANGED:I = 0xa

.field private static final EVENT_TYPE_GENERIC:I = 0x0

.field private static final EVENT_UID_FIREWALL_RULE_CHANGED:I = 0xb

.field private static final EVENT_UID_STATE_CHANGED:I = 0x2

.field private static final EVENT_UPDATE_METERED_RESTRICTED_PKGS:I = 0xd

.field private static final EVENT_USER_STATE_REMOVED:I = 0x5

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MAX_LOG_SIZE:I

.field private static final MAX_NETWORK_BLOCKED_LOG_SIZE:I

.field static final NTWK_ALLOWED_DEFAULT:I = 0x6

.field static final NTWK_ALLOWED_NON_METERED:I = 0x1

.field static final NTWK_ALLOWED_TMP_WHITELIST:I = 0x4

.field static final NTWK_ALLOWED_WHITELIST:I = 0x3

.field static final NTWK_BLOCKED_BG_RESTRICT:I = 0x5

.field static final NTWK_BLOCKED_BLACKLIST:I = 0x2

.field static final NTWK_BLOCKED_POWER:I = 0x0

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"


# instance fields
.field private final mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-string v0, "NetworkPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 46
    const-string v0, "NetworkPolicy"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 49
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_1d

    const/16 v0, 0x14

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    sput v0, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/16 v1, 0x64

    :goto_29
    sput v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 77
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 78
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 42
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(III)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 42
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(ZZ)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Z)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Z

    .line 42
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Z)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Z

    .line 42
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(III)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppIdleChangedLog(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "uid"    # I
    .param p1, "idle"    # Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle state of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBlockedReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 215
    packed-switch p0, :pswitch_data_20

    .line 231
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_8
    const-string v0, "allowed by default"

    return-object v0

    .line 227
    :pswitch_b
    const-string v0, "blocked when background is restricted"

    return-object v0

    .line 225
    :pswitch_e
    const-string/jumbo v0, "temporary whitelisted on metered network"

    return-object v0

    .line 223
    :pswitch_12
    const-string/jumbo v0, "whitelisted on metered network"

    return-object v0

    .line 221
    :pswitch_16
    const-string v0, "blacklisted on metered network"

    return-object v0

    .line 219
    :pswitch_19
    const-string v0, "allowed on unmetered network"

    return-object v0

    .line 217
    :pswitch_1c
    const-string v0, "blocked by power restrictions"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static getDeviceIdleModeEnabled(Z)Ljava/lang/String;
    .registers 3
    .param p0, "enabled"    # Z

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdleMode enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFirewallChainEnabledLog(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "chain"    # I
    .param p1, "enabled"    # Z

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFirewallChainName(I)Ljava/lang/String;
    .registers 2
    .param p0, "chain"    # I

    .line 279
    packed-switch p0, :pswitch_data_14

    .line 287
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_8
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 283
    :pswitch_c
    const-string/jumbo v0, "standby"

    return-object v0

    .line 281
    :pswitch_10
    const-string v0, "dozable"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private static getFirewallRuleName(I)Ljava/lang/String;
    .registers 2
    .param p0, "rule"    # I

    .line 292
    packed-switch p0, :pswitch_data_12

    .line 300
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_8
    const-string v0, "deny"

    return-object v0

    .line 296
    :pswitch_b
    const-string v0, "allow"

    return-object v0

    .line 294
    :pswitch_e
    const-string v0, "default"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static getMeterednessChangedLog(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "netId"    # I
    .param p1, "newMetered"    # Z

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meteredness of netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParoleStateChanged(Z)Ljava/lang/String;
    .registers 3
    .param p0, "paroleOn"    # Z

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parole state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPolicyChangedLog(III)Ljava/lang/String;
    .registers 5
    .param p0, "uid"    # I
    .param p1, "oldPolicy"    # I
    .param p2, "newPolicy"    # I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method private static getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;
    .registers 4
    .param p0, "oldValue"    # Z
    .param p1, "newValue"    # Z

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed restrictBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "appId"    # I
    .param p1, "added"    # Z

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp-power-save whitelist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUidFirewallRuleChangedLog(III)Ljava/lang/String;
    .registers 7
    .param p0, "chain"    # I
    .param p1, "uid"    # I
    .param p2, "rule"    # I

    .line 270
    const-string v0, "Firewall rule changed: %d-%s-%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallRuleName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 270
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserRemovedLog(I)Ljava/lang/String;
    .registers 3
    .param p0, "userId"    # I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove state for u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method appIdleStateChanged(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "idle"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->appIdleStateChanged(IZ)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method deviceIdleModeEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->deviceIdleModeEnabled(Z)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 193
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 195
    const-string/jumbo v1, "mEventLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 197
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 201
    const-string/jumbo v1, "mNetworkBlockedLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 203
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 204
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 207
    const-string/jumbo v1, "mUidStateChangeLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 209
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method event(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_c

    const-string v1, "NetworkPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method firewallChainEnabled(IZ)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "enabled"    # Z

    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->firewallChainEnabled(IZ)V

    .line 172
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method firewallRulesChanged(I[I[I)V
    .registers 7
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .line 176
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall rules changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; uids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; rules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "log":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v2, :cond_39

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_39
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 181
    .end local v1    # "log":Ljava/lang/String;
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method meteredRestrictedPkgsChanged(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metered restricted uids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "log":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v2, :cond_1d

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 189
    .end local v1    # "log":Ljava/lang/String;
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method meterednessChanged(IZ)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "newMetered"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->meterednessChanged(IZ)V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method networkBlocked(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_24

    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_24
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->networkBlocked(II)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method paroleStateChanged(Z)V
    .registers 5
    .param p1, "paroleOn"    # Z

    .line 148
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->paroleStateChanged(Z)V

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method removingUserState(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->userRemoved(I)V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method restrictBackgroundChanged(ZZ)V
    .registers 6
    .param p1, "oldValue"    # Z
    .param p2, "newValue"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->restrictBackgroundChanged(ZZ)V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method tempPowerSaveWlChanged(IZ)V
    .registers 6
    .param p1, "appId"    # I
    .param p2, "added"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->tempPowerSaveWlChanged(IZ)V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method uidFirewallRuleChanged(III)V
    .registers 7
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidFirewallRuleChanged(III)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method uidPolicyChanged(III)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "newPolicy"    # I

    .line 105
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidPolicyChanged(III)V

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method uidStateChanged(IIJ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 90
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_28

    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_28
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidStateChanged(IIJ)V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
