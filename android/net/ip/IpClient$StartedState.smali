.class Landroid/net/ip/IpClient$StartedState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1522
    iput-object p1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1525
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/ip/IpClient;->mStartTimeMillis:J
    invoke-static {v0, v1, v2}, Landroid/net/ip/IpClient;->access$702(Landroid/net/ip/IpClient;J)J

    .line 1527
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-lez v0, :cond_2a

    .line 1528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    .line 1529
    # getter for: Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1530
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1533
    .end local v0    # "alarmTime":J
    :cond_2a
    invoke-virtual {p0}, Landroid/net/ip/IpClient$StartedState;->readyToProceed()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1534
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_41

    .line 1539
    :cond_3c
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->stopAllIP()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$500(Landroid/net/ip/IpClient;)V

    .line 1541
    :goto_41
    return-void
.end method

.method public exit()V
    .registers 2

    .line 1545
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1546
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1550
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x6

    if-eq v0, v1, :cond_18

    const/16 v1, 0xa

    if-eq v0, v1, :cond_12

    .line 1572
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient;->deferMessage(Landroid/os/Message;)V

    goto :goto_3c

    .line 1563
    :cond_12
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # invokes: Landroid/net/ip/IpClient;->handleProvisioningFailure()V
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2400(Landroid/net/ip/IpClient;)V

    .line 1564
    goto :goto_3c

    .line 1556
    :cond_18
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x0

    # invokes: Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z
    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1557
    invoke-virtual {p0}, Landroid/net/ip/IpClient$StartedState;->readyToProceed()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1558
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_3c

    .line 1552
    :cond_30
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1553
    nop

    .line 1575
    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1576
    const/4 v0, 0x1

    return v0
.end method

.method readyToProceed()Z
    .registers 2

    .line 1580
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    .line 1581
    # getter for: Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1580
    :goto_1b
    return v0
.end method
