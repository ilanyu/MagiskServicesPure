.class Lcom/android/server/ConnectivityService$3;
.super Lcom/android/server/net/BaseNetworkObserver;
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

    .line 1495
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .registers 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .line 1498
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1499
    .local v0, "deviceType":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V
    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;IZJ)V

    .line 1500
    return-void
.end method

.method public interfaceConfigurationLost()V
    .registers 4

    .line 1505
    const-string v0, "Interface configuration was lost, reset connected network!"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1507
    return-void
.end method
