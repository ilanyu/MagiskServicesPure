.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;
    }
.end annotation


# instance fields
.field mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field final mPendingRequests:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    .line 338
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    .line 349
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 350
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 351
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 335
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindIfHasPendingRequestsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    return v0
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private bindLocked()Z
    .registers 9

    .line 386
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_5f

    .line 392
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    .local v0, "identity":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 395
    invoke-static {v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_5a

    .line 396
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1c

    .line 398
    const/4 v3, 0x0

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    return v3

    .line 400
    :cond_1c
    :try_start_1c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 402
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v4, "TextClassificationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const v6, 0x4000001

    iget v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 406
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 403
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 407
    .local v4, "willBind":Z
    iput-boolean v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_5a

    .line 409
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 409
    nop

    .line 411
    return v4

    .line 409
    .end local v4    # "willBind":Z
    :catchall_5a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 387
    .end local v0    # "identity":J
    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    return v0
.end method

.method private handlePendingRequestsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    move-object v1, v0

    .local v1, "request":Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
    if-eqz v0, :cond_35

    .line 363
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 364
    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    .line 366
    :cond_19
    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 367
    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 371
    :cond_26
    :goto_26
    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 375
    :cond_35
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
