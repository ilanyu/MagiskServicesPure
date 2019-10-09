.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;
.super Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalHotspotState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 593
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 596
    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->enter()V

    .line 597
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 598
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 602
    :cond_16
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    .line 603
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 607
    invoke-super {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 609
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V
    invoke-static {v0, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    .line 610
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_1e

    const v2, 0x50070

    if-eq v0, v2, :cond_1d

    .line 618
    const/4 v0, 0x0

    return v0

    .line 616
    :cond_1d
    goto :goto_2a

    .line 612
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while in local-only hotspot mode."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 613
    nop

    .line 620
    :goto_2a
    return v1
.end method
