.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1290
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 1293
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V
    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    .line 1294
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50007

    if-eq v0, v1, :cond_36

    packed-switch v0, :pswitch_data_3a

    .line 1310
    const/4 v0, 0x0

    return v0

    .line 1302
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1304
    .local v0, "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateInactive(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1305
    goto :goto_37

    .line 1296
    .end local v0    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1298
    .restart local v0    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateActive(ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$1300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1299
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$1400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1300
    goto :goto_37

    .line 1308
    .end local v0    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_36
    nop

    .line 1312
    :goto_37
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x50001
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method
