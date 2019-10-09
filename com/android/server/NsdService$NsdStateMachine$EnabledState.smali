.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 213
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 19
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p2

    .line 385
    const/4 v3, 0x1

    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 386
    .local v4, "id":I
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/NsdService$ClientInfo;

    .line 387
    .local v5, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const/4 v0, 0x2

    const/4 v6, 0x0

    if-nez v5, :cond_37

    .line 388
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "name":Ljava/lang/String;
    const-string v8, "NsdService"

    const-string v9, "id %d for %s has no client mapping"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v6

    aput-object v7, v0, v3

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v6

    .line 394
    .end local v7    # "name":Ljava/lang/String;
    :cond_37
    # invokes: Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I
    invoke-static {v5, v4}, Lcom/android/server/NsdService$ClientInfo;->access$2400(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v7

    .line 395
    .local v7, "clientId":I
    if-gez v7, :cond_57

    .line 399
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "name":Ljava/lang/String;
    const-string v9, "NsdService"

    const-string v10, "Notification %s for listener id %d that is no longer active"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v6

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v3

    .line 400
    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v6

    .line 406
    .end local v8    # "name":Ljava/lang/String;
    :cond_57
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v8

    .line 407
    .restart local v8    # "name":Ljava/lang/String;
    const-string v9, "NsdService"

    const-string v10, "Native daemon message %s: %s"

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v8, v11, v6

    aput-object v2, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v8    # "name":Ljava/lang/String;
    const/4 v8, 0x4

    const/4 v9, 0x3

    const v10, 0x60013

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_1e6

    .line 511
    return v6

    .line 499
    :pswitch_76
    :try_start_76
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 500
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v8, 0x60014

    .line 501
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v9

    .line 500
    invoke-virtual {v0, v8, v6, v7, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_91
    .catch Ljava/net/UnknownHostException; {:try_start_76 .. :try_end_91} :catch_92

    .line 505
    goto :goto_9a

    .line 502
    :catch_92
    move-exception v0

    .line 503
    .local v0, "e":Ljava/net/UnknownHostException;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    invoke-virtual {v8, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 506
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_9a
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    .line 507
    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 508
    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 509
    goto/16 :goto_1e3

    .line 490
    :pswitch_a9
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    .line 491
    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 492
    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 493
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 495
    goto/16 :goto_1e3

    .line 443
    :pswitch_bf
    goto/16 :goto_1e3

    .line 440
    :pswitch_c1
    goto/16 :goto_1e3

    .line 446
    :pswitch_c3
    move v12, v6

    .line 447
    .local v12, "index":I
    :goto_c4
    aget-object v13, p3, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_e5

    aget-object v13, p3, v0

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v11, 0x2e

    if-eq v13, v11, :cond_e5

    .line 448
    aget-object v11, p3, v0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x5c

    if-ne v11, v13, :cond_e2

    .line 449
    add-int/lit8 v12, v12, 0x1

    .line 451
    :cond_e2
    add-int/2addr v12, v3

    .line 446
    const/4 v11, 0x0

    goto :goto_c4

    .line 453
    :cond_e5
    aget-object v11, p3, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v12, v11, :cond_105

    .line 454
    const-string v0, "NsdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid service found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    goto/16 :goto_1e3

    .line 457
    :cond_105
    aget-object v11, p3, v0

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, "name":Ljava/lang/String;
    aget-object v0, p3, v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "rest":Ljava/lang/String;
    const-string v13, ".local."

    const-string v3, ""

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "type":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v13, v11}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 463
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 464
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 465
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 466
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v8

    const/4 v13, 0x6

    aget-object v13, p3, v13

    invoke-virtual {v8, v13}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    .line 468
    iget-object v8, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v8, v8, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v8, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 469
    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 471
    iget-object v8, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v8, v8, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v8}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v8

    .line 472
    .local v8, "id2":I
    iget-object v13, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    aget-object v9, p3, v9

    # invokes: Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z
    invoke-static {v13, v8, v9}, Lcom/android/server/NsdService;->access$2800(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16c

    .line 473
    const v6, 0x60012

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_1e3

    .line 475
    :cond_16c
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    invoke-virtual {v9, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 477
    const/4 v9, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5, v9}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 479
    goto/16 :goto_1e3

    .line 482
    .end local v0    # "rest":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v8    # "id2":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "index":I
    :pswitch_179
    move-object v9, v11

    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 483
    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 484
    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5, v9}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 485
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 487
    goto :goto_1e3

    .line 429
    :pswitch_18f
    move-object v9, v11

    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    invoke-direct {v3, v0, v9}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 430
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v6, 0x6000b

    invoke-virtual {v3, v6, v4, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 432
    goto :goto_1e3

    .line 435
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_1a3
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x6000a

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 437
    goto :goto_1e3

    .line 418
    :pswitch_1ae
    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    aget-object v8, p3, v9

    invoke-direct {v3, v0, v8}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 419
    .restart local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v8, 0x60005

    invoke-virtual {v3, v8, v6, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 421
    goto :goto_1e3

    .line 412
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_1c3
    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    aget-object v8, p3, v9

    invoke-direct {v3, v0, v8}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 413
    .restart local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v8, 0x60004

    invoke-virtual {v3, v8, v6, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 415
    goto :goto_1e3

    .line 424
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_1d8
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x60003

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 426
    nop

    .line 513
    :goto_1e3
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_1e6
    .packed-switch 0x25a
        :pswitch_1d8
        :pswitch_1c3
        :pswitch_1ae
        :pswitch_1a3
        :pswitch_18f
        :pswitch_179
        :pswitch_c3
        :pswitch_c1
        :pswitch_bf
        :pswitch_a9
        :pswitch_76
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .line 244
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 245
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 246
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 247
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .registers 5
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .line 230
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_24

    .line 231
    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    .line 238
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$900(Lcom/android/server/NsdService;Z)V

    .line 217
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 218
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 220
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 225
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    .line 227
    :cond_19
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_24e

    .line 378
    return v2

    .line 372
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NsdService$NativeEvent;

    .line 373
    .local v0, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v1, v0, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v3, v0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22b

    .line 374
    return v2

    .line 266
    .end local v0    # "event":Lcom/android/server/NsdService$NativeEvent;
    :sswitch_19
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    # getter for: Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 267
    goto/16 :goto_22b

    .line 351
    :sswitch_26
    const-string v0, "NsdService"

    const-string v1, "Resolve service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 353
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 356
    .local v1, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v1}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v3

    const v4, 0x60013

    if-eqz v3, :cond_54

    .line 357
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v3}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 359
    goto/16 :goto_22b

    .line 362
    :cond_54
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v3}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v3

    .line 363
    .local v3, "id":I
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v5, v3, v0}, Lcom/android/server/NsdService;->access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 364
    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v1, v2}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 365
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_22b

    .line 367
    :cond_77
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v4, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 370
    goto/16 :goto_22b

    .line 333
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_80
    const-string v0, "NsdService"

    const-string/jumbo v1, "unregister service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 336
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const v1, 0x6000d

    :try_start_9b
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_9b .. :try_end_a5} :catch_cb

    .line 341
    .restart local v3    # "id":I
    nop

    .line 340
    nop

    .line 342
    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 343
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v4, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 344
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x6000e

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, p1, v2}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_22b

    .line 346
    :cond_c2
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 349
    goto/16 :goto_22b

    .line 337
    .end local v3    # "id":I
    :catch_cb
    move-exception v3

    .line 338
    .local v3, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 340
    goto/16 :goto_22b

    .line 313
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :sswitch_d5
    const-string v0, "NsdService"

    const-string v3, "Register service"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 315
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v3

    const v4, 0x6000a

    if-eqz v3, :cond_fe

    .line 316
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 318
    goto/16 :goto_22b

    .line 321
    :cond_fe
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v1}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v1

    .line 322
    .local v1, "id":I
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    # invokes: Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v3, v1, v5}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 323
    const-string v2, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_22b

    .line 327
    :cond_13d
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 328
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v4, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 331
    goto/16 :goto_22b

    .line 294
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v1    # "id":I
    :sswitch_14d
    const-string v0, "NsdService"

    const-string v1, "Stop service discovery"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 298
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const v1, 0x60007

    :try_start_167
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_171
    .catch Ljava/lang/NullPointerException; {:try_start_167 .. :try_end_171} :catch_197

    .line 303
    .local v3, "id":I
    nop

    .line 302
    nop

    .line 304
    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 305
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v4, v3}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 306
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60008

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, p1, v2}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_22b

    .line 308
    :cond_18e
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 311
    goto/16 :goto_22b

    .line 299
    .end local v3    # "id":I
    :catch_197
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 302
    goto/16 :goto_22b

    .line 269
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :sswitch_1a1
    const-string v0, "NsdService"

    const-string v3, "Discover services"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 271
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NsdService$ClientInfo;

    .line 273
    .local v3, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v4

    const v5, 0x60003

    if-eqz v4, :cond_1cd

    .line 274
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v5, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 276
    goto :goto_22b

    .line 279
    :cond_1cd
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v1}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v1

    .line 280
    .restart local v1    # "id":I
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z
    invoke-static {v4, v1, v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 282
    const-string v2, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 286
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v4, 0x60002

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, p1, v4, v0}, Lcom/android/server/NsdService;->access$1700(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_22b

    .line 288
    :cond_21c
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v4, v1}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    .line 289
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 292
    nop

    .line 380
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "id":I
    .end local v3    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_22b
    :goto_22b
    const/4 v0, 0x1

    return v0

    .line 263
    :sswitch_22d
    return v2

    .line 257
    :sswitch_22e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_24b

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    .line 258
    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_24b

    .line 259
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 261
    :cond_24b
    return v2

    nop

    nop

    :sswitch_data_24e
    .sparse-switch
        0x11000 -> :sswitch_22e
        0x11004 -> :sswitch_22d
        0x60001 -> :sswitch_1a1
        0x60006 -> :sswitch_14d
        0x60009 -> :sswitch_d5
        0x6000c -> :sswitch_80
        0x60012 -> :sswitch_26
        0x60019 -> :sswitch_19
        0x6001a -> :sswitch_8
    .end sparse-switch
.end method
