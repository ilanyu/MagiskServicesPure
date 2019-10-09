.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field traceCookie:I

.field traceMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .registers 3
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 15544
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15537
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    .line 15545
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 15546
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 15549
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .registers 1

    .line 15587
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 15588
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 15589
    return-void
.end method

.method setTraceCookie(I)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .registers 2
    .param p1, "traceCookie"    # I

    .line 15558
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 15559
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .registers 2
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 15553
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 15554
    return-object p0
.end method

.method final startCopy()Z
    .registers 5

    .line 15567
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1e

    .line 15568
    const-string v1, "PackageManager"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15569
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15570
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 15571
    return v0

    .line 15573
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_21} :catch_23

    .line 15574
    const/4 v0, 0x1

    .line 15580
    .local v0, "res":Z
    goto :goto_2e

    .line 15576
    .end local v0    # "res":Z
    :catch_23
    move-exception v1

    .line 15578
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15579
    nop

    .line 15581
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "res":Z
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 15582
    return v0
.end method
