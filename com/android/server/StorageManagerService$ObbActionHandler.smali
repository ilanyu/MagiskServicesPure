.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"    # Landroid/os/Looper;

    .line 3237
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 3238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3234
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3235
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 3239
    return-void
.end method

.method private connectToService()Z
    .registers 6

    .line 3376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3377
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$4500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3379
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3380
    return v4

    .line 3382
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectService()V
    .registers 3

    .line 3386
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$4102(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3388
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 3243
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x14

    packed-switch v0, :pswitch_data_158

    goto/16 :goto_157

    .line 3330
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3335
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3336
    :try_start_16
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3338
    .local v3, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    iget-object v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3339
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/StorageManagerService$ObbState;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StorageManagerService$ObbState;

    .line 3347
    .local v5, "state":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v6, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 3348
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3350
    .end local v5    # "state":Lcom/android/server/StorageManagerService$ObbState;
    :cond_40
    goto :goto_29

    .line 3352
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 3356
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v7, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    invoke-static {v7, v6}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_7d

    .line 3359
    :try_start_56
    iget-object v7, v6, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v8, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v9, v6, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v7, v8, v9, v2}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_60
    .catchall {:try_start_56 .. :try_end_5f} :catchall_7d

    .line 3364
    goto :goto_79

    .line 3361
    :catch_60
    move-exception v7

    .line 3362
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v8, "StorageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_79
    goto :goto_45

    .line 3366
    .end local v3    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/StorageManagerService$ObbState;>;"
    :cond_7a
    monitor-exit v1

    .line 3367
    goto/16 :goto_157

    .line 3366
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_7d

    throw v2

    .line 3294
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_80
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_157

    .line 3295
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_8f

    .line 3296
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    .line 3298
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_157

    .line 3299
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3301
    .local v1, "action":Lcom/android/server/StorageManagerService$ObbAction;
    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const-string v4, "Failed to bind to media container service"

    invoke-direct {v2, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3303
    .end local v1    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_9b

    .line 3304
    :cond_b2
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_157

    .line 3314
    :pswitch_b9
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c6

    .line 3315
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3317
    :cond_c6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d7

    .line 3318
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_157

    .line 3319
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_157

    .line 3325
    :cond_d7
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3327
    goto/16 :goto_157

    .line 3269
    :pswitch_e2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_ef

    .line 3270
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v2}, Lcom/android/server/StorageManagerService;->access$4102(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3272
    :cond_ef
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-nez v0, :cond_11a

    .line 3274
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3276
    .restart local v1    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const-string v4, "Failed to bind to media container service"

    invoke-direct {v2, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3278
    .end local v1    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_fd

    .line 3279
    :cond_114
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_157

    .line 3280
    :cond_11a
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_130

    .line 3281
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3282
    .local v0, "action":Lcom/android/server/StorageManagerService$ObbAction;
    if-eqz v0, :cond_12f

    .line 3283
    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    .line 3285
    .end local v0    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    :cond_12f
    goto :goto_157

    .line 3287
    :cond_130
    const-string v0, "StorageManagerService"

    const-string v1, "Empty queue"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    goto :goto_157

    .line 3245
    :pswitch_138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3253
    .restart local v0    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-nez v1, :cond_151

    .line 3256
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v1

    if-nez v1, :cond_151

    .line 3257
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const-string v2, "Failed to bind to media container service"

    invoke-direct {v1, v3, v2}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3259
    return-void

    .line 3263
    :cond_151
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3264
    nop

    .line 3370
    .end local v0    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    :cond_157
    :goto_157
    return-void

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_138
        :pswitch_e2
        :pswitch_b9
        :pswitch_80
        :pswitch_b
    .end packed-switch
.end method
