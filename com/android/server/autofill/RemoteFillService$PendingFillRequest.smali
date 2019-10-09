.class final Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFillRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mRequest:Landroid/service/autofill/FillRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 533
    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 534
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    .line 536
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 596
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 527
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 527
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .registers 5

    .line 636
    invoke-super {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 639
    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_b
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 641
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1e

    .line 642
    if-eqz v1, :cond_1c

    .line 644
    :try_start_10
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 647
    goto :goto_1c

    .line 645
    :catch_14
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteFillService"

    const-string v3, "Error cancelling a fill request"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0

    .line 641
    .end local v1    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "remoteService"    # Lcom/android/server/autofill/RemoteFillService;

    .line 603
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 605
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 606
    if-eqz v1, :cond_b

    .line 607
    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    invoke-static {p1, v1}, Lcom/android/server/autofill/RemoteFillService;->access$1300(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    .line 609
    :cond_b
    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    invoke-static {p1, p0}, Lcom/android/server/autofill/RemoteFillService;->access$1400(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    .line 610
    return-void

    .line 605
    .end local v1    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public run()V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 616
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_26

    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run() called after canceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_26
    monitor-exit v0

    return-void

    .line 619
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_4e

    .line 620
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 623
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_4d

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 625
    :try_start_35
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_41

    .line 630
    goto :goto_4d

    .line 626
    :catch_41
    move-exception v1

    .line 627
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteFillService"

    const-string v3, "Error calling on fill request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/4 v2, 0x0

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    invoke-static {v0, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 632
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void

    .line 619
    .end local v0    # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method
