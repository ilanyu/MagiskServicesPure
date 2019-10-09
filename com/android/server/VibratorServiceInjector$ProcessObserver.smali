.class Lcom/android/server/VibratorServiceInjector$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorServiceInjector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/VibratorServiceInjector$1;

    .line 411
    invoke-direct {p0}, Lcom/android/server/VibratorServiceInjector$ProcessObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "m":Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 417
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 418
    # getter for: Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    return-void
.end method

.method public onProcessDied(II)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 423
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_5
    # getter for: Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1000()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method
