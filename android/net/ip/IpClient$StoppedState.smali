.class Landroid/net/ip/IpClient$StoppedState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1429
    iput-object p1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1432
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->stopAllIP()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$500(Landroid/net/ip/IpClient;)V

    .line 1434
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->resetLinkProperties()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$600(Landroid/net/ip/IpClient;)V

    .line 1435
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStartTimeMillis:J
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$700(Landroid/net/ip/IpClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 1436
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x3

    # invokes: Landroid/net/ip/IpClient;->recordMetric(I)V
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$800(Landroid/net/ip/IpClient;I)V

    .line 1437
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # setter for: Landroid/net/ip/IpClient;->mStartTimeMillis:J
    invoke-static {v0, v2, v3}, Landroid/net/ip/IpClient;->access$702(Landroid/net/ip/IpClient;J)J

    .line 1439
    :cond_21
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1443
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30005

    const/4 v2, 0x0

    if-eq v0, v1, :cond_62

    packed-switch v0, :pswitch_data_7e

    packed-switch v0, :pswitch_data_88

    .line 1481
    return v2

    .line 1472
    :pswitch_f
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Landroid/net/ip/IpClient;->mMulticastFiltering:Z
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1502(Landroid/net/ip/IpClient;Z)Z

    .line 1473
    goto :goto_6c

    .line 1467
    :pswitch_1d
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    # setter for: Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1468
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1469
    goto :goto_6c

    .line 1462
    :pswitch_2c
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1464
    goto :goto_6c

    .line 1458
    :pswitch_3b
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1459
    goto :goto_6c

    .line 1453
    :pswitch_41
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    # setter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1002(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$ProvisioningConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    .line 1454
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1455
    goto :goto_6c

    .line 1450
    :pswitch_56
    goto :goto_6c

    .line 1445
    :pswitch_57
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->stopStateMachineUpdaters()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$900(Landroid/net/ip/IpClient;)V

    .line 1446
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->quit()V

    .line 1447
    goto :goto_6c

    .line 1477
    :cond_62
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    const-string v1, "Unexpected CMD_ON_QUIT (already stopped)."

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    nop

    .line 1484
    :goto_6c
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1485
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_41
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x6
        :pswitch_3b
        :pswitch_2c
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method
