.class public Lcom/android/server/MiuiNetworkManagementService;
.super Ljava/lang/Object;
.source "MiuiNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;
    }
.end annotation


# static fields
.field private static final MIUI_FIREWALL_RESPONSE_CODE:I = 0x2bb

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"

.field private static sInstance:Lcom/android/server/MiuiNetworkManagementService;


# instance fields
.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private mListenedIdleTimerLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    .line 54
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method static Init(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)Lcom/android/server/MiuiNetworkManagementService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .line 42
    new-instance v0, Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MiuiNetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V

    sput-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    .line 43
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/MiuiNetworkManagementService;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method


# virtual methods
.method public addMiuiFirewallSharedUid(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "add_shared_uid"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_20} :catch_22

    .line 160
    nop

    .line 161
    return v5

    .line 157
    :catch_22
    move-exception v1

    .line 158
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string v3, "addMiuiFirewallSharedUid"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    return v0
.end method

.method public enableIptablesRestore(Z)Z
    .registers 8
    .param p1, "enabled"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "iprestore"

    aput-object v4, v3, v0

    if-eqz p1, :cond_1b

    const-string v4, "enable"

    goto :goto_1d

    :cond_1b
    const-string v4, "disable"

    :goto_1d
    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_23} :catch_25

    .line 120
    nop

    .line 121
    return v5

    .line 117
    :catch_25
    move-exception v1

    .line 118
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0
.end method

.method public enableLimitter(Z)Z
    .registers 8
    .param p1, "enabled"    # Z

    .line 69
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "limitter"

    aput-object v4, v3, v0

    if-eqz p1, :cond_1c

    const-string v4, "enable"

    goto :goto_1e

    :cond_1c
    const-string v4, "disable"

    :goto_1e
    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_24} :catch_26

    .line 75
    nop

    .line 76
    return v5

    .line 72
    :catch_26
    move-exception v1

    .line 73
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0
.end method

.method public enableQos(Z)Z
    .registers 8
    .param p1, "enabled"    # Z

    .line 208
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "diffserv"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_16

    const-string v5, "enable"

    goto :goto_18

    :cond_16
    const-string v5, "disable"

    :goto_18
    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1d} :catch_1f

    .line 214
    nop

    .line 215
    return v3

    .line 211
    :catch_1f
    move-exception v1

    .line 212
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string v3, "enableQos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return v0
.end method

.method public enableRps(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "rps"

    aput-object v4, v3, v0

    if-eqz p2, :cond_1d

    const-string/jumbo v4, "true"

    goto :goto_1f

    :cond_1d
    const-string v4, "false"

    :goto_1f
    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_2a

    .line 203
    nop

    .line 204
    return v5

    .line 200
    :catch_2a
    move-exception v1

    .line 201
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string v3, "enableRps"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    return v0
.end method

.method public enableWmmer(Z)Z
    .registers 8
    .param p1, "enabled"    # Z

    .line 58
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "wmmer"

    aput-object v4, v3, v0

    if-eqz p1, :cond_1c

    const-string v4, "enable"

    goto :goto_1e

    :cond_1c
    const-string v4, "disable"

    :goto_1e
    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_24} :catch_26

    .line 64
    nop

    .line 65
    return v5

    .line 61
    :catch_26
    move-exception v1

    .line 62
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0
.end method

.method filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 234
    move-object/from16 v3, p3

    const/16 v0, 0x265

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v0, :cond_44

    const/16 v0, 0x2bb

    if-eq v2, v0, :cond_13

    .line 283
    return v6

    .line 270
    :cond_13
    array-length v0, v3

    if-lt v0, v5, :cond_43

    aget-object v0, v3, v7

    const-string/jumbo v5, "miuiFirewall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_43

    .line 274
    :cond_22
    aget-object v0, v3, v4

    .line 275
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 276
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "miui.intent.action.FIREWALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.miui.securitycenter"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v5, v1, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.miui.permission.FIREWALL"

    invoke-virtual {v5, v4, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 281
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_42
    return v7

    .line 271
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_43
    :goto_43
    return v6

    .line 240
    :cond_44
    array-length v0, v3

    const/4 v8, 0x4

    if-lt v0, v8, :cond_94

    aget-object v0, v3, v7

    const-string v9, "IfaceClass"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 244
    iget-object v0, v1, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    aget-object v9, v3, v5

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 245
    return v6

    .line 248
    :cond_5d
    const-wide/16 v9, 0x0

    .line 249
    .local v9, "timestampNanos":J
    const/4 v6, -0x1

    .line 250
    .local v6, "processUid":I
    array-length v0, v3

    const/4 v11, 0x5

    if-lt v0, v11, :cond_79

    .line 252
    :try_start_64
    aget-object v0, v3, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v9, v12

    .line 253
    array-length v0, v3

    const/4 v8, 0x6

    if-ne v0, v8, :cond_76

    .line 254
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_75} :catch_77

    .line 256
    .end local v6    # "processUid":I
    .local v0, "processUid":I
    move v6, v0

    .line 256
    .end local v0    # "processUid":I
    .restart local v6    # "processUid":I
    :cond_76
    goto :goto_7d

    :catch_77
    move-exception v0

    goto :goto_7d

    .line 258
    :cond_79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    .line 260
    :goto_7d
    aget-object v0, v3, v4

    const-string v4, "active"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 261
    .local v0, "isActive":Z
    iget-object v4, v1, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    if-eqz v4, :cond_93

    .line 262
    iget-object v11, v1, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    aget-object v12, v3, v5

    move v13, v6

    move v14, v0

    move-wide v15, v9

    invoke-interface/range {v11 .. v16}, Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;->uidDataActivityChanged(Ljava/lang/String;IZJ)V

    .line 264
    :cond_93
    return v7

    .line 241
    .end local v0    # "isActive":Z
    .end local v6    # "processUid":I
    .end local v9    # "timestampNanos":J
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid event from daemon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listenUidDataActivity(IILjava/lang/String;IZ)Z
    .registers 13
    .param p1, "protocol"    # I
    .param p2, "uid"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "listen"    # Z

    .line 125
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "listen"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    .line 128
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    if-eqz p5, :cond_35

    const-string v6, "enable"

    goto :goto_37

    :cond_35
    const-string v6, "disable"

    :goto_37
    aput-object v6, v3, v4

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_3c} :catch_4b

    .line 132
    nop

    .line 133
    if-eqz p5, :cond_45

    .line 134
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 136
    :cond_45
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    :goto_4a
    return v5

    .line 129
    :catch_4b
    move-exception v1

    .line 130
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0
.end method

.method public setCurrentNetworkState(I)Z
    .registers 8
    .param p1, "state"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "net_state"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_21} :catch_23

    .line 192
    nop

    .line 193
    return v5

    .line 189
    :catch_23
    move-exception v1

    .line 190
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string/jumbo v3, "setCurrentNetworkState"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return v0
.end method

.method public setLimit(ZJ)Z
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "rate"    # J

    .line 103
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "limit"

    aput-object v4, v3, v0

    if-eqz p1, :cond_1c

    const-string v4, "en"

    goto :goto_1e

    :cond_1c
    const-string v4, "dis"

    :goto_1e
    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_2b} :catch_2d

    .line 109
    nop

    .line 110
    return v5

    .line 106
    :catch_2d
    move-exception v1

    .line 107
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .param p4, "type"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_pkg_rule"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_32} :catch_34

    .line 171
    nop

    .line 172
    return v4

    .line 168
    :catch_34
    move-exception v1

    .line 169
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string/jumbo v3, "setMiuiFirewallRule"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return v0
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :try_start_9
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "setmtu"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 181
    goto :goto_2d

    .line 179
    :catch_24
    move-exception v0

    .line 180
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setMtu"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_2d
    return-void
.end method

.method public setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .line 230
    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .line 231
    return-void
.end method

.method public setQos(IIIZ)Z
    .registers 12
    .param p1, "protocol"    # I
    .param p2, "uid"    # I
    .param p3, "tos"    # I
    .param p4, "add"    # Z

    .line 219
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "diffserv"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_uid_qos"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    if-eqz p4, :cond_31

    const-string v6, "enable"

    goto :goto_33

    :cond_31
    const-string v6, "disable"

    :goto_33
    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_38} :catch_3a

    .line 225
    nop

    .line 226
    return v5

    .line 222
    :catch_3a
    move-exception v1

    .line 223
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    const-string/jumbo v3, "setQos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    return v0
.end method

.method public updateIface(Ljava/lang/String;)Z
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateiface"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1d} :catch_24

    .line 148
    nop

    .line 149
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    return v4

    .line 145
    :catch_24
    move-exception v1

    .line 146
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0
.end method

.method public updateWmm(II)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "wmm"    # I

    .line 81
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updatewmm"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_2a

    .line 87
    nop

    .line 88
    return v5

    .line 84
    :catch_2a
    move-exception v1

    .line 85
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0
.end method

.method public whiteListUid(IZ)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "add"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "whitelist"

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    if-eqz p2, :cond_24

    const-string v6, "add"

    goto :goto_27

    :cond_24
    const-string/jumbo v6, "rmv"

    :goto_27
    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_2c} :catch_2e

    .line 98
    nop

    .line 99
    return v5

    .line 95
    :catch_2e
    move-exception v1

    .line 96
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NetworkManagement"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0
.end method
