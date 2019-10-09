.class final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;,
        Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;,
        Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintService"


# instance fields
.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDiscoveryPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private mHasActivePrintJobs:Z

.field private mHasPrinterDiscoverySession:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintService:Landroid/printservice/IPrintService;

.field private final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private mTrackedPrinterList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p5, "callbacks"    # Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$1;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 122
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 123
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .line 124
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 126
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 127
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 128
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrinterId;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/print/RemotePrintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/print/RemotePrintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/print/RemotePrintService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/printservice/IPrintService;

    .line 62
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/print/RemotePrintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/print/RemotePrintService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/print/RemotePrintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrintJobInfo;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/print/RemotePrintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrintJobInfo;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Ljava/util/List;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/print/RemotePrintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Ljava/util/List;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrinterId;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method private ensureBound()V
    .registers 7

    .line 565
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_2f

    .line 571
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 573
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x4400001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 577
    .local v0, "wasBound":Z
    if-nez v0, :cond_2e

    .line 581
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 583
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-nez v1, :cond_2e

    .line 584
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    .line 587
    :cond_2e
    return-void

    .line 566
    .end local v0    # "wasBound":Z
    :cond_2f
    :goto_2f
    return-void
.end method

.method private ensureUnbound()V
    .registers 4

    .line 590
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_b

    .line 591
    return-void

    .line 596
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 597
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 598
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 599
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 600
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 602
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 603
    :try_start_1d
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 604
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_40

    .line 606
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 608
    :try_start_26
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 611
    goto :goto_2d

    .line 609
    :catch_2c
    move-exception v2

    .line 612
    :goto_2d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 613
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 614
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 616
    :cond_3f
    return-void

    .line 604
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method private handleBinderDied()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_e

    .line 169
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 172
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 174
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onServiceDied(Lcom/android/server/print/RemotePrintService;)V

    .line 175
    return-void
.end method

.method private handleCreatePrinterDiscoverySession()V
    .registers 4

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 270
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 271
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 272
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$4;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$4;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 283
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 286
    goto :goto_25

    .line 284
    :catch_1d
    move-exception v0

    .line 285
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error creating printer discovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private handleDestroy()V
    .registers 2

    .line 142
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 145
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 146
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 150
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz v0, :cond_11

    .line 151
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 155
    :cond_11
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 159
    return-void
.end method

.method private handleDestroyPrinterDiscoverySession()V
    .registers 4

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_23

    .line 300
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_15

    .line 301
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 302
    return-void

    .line 304
    :cond_15
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 305
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$5;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$5;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 316
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    .line 319
    goto :goto_31

    .line 317
    :catch_29
    move-exception v0

    .line 318
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error destroying printer dicovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_31
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_38

    .line 323
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 326
    :cond_38
    :goto_38
    return-void
.end method

.method private handleOnAllPrintJobsHandled()V
    .registers 3

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_23

    .line 187
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_15

    .line 188
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 189
    return-void

    .line 191
    :cond_15
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 192
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 204
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_2a

    .line 205
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 208
    :cond_2a
    :goto_2a
    return-void
.end method

.method private handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 243
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 244
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 245
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$3;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 256
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 259
    goto :goto_25

    .line 257
    :catch_1d
    move-exception v0

    .line 258
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error announcing queued pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 216
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 217
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 218
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 229
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 232
    goto :goto_22

    .line 230
    :catch_1a
    move-exception v0

    .line 231
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error canceling a pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 6
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 440
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 441
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 442
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 449
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 452
    goto :goto_31

    .line 450
    :catch_1a
    move-exception v0

    .line 451
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method private handleStartPrinterDiscovery(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 336
    if-eqz p1, :cond_e

    .line 337
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_22

    .line 340
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 341
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 352
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 355
    goto :goto_30

    .line 353
    :catch_28
    move-exception v0

    .line 354
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error starting printer dicovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method private handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 457
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_e

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 462
    :cond_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 465
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_28

    .line 466
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 467
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 478
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 481
    goto :goto_36

    .line 479
    :catch_2e
    move-exception v0

    .line 480
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting start printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 463
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private handleStopPrinterDiscovery()V
    .registers 4

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 367
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 368
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 369
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$7;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$7;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 381
    :cond_17
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 384
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 387
    goto :goto_28

    .line 385
    :catch_20
    move-exception v0

    .line 386
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error stopping printer discovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method private handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 491
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3f

    .line 496
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 499
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_41

    .line 501
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_30

    .line 502
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 503
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$10;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 514
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 517
    goto :goto_3e

    .line 515
    :catch_36
    move-exception v0

    .line 516
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting stop printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3e
    return-void

    .line 494
    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit v0

    return-void

    .line 499
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_41

    throw v1
.end method

.method private handleValidatePrinters(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 398
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 399
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$8;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 410
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 413
    goto :goto_22

    .line 411
    :catch_1a
    move-exception v0

    .line 412
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting printers validation."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private isBound()Z
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$1cbVOJkW_ULFS1xH-T-tbALCzHI(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method public static synthetic lambda$FH95Crnc6zH421SxRw9RxPyl0YY(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method public static synthetic lambda$KGsYx3sHW6vGymod4UmBTazYSks(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static synthetic lambda$L2EQSyIHled1ZVO5GCaBXmvtCQQ(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$TsHHZCuIB3sKEZ8IZ0oPokZZO6g(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$aHc-cJYzTXxafcxxvfW2janFHIc(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$handleRequestCustomPrinterIcon$0(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$jrFOjxtIoMNm8S0KNTqIDHuv4oY(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$pgSurbN2geCgHp9vfTAIFm5XvgQ(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method public static synthetic lambda$q0Rw93bA7P79FpkLlFZXs5xcOoc(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$ru7USNI_O2DIDwflMPlEsqA_IY4(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method public static synthetic lambda$tI07K2u4Z5L72sd1hvSEunGclrg(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroy()V

    return-void
.end method

.method public static synthetic lambda$tL9wtChZzY3dei-ul1VudkrPO20(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static synthetic lambda$uBWTskFvpksxzoYevxmiaqdMXas(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method private stopTrackingAllPrinters()V
    .registers 7

    .line 522
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_9

    .line 524
    monitor-exit v0

    return-void

    .line 526
    :cond_9
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 527
    .local v1, "trackedPrinterCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_2d

    .line 528
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 529
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 530
    invoke-direct {p0, v3}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 527
    .end local v3    # "printerId":Landroid/print/PrinterId;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 533
    .end local v1    # "trackedPrinterCount":I
    .end local v2    # "i":I
    :cond_2d
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 163
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$uBWTskFvpksxzoYevxmiaqdMXas;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$uBWTskFvpksxzoYevxmiaqdMXas;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method

.method public createPrinterDiscoverySession()V
    .registers 3

    .line 264
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$pgSurbN2geCgHp9vfTAIFm5XvgQ;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$pgSurbN2geCgHp9vfTAIFm5XvgQ;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 136
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .registers 3

    .line 291
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$ru7USNI_O2DIDwflMPlEsqA_IY4;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$ru7USNI_O2DIDwflMPlEsqA_IY4;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 9
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 537
    const-string v0, "component_name"

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    const-wide v2, 0x10b00000001L

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 540
    const-string/jumbo v0, "is_destroyed"

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 541
    const-string/jumbo v0, "is_bound"

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 542
    const-string v0, "has_discovery_session"

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 544
    const-string v0, "has_active_print_jobs"

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 546
    const-string/jumbo v0, "is_discovering_printers"

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 549
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_56
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_79

    .line 551
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 552
    .local v1, "numTrackedPrinters":I
    nop

    .line 552
    .local v2, "i":I
    :goto_61
    if-ge v2, v1, :cond_79

    .line 553
    const-string/jumbo v3, "tracked_printers"

    const-wide v4, 0x20b00000007L

    iget-object v6, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 554
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrinterId;

    .line 553
    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 557
    .end local v1    # "numTrackedPrinters":I
    .end local v2    # "i":I
    :cond_79
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onAllPrintJobsHandled()V
    .registers 3

    .line 178
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$1cbVOJkW_ULFS1xH-T-tbALCzHI;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$1cbVOJkW_ULFS1xH-T-tbALCzHI;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 237
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$KGsYx3sHW6vGymod4UmBTazYSks;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$KGsYx3sHW6vGymod4UmBTazYSks;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void
.end method

.method public onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 211
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$tL9wtChZzY3dei-ul1VudkrPO20;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$tL9wtChZzY3dei-ul1VudkrPO20;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method

.method public requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 429
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$jrFOjxtIoMNm8S0KNTqIDHuv4oY;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$jrFOjxtIoMNm8S0KNTqIDHuv4oY;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 418
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$aHc-cJYzTXxafcxxvfW2janFHIc;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$aHc-cJYzTXxafcxxvfW2janFHIc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    return-void
.end method

.method public stopPrinterDiscovery()V
    .registers 3

    .line 360
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$FH95Crnc6zH421SxRw9RxPyl0YY;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$FH95Crnc6zH421SxRw9RxPyl0YY;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 486
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$RemotePrintService$q0Rw93bA7P79FpkLlFZXs5xcOoc;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$q0Rw93bA7P79FpkLlFZXs5xcOoc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    return-void
.end method
