.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetDnsForwardersErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1743
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1746
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in setDnsForwarders"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const v0, 0x5006f

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;->notify(I)V

    .line 1749
    :try_start_f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 1750
    goto :goto_1c

    :catch_1b
    move-exception v0

    .line 1752
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_29

    .line 1753
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 1754
    :goto_2a
    return-void
.end method
