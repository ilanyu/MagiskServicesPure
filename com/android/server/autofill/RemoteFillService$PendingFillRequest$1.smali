.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 536
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 574
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$1200(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 7
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 539
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_5
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    .line 542
    :try_start_a
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    # setter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;
    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$902(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    .line 543
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v2

    .line 544
    .local v2, "cancelled":Z
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_26

    .line 545
    if-eqz v2, :cond_24

    .line 547
    :try_start_18
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29

    .line 550
    goto :goto_24

    .line 548
    :catch_1c
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v3, "RemoteFillService"

    const-string v4, "Error requesting a cancellation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "cancelled":Z
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 553
    return-void

    .line 544
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v2

    .line 552
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 587
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 589
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 590
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_16

    .line 591
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService;->access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 594
    :cond_16
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 9
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 558
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->isContainCaptcha()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_17

    .line 560
    return-void

    .line 565
    :cond_17
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 566
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_69

    .line 568
    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->isContainCaptcha()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 569
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$800(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 570
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$800(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    add-long/2addr v3, v5

    .line 570
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 572
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$800(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$800(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;

    .line 574
    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 575
    invoke-virtual {v3, v2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v2

    .line 573
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 580
    :cond_5e
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    .line 581
    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    .line 580
    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1000(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    .line 583
    :cond_69
    return-void
.end method
