.class Lcom/android/server/vr/VrManagerService$2;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 307
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_9c

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :pswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_26

    move v1, v2

    nop

    :cond_26
    move v0, v1

    .line 333
    .local v0, "state":Z
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 334
    .local v1, "i":I
    :goto_31
    if-lez v1, :cond_47

    .line 335
    add-int/lit8 v1, v1, -0x1

    .line 337
    :try_start_35
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 338
    invoke-interface {v2, v0}, Landroid/service/vr/IPersistentVrStateCallbacks;->onPersistentVrStateChanged(Z)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_44} :catch_45

    goto :goto_46

    .line 339
    :catch_45
    move-exception v2

    .line 341
    :goto_46
    goto :goto_31

    .line 343
    :cond_47
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 344
    .end local v0    # "state":Z
    .end local v1    # "i":I
    goto :goto_9b

    .line 325
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 326
    :try_start_58
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 327
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$900(Lcom/android/server/vr/VrManagerService;)V

    .line 329
    :cond_65
    monitor-exit v0

    .line 330
    goto :goto_9b

    .line 329
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_67

    throw v1

    .line 312
    :pswitch_6a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_70

    move v1, v2

    nop

    :cond_70
    move v0, v1

    .line 313
    .restart local v0    # "state":Z
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 314
    .restart local v1    # "i":I
    :goto_7b
    if-lez v1, :cond_91

    .line 315
    add-int/lit8 v1, v1, -0x1

    .line 317
    :try_start_7f
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v0}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_8e} :catch_8f

    goto :goto_90

    .line 318
    :catch_8f
    move-exception v2

    .line 320
    :goto_90
    goto :goto_7b

    .line 322
    :cond_91
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 323
    .end local v0    # "state":Z
    .end local v1    # "i":I
    nop

    .line 348
    :goto_9b
    return-void

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_51
        :pswitch_20
    .end packed-switch
.end method
