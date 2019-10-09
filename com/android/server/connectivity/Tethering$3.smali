.class Lcom/android/server/connectivity/Tethering$3;
.super Lcom/android/server/connectivity/tethering/IControlsTethering;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$ifname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .line 1907
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$3;->val$ifname:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IControlsTethering;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 6
    .param p1, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "state"    # I
    .param p3, "lastError"    # I

    .line 1911
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$ifname:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    .line 1912
    return-void
.end method

.method public updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 1917
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$ifname:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    .line 1918
    return-void
.end method
