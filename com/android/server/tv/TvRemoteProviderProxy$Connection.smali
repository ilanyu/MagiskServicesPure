.class final Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

.field private final mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V
    .registers 3
    .param p2, "provider"    # Landroid/media/tv/ITvRemoteProvider;

    .line 276
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    .line 278
    new-instance p1, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    .line 279
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method clearInputBridge(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 378
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_5b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_5b

    .line 380
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 381
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": clearInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_7d

    .line 386
    .local v1, "idToken":J
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 387
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_56

    .line 390
    :cond_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    nop

    .line 392
    .end local v1    # "idToken":J
    goto :goto_7b

    .line 390
    .restart local v1    # "idToken":J
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 393
    .end local v1    # "idToken":J
    :cond_5b
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 394
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_7b
    :goto_7b
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method closeInputBridge(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 353
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 354
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_5b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_5b

    .line 355
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 356
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": closeInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_7d

    .line 361
    .local v1, "idToken":J
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 362
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_56

    .line 365
    :cond_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .line 367
    .end local v1    # "idToken":J
    goto :goto_7b

    .line 365
    .restart local v1    # "idToken":J
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 368
    .end local v1    # "idToken":J
    :cond_5b
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 369
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_7b
    :goto_7b
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public dispose()V
    .registers 3

    .line 300
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->dispose()V

    .line 303
    return-void
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 307
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onInputBridgeConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    .line 312
    goto :goto_2a

    .line 310
    :catch_22
    move-exception v0

    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TvRemoteProvProxy"

    const-string v2, "Failed to deliver onInputBridgeConnected. "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I

    move-object v1, p0

    .line 327
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 328
    :try_start_8
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v0

    if-ne v0, v1, :cond_78

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v3

    if-ne v0, v3, :cond_78

    .line 329
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 330
    const-string v0, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": openInputBridge, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_9f

    move-object/from16 v4, p1

    :try_start_33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_48

    move-object/from16 v12, p2

    :try_start_3d
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 349
    :catchall_48
    move-exception v0

    goto :goto_a2

    .line 333
    :cond_4a
    move-object/from16 v4, p1

    move-object/from16 v12, p2

    :goto_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_a6

    move-wide v13, v5

    .line 335
    .local v13, "idToken":J
    :try_start_53
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 336
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v7, v4

    move-object v8, v12

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_6e
    .catchall {:try_start_53 .. :try_end_6e} :catchall_73

    .line 340
    :cond_6e
    :try_start_6e
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    nop

    .line 342
    .end local v13    # "idToken":J
    goto :goto_9d

    .line 340
    .restart local v13    # "idToken":J
    :catchall_73
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 343
    .end local v13    # "idToken":J
    :cond_78
    move-object/from16 v4, p1

    move-object/from16 v12, p2

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 344
    const-string v0, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_9d
    :goto_9d
    monitor-exit v2

    .line 350
    return-void

    .line 349
    :catchall_9f
    move-exception v0

    move-object/from16 v4, p1

    :goto_a2
    move-object/from16 v12, p2

    :goto_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_6e .. :try_end_a5} :catchall_a6

    throw v0

    :catchall_a6
    move-exception v0

    goto :goto_a4
.end method

.method public register()Z
    .registers 4

    .line 282
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::register()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v1}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2c} :catch_2e

    .line 292
    const/4 v0, 0x1

    return v0

    .line 293
    :catch_2e
    move-exception v1

    .line 294
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V

    .line 296
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method sendKeyDown(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 426
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 433
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 434
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 438
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    nop

    .line 440
    .end local v1    # "idToken":J
    goto :goto_5d

    .line 438
    .restart local v1    # "idToken":J
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 441
    .end local v1    # "idToken":J
    :cond_3c
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 442
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyDown, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method sendKeyUp(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 452
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 459
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 460
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 463
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    nop

    .line 465
    .end local v1    # "idToken":J
    goto :goto_5d

    .line 463
    .restart local v1    # "idToken":J
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 466
    .end local v1    # "idToken":J
    :cond_3c
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 467
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyUp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method sendPointerDown(Landroid/os/IBinder;III)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 476
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_40

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_40

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_63

    .line 484
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 485
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3b

    .line 489
    :cond_36
    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    nop

    .line 491
    .end local v1    # "idToken":J
    goto :goto_61

    .line 489
    .restart local v1    # "idToken":J
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 492
    .end local v1    # "idToken":J
    :cond_40
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 493
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerDown, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_61
    :goto_61
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_36 .. :try_end_65} :catchall_63

    throw v1
.end method

.method sendPointerSync(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 528
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 536
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 537
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 540
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    nop

    .line 542
    .end local v1    # "idToken":J
    goto :goto_5d

    .line 540
    .restart local v1    # "idToken":J
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 543
    .end local v1    # "idToken":J
    :cond_3c
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 544
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerSync, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method sendPointerUp(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    .line 502
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 503
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 510
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 511
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 515
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    nop

    .line 517
    .end local v1    # "idToken":J
    goto :goto_5d

    .line 515
    .restart local v1    # "idToken":J
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 518
    .end local v1    # "idToken":J
    :cond_3c
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 519
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerUp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method sendTimestamp(Landroid/os/IBinder;J)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    .line 403
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 404
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 407
    .local v1, "idToken":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 408
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 412
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    nop

    .line 414
    .end local v1    # "idToken":J
    goto :goto_5d

    .line 412
    .restart local v1    # "idToken":J
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 415
    .end local v1    # "idToken":J
    :cond_3c
    # getter for: Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 416
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTimeStamp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw v1
.end method
