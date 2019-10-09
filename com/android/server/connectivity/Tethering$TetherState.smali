.class Lcom/android/server/connectivity/Tethering$TetherState;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetherState"
.end annotation


# instance fields
.field public lastError:I

.field public lastState:I

.field public final stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 3
    .param p1, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 174
    return-void
.end method


# virtual methods
.method public isCurrentlyServing()Z
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    packed-switch v0, :pswitch_data_a

    .line 182
    const/4 v0, 0x0

    return v0

    .line 180
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
