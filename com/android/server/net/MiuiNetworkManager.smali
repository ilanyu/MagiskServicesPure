.class public Lcom/android/server/net/MiuiNetworkManager;
.super Landroid/net/IMiuiNetworkManager$Stub;
.source "MiuiNetworkManager.java"


# static fields
.field private static sSelf:Lcom/android/server/net/MiuiNetworkManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/net/IMiuiNetworkManager$Stub;-><init>()V

    return-void
.end method

.method public static final get()Lcom/android/server/net/MiuiNetworkManager;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/server/net/MiuiNetworkManager;->sSelf:Lcom/android/server/net/MiuiNetworkManager;

    if-nez v0, :cond_b

    .line 11
    new-instance v0, Lcom/android/server/net/MiuiNetworkManager;

    invoke-direct {v0}, Lcom/android/server/net/MiuiNetworkManager;-><init>()V

    sput-object v0, Lcom/android/server/net/MiuiNetworkManager;->sSelf:Lcom/android/server/net/MiuiNetworkManager;

    .line 13
    :cond_b
    sget-object v0, Lcom/android/server/net/MiuiNetworkManager;->sSelf:Lcom/android/server/net/MiuiNetworkManager;

    return-object v0
.end method


# virtual methods
.method public setNetworkTrafficPolicy(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 18
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->get()Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->setNetworkTrafficPolicy(I)Z

    move-result v0

    return v0
.end method

.method public setRpsStatus(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 23
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->get()Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->setRpsStatus(Z)Z

    move-result v0

    return v0
.end method
