.class Lcom/android/server/ConnectivityService$5;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 1643
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 3
    .param p1, "restrictBackground"    # Z

    .line 1651
    if-eqz p1, :cond_11

    .line 1652
    const-string/jumbo v0, "onRestrictBackgroundChanged(true): disabling tethering"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1655
    :cond_11
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .line 1647
    return-void
.end method
