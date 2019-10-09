.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopTetheringErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1732
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1735
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in stopTethering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const v0, 0x5006e

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->notify(I)V

    .line 1738
    :try_start_f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    .line 1739
    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 1740
    :goto_1d
    return-void
.end method
