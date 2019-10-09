.class final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCallback"
.end annotation


# instance fields
.field private final mChannels:[Landroid/view/InputChannel;

.field private final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .registers 4
    .param p2, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p3, "channels"    # [Landroid/view/InputChannel;

    .line 2407
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    .line 2408
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2409
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    .line 2410
    return-void
.end method

.method private addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .registers 9
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;

    .line 2435
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_5f

    .line 2439
    nop

    .line 2441
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2442
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 2443
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2444
    .local v3, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-nez v3, :cond_50

    .line 2445
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ClientState;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-direct {v4, v5, v1, v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    move-object v3, v4

    .line 2447
    :try_start_3b
    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_47

    .line 2451
    nop

    .line 2452
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 2448
    :catch_47
    move-exception v4

    .line 2449
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TvInputManagerService"

    const-string v6, "client process has already died"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    return v0

    .line 2454
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2455
    const/4 v0, 0x1

    return v0

    .line 2436
    .end local v1    # "clientToken":Landroid/os/IBinder;
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v3    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    :catch_5f
    move-exception v1

    .line 2437
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TvInputManagerService"

    const-string/jumbo v3, "session process has already died"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2438
    return v0
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2460
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2464
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2472
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2475
    goto :goto_30

    .line 2473
    :catch_28
    move-exception v1

    .line 2474
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onChannelRetuned"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2477
    return-void

    .line 2465
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2476
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onContentAllowed()V
    .registers 5

    .line 2549
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2553
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2557
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2560
    goto :goto_30

    .line 2558
    :catch_28
    move-exception v1

    .line 2559
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onContentAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2561
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2562
    return-void

    .line 2554
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2561
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "rating"    # Ljava/lang/String;

    .line 2566
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2570
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2574
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2577
    goto :goto_30

    .line 2575
    :catch_28
    move-exception v1

    .line 2576
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onContentBlocked"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2578
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2579
    return-void

    .line 2571
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2578
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onError(I)V
    .registers 6
    .param p1, "error"    # I

    .line 2710
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2714
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2718
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onError(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2721
    goto :goto_30

    .line 2719
    :catch_28
    move-exception v1

    .line 2720
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onError"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2722
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2723
    return-void

    .line 2715
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2722
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onLayoutSurface(IIII)V
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2583
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2588
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_38

    if-nez v1, :cond_18

    goto :goto_36

    .line 2592
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2593
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    .line 2592
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_2c
    .catchall {:try_start_18 .. :try_end_2b} :catchall_38

    .line 2596
    goto :goto_34

    .line 2594
    :catch_2c
    move-exception v1

    .line 2595
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onLayoutSurface"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2597
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    monitor-exit v0

    .line 2598
    return-void

    .line 2589
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    .line 2597
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public onRecordingStopped(Landroid/net/Uri;)V
    .registers 6
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 2691
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2696
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2700
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onRecordingStopped(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2703
    goto :goto_30

    .line 2701
    :catch_28
    move-exception v1

    .line 2702
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onRecordingStopped"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2705
    return-void

    .line 2697
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2704
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;
    .param p2, "hardwareSessionToken"    # Landroid/os/IBinder;

    .line 2417
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2418
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 2419
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2420
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2421
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2422
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object v7, v2, v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2423
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    .line 2421
    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_66

    .line 2425
    :cond_3c
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->access$7000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2426
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2427
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v10

    .line 2426
    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 2429
    :goto_66
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2430
    monitor-exit v0

    .line 2431
    return-void

    .line 2430
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .line 2602
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2607
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2611
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2614
    goto :goto_30

    .line 2612
    :catch_28
    move-exception v1

    .line 2613
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onSessionEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2615
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2616
    return-void

    .line 2608
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2615
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTimeShiftCurrentPositionChanged(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 2654
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2658
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2662
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2663
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    .line 2662
    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2666
    goto :goto_30

    .line 2664
    :catch_28
    move-exception v1

    .line 2665
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTimeShiftCurrentPositionChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2668
    return-void

    .line 2659
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2667
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTimeShiftStartPositionChanged(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 2637
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2641
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2645
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2648
    goto :goto_30

    .line 2646
    :catch_28
    move-exception v1

    .line 2647
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTimeShiftStartPositionChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2649
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2650
    return-void

    .line 2642
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2649
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTimeShiftStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .line 2620
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2624
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2628
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2631
    goto :goto_30

    .line 2629
    :catch_28
    move-exception v1

    .line 2630
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTimeShiftStatusChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2632
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2633
    return-void

    .line 2625
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2632
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 2498
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2502
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2506
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2509
    goto :goto_30

    .line 2507
    :catch_28
    move-exception v1

    .line 2508
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTrackSelected"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2510
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2511
    return-void

    .line 2503
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2510
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 2481
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2485
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2489
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2492
    goto :goto_30

    .line 2490
    :catch_28
    move-exception v1

    .line 2491
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTracksChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2493
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2494
    return-void

    .line 2486
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2493
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onTuned(Landroid/net/Uri;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2673
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2677
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2681
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/media/tv/ITvInputClient;->onTuned(ILandroid/net/Uri;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2684
    goto :goto_30

    .line 2682
    :catch_28
    move-exception v1

    .line 2683
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onTuned"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2685
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2686
    return-void

    .line 2678
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2685
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onVideoAvailable()V
    .registers 5

    .line 2515
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2519
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2523
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2526
    goto :goto_30

    .line 2524
    :catch_28
    move-exception v1

    .line 2525
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onVideoAvailable"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2527
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2528
    return-void

    .line 2520
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2527
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onVideoUnavailable(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 2532
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2536
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2540
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2543
    goto :goto_30

    .line 2541
    :catch_28
    move-exception v1

    .line 2542
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onVideoUnavailable"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2544
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 2545
    return-void

    .line 2537
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2544
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method
