.class final Lcom/android/server/autofill/RemoteFillService;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingRequest;,
        Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;,
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final MSG_UNBIND:I = 0x3

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private mAutoFillService:Landroid/service/autofill/IAutoFillService;

.field private final mBindInstantServiceAllowed:Z

.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private mCompleted:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 117
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    .line 118
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 119
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    .line 121
    iput p3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean p5, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    .line 124
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "x2"    # Landroid/service/autofill/FillResponse;
    .param p3, "x3"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "x2"    # Landroid/content/IntentSender;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Landroid/service/autofill/IAutoFillService;

    .line 63
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 63
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 63
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScheduledUnbind()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    return-void
.end method

.method private checkIfDestroyed()Z
    .registers 4

    .line 422
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_25

    .line 423
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_25

    .line 424
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 6
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "requestFlags"    # I

    .line 313
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method private dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 4
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 332
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 341
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 361
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 352
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method private ensureBound()V
    .registers 8

    .line 261
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_85

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-eqz v0, :cond_c

    goto/16 :goto_85

    .line 264
    :cond_c
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2d

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureBound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 267
    const v0, 0x4000001

    .line 268
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_3a

    .line 269
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 275
    :cond_3a
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    .line 278
    .local v1, "willBind":Z
    if-nez v1, :cond_84

    .line 279
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 283
    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    if-nez v2, :cond_84

    .line 286
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->binderDied()V

    .line 289
    :cond_84
    return-void

    .line 262
    .end local v0    # "flags":I
    .end local v1    # "willBind":Z
    :cond_85
    :goto_85
    return-void
.end method

.method private ensureUnbound()V
    .registers 6

    .line 292
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-nez v0, :cond_b

    .line 293
    return-void

    .line 295
    :cond_b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2c

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureUnbound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 299
    :try_start_35
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1, v0}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 302
    goto :goto_52

    .line 300
    :catch_3b
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception calling onDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_52
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_62

    .line 304
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 308
    :cond_62
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    return-void
.end method

.method private handleBinderDied()V
    .registers 3

    .line 148
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_15

    .line 150
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 152
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    .line 155
    return-void
.end method

.method private handleDestroy()V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 137
    :cond_13
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    .line 139
    return-void
.end method

.method private handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 237
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 238
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    if-eqz v0, :cond_c

    .line 239
    return-void

    .line 241
    :cond_c
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_21

    .line 242
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_1b

    .line 243
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 245
    :cond_1b
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 246
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureBound()V

    goto :goto_4e

    .line 248
    :cond_21
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_42

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handlePendingRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->run()V

    .line 250
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    .line 254
    :cond_4e
    :goto_4e
    return-void
.end method

.method private handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z
    .registers 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 369
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 370
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-ne v0, p1, :cond_d

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 375
    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-nez v0, :cond_14

    .line 376
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->scheduleUnbind()V

    .line 378
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private handleUnbind()V
    .registers 2

    .line 232
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 233
    :cond_7
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 234
    return-void
.end method

.method private isBound()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$1sGSxm1GNkRnOTqlIJFPKrlV6Bk(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method public static synthetic lambda$KN9CcjjmJTg_PJcamzzLgVvQt9M(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleDestroy()V

    return-void
.end method

.method public static synthetic lambda$YjPsINV7QuCehWwsB0GTTg1hvr4(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestFailure$1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 325
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 326
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {v0, v1, p2, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 328
    :cond_19
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestSuccess$0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 7
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "requestFlags"    # I

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 315
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 316
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-interface {v0, v1, p2, v2, p3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    .line 318
    :cond_19
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestTimeout$2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 334
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(ILjava/lang/String;)V

    .line 337
    :cond_19
    return-void
.end method

.method static synthetic lambda$dispatchOnFillTimeout$3(Landroid/os/ICancellationSignal;)V
    .registers 5
    .param p0, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 343
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 346
    goto :goto_1b

    .line 344
    :catch_4
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestFailure$5(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 363
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 365
    :cond_11
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestSuccess$4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 356
    :cond_11
    return-void
.end method

.method public static synthetic lambda$h6FPsdmILphrDZs953cJIyumyqg(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method private scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 4
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 195
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void
.end method

.method private scheduleUnbind()V
    .registers 5

    .line 224
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;

    .line 226
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 227
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 225
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public cancelCurrentRequest()I
    .registers 3

    .line 167
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_7

    .line 168
    const/high16 v0, -0x80000000

    return v0

    .line 171
    :cond_7
    const/high16 v0, -0x80000000

    .line 172
    .local v0, "requestId":I
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_27

    .line 173
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    instance-of v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v1, :cond_1f

    .line 174
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    check-cast v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    .line 177
    :cond_1f
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 181
    :cond_27
    return v0
.end method

.method public destroy()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 203
    const-string v0, "  "

    .line 204
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    .line 206
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 208
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    .line 210
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 212
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "hasPendingRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v2, :cond_93

    const/4 v2, 0x1

    goto :goto_94

    :cond_93
    const/4 v2, 0x0

    .line 214
    :goto_94
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "mBindInstantServiceAllowed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 217
    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/autofill/FillRequest;

    .line 185
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 186
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 187
    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;

    .line 190
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 191
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 192
    return-void
.end method
