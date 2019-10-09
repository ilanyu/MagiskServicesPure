.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 756
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 760
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    .line 761
    return-void
.end method
