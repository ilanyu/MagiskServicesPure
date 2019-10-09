.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 589
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 590
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    .line 592
    :cond_15
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82006

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2904(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 593
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 594
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 595
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 597
    :cond_3b
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 598
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 599
    return-void
.end method

.method public exit()V
    .registers 1

    .line 672
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 673
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const v2, 0x82006

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_17

    const v2, 0x82008

    if-eq v0, v2, :cond_10

    .line 666
    return v3

    .line 664
    :cond_10
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-ge v0, v1, :cond_16

    move v3, v4

    nop

    :cond_16
    return v3

    .line 605
    :cond_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v0, v5, :cond_b9

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_b9

    .line 624
    :cond_2b
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 625
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v1, "Network would not satisfy default request, not validating"

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 627
    return v4

    .line 629
    :cond_46
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 636
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 637
    .local v0, "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 640
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_b8

    .line 641
    :cond_63
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 642
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v1, v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2602(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 644
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_b8

    .line 646
    :cond_81
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2904(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    invoke-virtual {v5, v2, v6, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 647
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 648
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V
    invoke-static {v3, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 649
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    invoke-static {v3, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    .line 650
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-lt v3, v1, :cond_a9

    .line 652
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 654
    :cond_a9
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 655
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    const v3, 0x927c0

    if-le v1, v3, :cond_b8

    .line 656
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 659
    .end local v2    # "msg":Landroid/os/Message;
    :cond_b8
    :goto_b8
    return v4

    .line 606
    .end local v0    # "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_b9
    :goto_b9
    return v4
.end method
