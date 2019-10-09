.class abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/StorageManagerService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 3412
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3413
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 3414
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V
    .registers 6
    .param p1, "handler"    # Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 3420
    const/4 v0, 0x3

    :try_start_1
    iget v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    .line 3421
    iget v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    if-le v1, v0, :cond_21

    .line 3422
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3423
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x14

    const-string v3, "Failed to bind to media container service"

    invoke-direct {v1, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    goto :goto_2d

    .line 3426
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V

    .line 3429
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_2d
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 3434
    :goto_2d
    goto :goto_3b

    .line 3431
    :catch_2e
    move-exception v1

    .line 3432
    .local v1, "e":Lcom/android/server/StorageManagerService$ObbException;
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3433
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3435
    .end local v1    # "e":Lcom/android/server/StorageManagerService$ObbException;
    :goto_3b
    return-void
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    .line 3442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_30

    .line 3445
    .local v0, "obbInfo":Landroid/content/res/ObbInfo;
    nop

    .line 3444
    nop

    .line 3446
    if-eqz v0, :cond_13

    .line 3447
    return-object v0

    .line 3449
    :cond_13
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing OBB info for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v4, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 3443
    .end local v0    # "obbInfo":Landroid/content/res/ObbInfo;
    :catch_30
    move-exception v0

    .line 3444
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation
.end method

.method protected notifyObbStateChange(I)V
    .registers 5
    .param p1, "status"    # I

    .line 3460
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v0, :cond_b

    goto :goto_24

    .line 3465
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v0, v1, v2, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 3468
    goto :goto_23

    .line 3466
    :catch_1b
    move-exception v0

    .line 3467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManagerService"

    const-string v2, "StorageEventListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void

    .line 3461
    :cond_24
    :goto_24
    return-void
.end method

.method protected notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V
    .registers 3
    .param p1, "e"    # Lcom/android/server/StorageManagerService$ObbException;

    .line 3455
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3456
    iget v0, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    .line 3457
    return-void
.end method
