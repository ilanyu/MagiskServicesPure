.class final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# static fields
.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field private static final TAG:Ljava/lang/String; = "AutofillSession"

.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field private mActivityToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAssistReceiver:Landroid/app/IAssistDataReceiver;

.field private mClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mClientState:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mClientVulture:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mContexts:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentViewId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final mFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasCallback:Z

.field private mIsSaving:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field private final mRequestLogs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mResponses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveOnAllViewsInvisible:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSelectedDatasetIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field private final mStartTime:J

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUiShownTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mViewStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWtfHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZI)V
    .registers 36
    .param p1, "service"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "sessionId"    # I
    .param p8, "uid"    # I
    .param p9, "activityToken"    # Landroid/os/IBinder;
    .param p10, "client"    # Landroid/os/IBinder;
    .param p11, "hasCallback"    # Z
    .param p12, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p13, "wtfHistory"    # Landroid/util/LocalLog;
    .param p14, "serviceComponentName"    # Landroid/content/ComponentName;
    .param p15, "componentName"    # Landroid/content/ComponentName;
    .param p16, "compatMode"    # Z
    .param p17, "bindInstantServiceAllowed"    # Z
    .param p18, "flags"    # I

    move-object/from16 v6, p0

    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 237
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 243
    new-instance v0, Lcom/android/server/autofill/Session$1;

    invoke-direct {v0, v6}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    .line 538
    move/from16 v7, p7

    iput v7, v6, Lcom/android/server/autofill/Session;->id:I

    .line 539
    move/from16 v8, p18

    iput v8, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 540
    move/from16 v9, p8

    iput v9, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 542
    move-object/from16 v10, p1

    iput-object v10, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 543
    move-object/from16 v11, p6

    iput-object v11, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 544
    move-object/from16 v12, p2

    iput-object v12, v6, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 545
    move-object/from16 v13, p4

    iput-object v13, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 546
    new-instance v14, Lcom/android/server/autofill/RemoteFillService;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p14

    move/from16 v3, p5

    move-object v4, v6

    move/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    iput-object v14, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 548
    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 549
    move/from16 v1, p11

    iput-boolean v1, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 550
    move-object/from16 v2, p12

    iput-object v2, v6, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 551
    move-object/from16 v3, p13

    iput-object v3, v6, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 552
    move-object/from16 v4, p15

    iput-object v4, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 553
    move/from16 v5, p16

    iput-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 554
    move-object/from16 v14, p10

    invoke-direct {v6, v14}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 556
    iget-object v15, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x38a

    invoke-direct {v6, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 557
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5ac

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 556
    invoke-virtual {v15, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/Session;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/Session;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/service/autofill/FillContext;
    .param p2, "x2"    # I

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session;I)Landroid/metrics/LogMaker;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # I

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/Session;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/Session;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 118
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "action"    # I

    .line 2879
    packed-switch p0, :pswitch_data_22

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2887
    :pswitch_15
    const-string v0, "VALUE_CHANGED"

    return-object v0

    .line 2885
    :pswitch_18
    const-string v0, "VIEW_EXITED"

    return-object v0

    .line 2883
    :pswitch_1b
    const-string v0, "VIEW_ENTERED"

    return-object v0

    .line 2881
    :pswitch_1e
    const-string v0, "START_SESSION"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2850
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 2851
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-nez v0, :cond_29

    .line 2852
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): no log for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void

    .line 2856
    :cond_29
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2857
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    .line 468
    .local v0, "canceledRequest":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_49

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_49

    .line 469
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 472
    .local v1, "numContexts":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_49

    .line 473
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v3

    if-ne v3, v0, :cond_46

    .line 474
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_40

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelCurrentRequest(): id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_40
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    goto :goto_49

    .line 472
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 480
    .end local v1    # "numContexts":I
    .end local v2    # "i":I
    :cond_49
    :goto_49
    return-void
.end method

.method private createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2477
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 2479
    .local v1, "context":Landroid/service/autofill/FillContext;
    if-nez v1, :cond_21

    .line 2480
    const-string v2, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v5, v3, v4

    .line 2480
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2482
    return-object v4

    .line 2484
    :cond_21
    const-string v2, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2485
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2486
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 8
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "state"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2413
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2414
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_e

    .line 2415
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_3b

    .line 2417
    :cond_e
    new-instance v1, Lcom/android/server/autofill/ViewState;

    invoke-direct {v1, p0, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v1

    .line 2418
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_36

    .line 2419
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding autofillable view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_36
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    :goto_3b
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_42

    .line 2424
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 2426
    :cond_42
    return-object v0
.end method

.method private createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .registers 13
    .param p1, "saveInfo"    # Landroid/service/autofill/SaveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/SaveInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;"
        }
    .end annotation

    .line 1679
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1681
    :cond_4
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    .line 1682
    .local v1, "sanitizerKeys":[Landroid/service/autofill/InternalSanitizer;
    if-nez v1, :cond_b

    return-object v0

    .line 1684
    :cond_b
    array-length v0, v1

    .line 1685
    .local v0, "size":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1686
    .local v2, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_30

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sanitizers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_30
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1688
    .local v3, "sanitizerValues":[[Landroid/view/autofill/AutofillId;
    const/4 v4, 0x0

    move v5, v4

    .line 1688
    .local v5, "i":I
    :goto_36
    if-ge v5, v0, :cond_7a

    .line 1689
    aget-object v6, v1, v5

    .line 1690
    .local v6, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    aget-object v7, v3, v5

    .line 1691
    .local v7, "ids":[Landroid/view/autofill/AutofillId;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_6b

    .line 1692
    const-string v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sanitizer #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") for ids "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1692
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_6b
    array-length v8, v7

    move v9, v4

    :goto_6d
    if-ge v9, v8, :cond_77

    aget-object v10, v7, v9

    .line 1696
    .local v10, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    .end local v10    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 1688
    .end local v6    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    .end local v7    # "ids":[Landroid/view/autofill/AutofillId;
    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 1699
    .end local v5    # "i":I
    :cond_7a
    return-object v2
.end method

.method private doLogContextCommitted()V
    .registers 3

    .line 1106
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->logContextCommittedLocked()V

    .line 1108
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_e

    .line 973
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 974
    monitor-exit v0

    .line 977
    goto :goto_16

    .line 974
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_e} :catch_e

    .line 975
    :catch_e
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method private static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "tag"    # I

    .line 2632
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v0

    .line 2633
    .local v0, "value":I
    if-eqz v0, :cond_16

    .line 2634
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2636
    :cond_16
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 2589
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2590
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 2592
    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    packed-switch v0, :pswitch_data_c6

    .line 2596
    const-string v1, "UNSUPPORTED"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_32

    .line 2594
    :pswitch_21
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_32

    .line 2593
    :pswitch_27
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_32

    .line 2595
    :cond_2d
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2598
    :goto_32
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2599
    const-string v3, ", PKG="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2600
    const-string v3, ", SERVICE="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x38c

    .line 2601
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 2600
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2602
    const-string v3, ", ORDINAL="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x5ae

    .line 2603
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 2602
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2604
    const-string v3, "FLAGS"

    const/16 v4, 0x5ac

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 2605
    const-string v3, "NUM_DATASETS"

    const/16 v4, 0x38d

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 2606
    const-string v3, "UI_LATENCY"

    const/16 v4, 0x479

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 2607
    const/16 v3, 0x5ad

    .line 2608
    invoke-static {p1, v3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v3

    .line 2609
    .local v3, "authStatus":I
    if-eqz v3, :cond_b6

    .line 2610
    const-string v4, ", AUTH_STATUS="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2611
    const/16 v4, 0x390

    if-eq v3, v4, :cond_a8

    packed-switch v3, :pswitch_data_ce

    .line 2620
    const-string v4, "UNSUPPORTED"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ad

    .line 2617
    :pswitch_96
    const-string v4, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ad

    .line 2619
    :pswitch_9c
    const-string v4, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ad

    .line 2615
    :pswitch_a2
    const-string v4, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ad

    .line 2613
    :cond_a8
    const-string v4, "AUTHENTICATED"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2622
    :goto_ad
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2624
    :cond_b6
    const-string v1, "FC_IDS"

    const/16 v2, 0x4f7

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 2626
    const-string v1, "COMPAT_MODE"

    const/16 v2, 0x586

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 2628
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0xa
        :pswitch_27
        :pswitch_21
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x466
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
    .end packed-switch
.end method

.method private fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 13
    .param p1, "fillContext"    # Landroid/service/autofill/FillContext;
    .param p2, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 423
    nop

    .line 424
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 426
    .local v0, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 427
    .local v1, "numViewState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_70

    .line 428
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 430
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    aget-object v4, v0, v2

    .line 431
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v4, :cond_3b

    .line 432
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_6d

    .line 433
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 439
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 440
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 441
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    new-instance v7, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v7}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 444
    .local v7, "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    if-eqz v6, :cond_52

    invoke-virtual {v6, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 445
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 448
    :cond_52
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v8, :cond_6a

    .line 450
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v9, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 452
    iget-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v8, :cond_6a

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_6a

    .line 453
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 456
    :cond_6a
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 427
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v7    # "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 458
    .end local v2    # "i":I
    :cond_70
    return-void
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 399
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_26

    .line 400
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): no view state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 403
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 404
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_4a

    .line 405
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_46

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findValueLocked(): no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_46
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 408
    :cond_4a
    return-object v1
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1758
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2a

    .line 1759
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 1760
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 1761
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 1762
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 1758
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1765
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7
    .param p1, "requestId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 796
    return-object v1

    .line 799
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 800
    .local v0, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_21

    .line 801
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 803
    .local v3, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1e

    .line 804
    return-object v3

    .line 800
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 808
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method

.method private getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 352
    .local v0, "numViewState":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 353
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1a

    .line 354
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 357
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method private getLastResponseIndexLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2819
    const/4 v0, -0x1

    .line 2820
    .local v0, "lastResponseIdx":I
    const/4 v1, -0x1

    .line 2821
    .local v1, "lastResponseId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v2, :cond_1b

    .line 2822
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2823
    .local v2, "responseCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_1b

    .line 2824
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_18

    .line 2825
    move v0, v3

    .line 2823
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2829
    .end local v2    # "responseCount":I
    .end local v3    # "i":I
    :cond_1b
    return v0
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 7
    .param p1, "logPrefix"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1059
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 1060
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": no contexts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_21
    return-object v1

    .line 1063
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_43

    .line 1066
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    .line 1067
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": no responses on session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_42
    return-object v1

    .line 1072
    :cond_43
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v0

    .line 1073
    .local v0, "lastResponseIdx":I
    if-gez v0, :cond_71

    .line 1074
    if-eqz p1, :cond_70

    .line 1075
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": did not get last response. mResponses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mViewStates="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_70
    return-object v1

    .line 1081
    :cond_71
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 1082
    .local v1, "response":Landroid/service/autofill/FillResponse;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_ae

    if-eqz p1, :cond_ae

    .line 1083
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": mResponses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mContexts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mViewStates="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_ae
    return-object v1
.end method

.method private getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 9
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ")",
            "Landroid/view/autofill/AutofillValue;"
        }
    .end annotation

    .line 1707
    .local p1, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    if-nez p1, :cond_3

    return-object p3

    .line 1709
    :cond_3
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InternalSanitizer;

    .line 1710
    .local v0, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    if-nez v0, :cond_c

    .line 1711
    return-object p3

    .line 1714
    :cond_c
    invoke-virtual {v0, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1715
    .local v1, "sanitized":Landroid/view/autofill/AutofillValue;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_3a

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") sanitized to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_3a
    return-object v1
.end method

.method private getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1093
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 3

    .line 2690
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2691
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2692
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 2693
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 10
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1733
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1734
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_56

    .line 1735
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 1736
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 1737
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_53

    .line 1738
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1739
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_4a

    .line 1740
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getValueFromContexts("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_4a
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_53

    .line 1743
    return-object v4

    .line 1734
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1747
    .end local v1    # "i":I
    :cond_56
    const/4 v1, 0x0

    return-object v1
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 2107
    .local v0, "response":Landroid/service/autofill/FillResponse;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    return v1

    .line 2109
    :cond_9
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSaveUiPendingLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2810
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static synthetic lambda$0VAc60LP16186Azy3Ov7dL7BsAE(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->doLogContextCommitted()V

    return-void
.end method

.method public static synthetic lambda$LM4xf4dbxH_NTutQzBkaQNxKbV0(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$NtvZwhlT1c4eLjg2qI6EER2oCtY(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method public static synthetic lambda$cYu1t6lYVopApYW-vct82-7slZk(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    return-void
.end method

.method public static synthetic lambda$dldcS_opIdRI25w0DM6rSIaHIoc(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic lambda$logFieldClassificationScoreLocked$1(Lcom/android/server/autofill/Session;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 42
    .param p1, "ignoredDatasets"    # Landroid/util/ArraySet;
    .param p2, "changedFieldIds"    # Ljava/util/ArrayList;
    .param p3, "changedDatasetIds"    # Ljava/util/ArrayList;
    .param p4, "manuallyFilledFieldIds"    # Ljava/util/ArrayList;
    .param p5, "manuallyFilledDatasetIds"    # Ljava/util/ArrayList;
    .param p6, "viewsSize"    # I
    .param p7, "autofillIds"    # [Landroid/view/autofill/AutofillId;
    .param p8, "userValues"    # [Ljava/lang/String;
    .param p9, "categoryIds"    # [Ljava/lang/String;
    .param p10, "detectedFieldIds"    # Ljava/util/ArrayList;
    .param p11, "detectedFieldClassifications"    # Ljava/util/ArrayList;
    .param p12, "result"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    .line 1352
    move-object/from16 v3, p12

    if-nez v3, :cond_2e

    .line 1353
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "AutofillSession"

    const-string/jumbo v4, "setFieldClassificationScore(): no results"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_14
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v6, v1, Lcom/android/server/autofill/Session;->id:I

    iget-object v7, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v15, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1358
    return-void

    .line 1360
    :cond_2e
    const-string/jumbo v0, "scores"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 1361
    .local v4, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v4, :cond_51

    .line 1362
    const-string v0, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No field classification score on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void

    .line 1365
    :cond_51
    const/4 v0, 0x0

    .line 1365
    .local v0, "i":I
    const/4 v5, 0x0

    move v6, v5

    .line 1368
    .local v6, "j":I
    const/4 v0, 0x0

    move v7, v6

    move v6, v0

    .line 1368
    .end local v0    # "i":I
    .local v6, "i":I
    .local v7, "j":I
    :goto_57
    move/from16 v8, p6

    if-ge v6, v8, :cond_192

    .line 1369
    :try_start_5b
    aget-object v0, p7, v6

    .line 1373
    .local v0, "autofillId":Landroid/view/autofill/AutofillId;
    const/4 v10, 0x0

    .line 1374
    .local v10, "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v7, 0x0

    :goto_5f
    array-length v11, v2

    if-ge v7, v11, :cond_108

    .line 1375
    aget-object v12, p9, v7

    .line 1376
    .local v12, "categoryId":Ljava/lang/String;
    iget-object v13, v4, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v13, v13, v6

    aget v13, v13, v7

    .line 1377
    .local v13, "score":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-lez v14, :cond_de

    .line 1378
    if-nez v10, :cond_78

    .line 1379
    new-instance v14, Landroid/util/ArrayMap;

    array-length v15, v2

    invoke-direct {v14, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v14

    .line 1381
    :cond_78
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 1382
    .local v14, "currentScore":Ljava/lang/Float;
    if-eqz v14, :cond_ac

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v13

    if-lez v15, :cond_ac

    .line 1383
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v15, :cond_101

    .line 1384
    const-string v15, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipping score "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " because it\'s less than "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 1389
    :cond_ac
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_d6

    .line 1390
    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding score "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " at index "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " and id "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_d6
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    .end local v14    # "currentScore":Ljava/lang/Float;
    goto :goto_101

    .line 1395
    :cond_de
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_101

    .line 1396
    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "skipping score 0 at index "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " and id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "score":F
    :cond_101
    :goto_101
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p8

    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1399
    :cond_108
    if-nez v10, :cond_12a

    .line 1400
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_125

    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no score for autofillId="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v0    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v10    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_125
    move-object/from16 v5, p10

    move-object/from16 v13, p11

    goto :goto_165

    .line 1405
    .restart local v0    # "autofillId":Landroid/view/autofill/AutofillId;
    .restart local v10    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_12a
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1406
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    const/4 v5, 0x0

    .line 1406
    .end local v7    # "j":I
    .local v5, "j":I
    move v7, v5

    .line 1406
    .end local v5    # "j":I
    .restart local v7    # "j":I
    :goto_135
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v7, v5, :cond_156

    .line 1407
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1408
    .local v5, "fieldId":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 1409
    .local v12, "score":F
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v5, v12}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_153} :catch_170

    .line 1406
    .end local v5    # "fieldId":Ljava/lang/String;
    .end local v12    # "score":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_135

    .line 1411
    :cond_156
    move-object/from16 v5, p10

    :try_start_158
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    new-instance v12, Landroid/service/autofill/FieldClassification;

    invoke-direct {v12, v2}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V
    :try_end_160
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_158 .. :try_end_160} :catch_16e

    move-object/from16 v13, p11

    :try_start_162
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_165
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_162 .. :try_end_165} :catch_16c

    .line 1368
    .end local v0    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v10    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :goto_165
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p8

    const/4 v5, 0x0

    goto/16 :goto_57

    .line 1414
    :catch_16c
    move-exception v0

    goto :goto_175

    :catch_16e
    move-exception v0

    goto :goto_173

    :catch_170
    move-exception v0

    move-object/from16 v5, p10

    :goto_173
    move-object/from16 v13, p11

    .line 1415
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_175
    const-string v2, "Error accessing FC score at [%d, %d] (%s): %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v10, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v10, v14

    const/4 v12, 0x2

    aput-object v4, v10, v12

    const/4 v12, 0x3

    aput-object v0, v10, v12

    invoke-direct {v1, v0, v2, v10}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    return-void

    .line 1417
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_192
    move-object/from16 v5, p10

    move-object/from16 v13, p11

    .line 1419
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, v1, Lcom/android/server/autofill/Session;->id:I

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v12, v1, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v15, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v25, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move/from16 v28, v15

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1423
    return-void
.end method

.method public static synthetic lambda$setClientLocked$0(Lcom/android/server/autofill/Session;)V
    .registers 5

    .line 596
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling death of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when saving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_25
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    if-eqz v1, :cond_2f

    .line 599
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_37

    .line 601
    :cond_2f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 603
    :goto_37
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private logAuthenticationStatusLocked(II)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "status"    # I

    .line 2845
    nop

    .line 2846
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2845
    const/16 v1, 0x5ad

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 2847
    return-void
.end method

.method private logContextCommittedLocked()V
    .registers 41
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1113
    move-object/from16 v9, p0

    const-string/jumbo v0, "logContextCommited()"

    invoke-direct {v9, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v10

    .line 1114
    .local v10, "lastResponse":Landroid/service/autofill/FillResponse;
    if-nez v10, :cond_c

    return-void

    .line 1116
    :cond_c
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v11

    .line 1117
    .local v11, "flags":I
    and-int/lit8 v0, v11, 0x1

    if-nez v0, :cond_30

    .line 1118
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2f

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_2f
    return-void

    .line 1122
    :cond_30
    const/4 v0, 0x0

    .line 1123
    .local v0, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1124
    .local v1, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 1125
    .local v2, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1127
    .local v3, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 1128
    .local v4, "hasAtLeastOneDataset":Z
    iget-object v5, v9, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1129
    .local v12, "responseCount":I
    move v13, v4

    move-object v4, v0

    const/4 v0, 0x0

    .line 1129
    .local v0, "i":I
    .local v4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "hasAtLeastOneDataset":Z
    :goto_3e
    if-ge v0, v12, :cond_101

    .line 1130
    iget-object v6, v9, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillResponse;

    .line 1131
    .local v6, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v7

    .line 1132
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v7, :cond_da

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 1133
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    goto/16 :goto_de

    .line 1135
    :cond_5a
    move-object v8, v4

    const/4 v4, 0x0

    .line 1135
    .local v4, "j":I
    .local v8, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_d4

    .line 1136
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 1137
    .local v14, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v15

    .line 1138
    .local v15, "datasetId":Ljava/lang/String;
    if-nez v15, :cond_93

    .line 1139
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v16, :cond_8e

    .line 1140
    const-string v5, "AutofillSession"

    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 1140
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v18, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    const-string/jumbo v2, "logContextCommitted() skipping idless dataset "

    .line 1140
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 1135
    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .end local v15    # "datasetId":Ljava/lang/String;
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8e
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1135
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_cd

    .line 1143
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v15    # "datasetId":Ljava/lang/String;
    :cond_93
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1143
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1144
    .end local v13    # "hasAtLeastOneDataset":Z
    .local v1, "hasAtLeastOneDataset":Z
    iget-object v2, v9, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_a7

    iget-object v2, v9, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1145
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    goto :goto_a7

    .line 1135
    .end local v1    # "hasAtLeastOneDataset":Z
    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .end local v15    # "datasetId":Ljava/lang/String;
    .restart local v13    # "hasAtLeastOneDataset":Z
    :cond_a5
    :goto_a5
    move v13, v1

    goto :goto_cd

    .line 1146
    .end local v13    # "hasAtLeastOneDataset":Z
    .restart local v1    # "hasAtLeastOneDataset":Z
    .restart local v14    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v15    # "datasetId":Ljava/lang/String;
    :cond_a7
    :goto_a7
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_c1

    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adding ignored dataset "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_c1
    if-nez v8, :cond_c9

    .line 1148
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v2

    .line 1150
    :cond_c9
    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .end local v15    # "datasetId":Ljava/lang/String;
    goto :goto_a5

    .line 1135
    .end local v1    # "hasAtLeastOneDataset":Z
    .restart local v13    # "hasAtLeastOneDataset":Z
    :goto_cd
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_5c

    .line 1129
    .end local v4    # "j":I
    .end local v6    # "response":Landroid/service/autofill/FillResponse;
    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d4
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object v4, v8

    .line 1129
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_f9

    .line 1133
    .end local v8    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "response":Landroid/service/autofill/FillResponse;
    .restart local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_da
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1133
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_de
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_f9

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommitted() no datasets at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v6    # "response":Landroid/service/autofill/FillResponse;
    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_f9
    :goto_f9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_3e

    .line 1156
    .end local v0    # "i":I
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_101
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1156
    .end local v1    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v14

    .line 1158
    .local v14, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-nez v13, :cond_11a

    if-nez v14, :cond_11a

    .line 1159
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_119

    .line 1160
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_119
    return-void

    .line 1166
    :cond_11a
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v15

    .line 1168
    .local v15, "userData":Landroid/service/autofill/UserData;
    move-object v8, v3

    move-object/from16 v16, v4

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    const/4 v0, 0x0

    .line 1168
    .end local v3    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "i":I
    .local v8, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v16, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v29, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v30, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_128
    iget-object v1, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_374

    .line 1169
    iget-object v1, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1170
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    .line 1175
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_36c

    .line 1177
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1d8

    .line 1178
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v3

    .line 1179
    .local v3, "datasetId":Ljava/lang/String;
    if-nez v3, :cond_163

    .line 1181
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logContextCommitted(): no dataset id on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    goto/16 :goto_1d4

    .line 1187
    :cond_163
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1188
    .local v4, "autofilledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1189
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_196

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_196

    .line 1190
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_1d4

    .line 1191
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v2

    const-string/jumbo v2, "logContextCommitted(): ignoring changed "

    .line 1191
    .end local v2    # "state":I
    .local v31, "state":I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it has same value that was autofilled"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 1197
    .end local v31    # "state":I
    .restart local v2    # "state":I
    :cond_196
    move/from16 v31, v2

    .line 1197
    .end local v2    # "state":I
    .restart local v31    # "state":I
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1b3

    .line 1198
    const-string v2, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logContextCommitted() found changed state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_1b3
    if-nez v29, :cond_1c3

    .line 1201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v2

    .line 1202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v2

    .line 1204
    .end local v29    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v30    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c3
    move-object/from16 v2, v29

    move-object/from16 v6, v30

    iget-object v7, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v4    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    nop

    .line 1168
    move-object/from16 v29, v2

    move-object/from16 v30, v6

    .line 1168
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v31    # "state":I
    .restart local v29    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v30    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v35, "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_1d4
    :goto_1d4
    move-object/from16 v35, v10

    goto/16 :goto_36e

    .line 1207
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v2, "state":I
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_1d8
    move/from16 v31, v2

    .line 1207
    .end local v2    # "state":I
    .restart local v31    # "state":I
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1208
    .local v2, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v2, :cond_201

    .line 1209
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1d4

    .line 1210
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 1216
    :cond_201
    if-eqz v13, :cond_36c

    .line 1217
    const/4 v3, 0x0

    .line 1217
    .local v3, "j":I
    :goto_204
    if-ge v3, v12, :cond_36c

    .line 1218
    iget-object v4, v9, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 1219
    .local v4, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 1220
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_341

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_224

    .line 1221
    move-object/from16 v36, v2

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v35, v10

    goto/16 :goto_349

    .line 1225
    :cond_224
    const/4 v6, 0x0

    .line 1225
    .local v6, "k":I
    :goto_225
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_33a

    .line 1226
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/Dataset;

    .line 1227
    .local v7, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v32, v4

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1228
    .local v4, "datasetId":Ljava/lang/String;
    .local v32, "response":Landroid/service/autofill/FillResponse;
    if-nez v4, :cond_267

    .line 1229
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v18, :cond_25b

    .line 1230
    move-object/from16 v33, v5

    const-string v5, "AutofillSession"

    .line 1230
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v33, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v34, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .line 1230
    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v34, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v10

    const-string/jumbo v10, "logContextCommitted() skipping idless dataset "

    .line 1230
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_261

    .line 1225
    .end local v4    # "datasetId":Ljava/lang/String;
    .end local v7    # "dataset":Landroid/service/autofill/Dataset;
    .end local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_25b
    move-object/from16 v33, v5

    move-object/from16 v34, v8

    move-object/from16 v35, v10

    .line 1225
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    :goto_261
    move-object/from16 v36, v2

    .line 1225
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v36, "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_263
    :goto_263
    move-object/from16 v8, v34

    goto/16 :goto_32e

    .line 1234
    .end local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v4    # "datasetId":Ljava/lang/String;
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v7    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_267
    move-object/from16 v33, v5

    move-object/from16 v34, v8

    move-object/from16 v35, v10

    .line 1235
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    .line 1236
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v8, 0x0

    .line 1236
    .local v8, "l":I
    :goto_272
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_2f1

    .line 1237
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 1238
    .local v10, "candidate":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v2, v10}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e2

    .line 1239
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_2af

    .line 1240
    move-object/from16 v36, v2

    const-string v2, "AutofillSession"

    .line 1240
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    move-object/from16 v37, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 1240
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v37, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v7

    const-string v7, "field "

    .line 1240
    .end local v7    # "dataset":Landroid/service/autofill/Dataset;
    .local v38, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " was manually filled with value set by dataset "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b5

    .line 1244
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v38    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v7    # "dataset":Landroid/service/autofill/Dataset;
    :cond_2af
    move-object/from16 v36, v2

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    .line 1244
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v7    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v38    # "dataset":Landroid/service/autofill/Dataset;
    :goto_2b5
    if-nez v34, :cond_2bf

    .line 1245
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v34, v2

    goto :goto_2c1

    .line 1247
    :cond_2bf
    move-object/from16 v2, v34

    .line 1247
    .end local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v2, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2c1
    iget-object v5, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1248
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1249
    .local v5, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v5, :cond_2da

    .line 1250
    new-instance v7, Landroid/util/ArraySet;

    move-object/from16 v39, v5

    const/4 v5, 0x1

    .line 1250
    .end local v5    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v39, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v7, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v5, v7

    .line 1251
    .end local v39    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2dc

    .line 1253
    :cond_2da
    move-object/from16 v39, v5

    :goto_2dc
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1236
    .end local v5    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "candidate":Landroid/view/autofill/AutofillValue;
    move-object/from16 v34, v2

    goto :goto_2e8

    .line 1236
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v38    # "dataset":Landroid/service/autofill/Dataset;
    .local v2, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v7    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_2e2
    move-object/from16 v36, v2

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    .line 1236
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v7    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v38    # "dataset":Landroid/service/autofill/Dataset;
    :goto_2e8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v36

    move-object/from16 v5, v37

    move-object/from16 v7, v38

    goto :goto_272

    .line 1256
    .end local v8    # "l":I
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v38    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v7    # "dataset":Landroid/service/autofill/Dataset;
    :cond_2f1
    move-object/from16 v36, v2

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    .line 1256
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v7    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v38    # "dataset":Landroid/service/autofill/Dataset;
    iget-object v2, v9, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_303

    iget-object v2, v9, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1257
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_263

    .line 1258
    :cond_303
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_31d

    .line 1259
    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding ignored dataset "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_31d
    if-nez v16, :cond_325

    .line 1262
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1262
    .end local v16    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_327

    .line 1264
    .end local v2    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_325
    move-object/from16 v2, v16

    .line 1264
    .end local v16    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_327
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v4    # "datasetId":Ljava/lang/String;
    .end local v37    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v38    # "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v16, v2

    goto/16 :goto_263

    .line 1225
    .end local v2    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v8, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_32e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v10, v35

    move-object/from16 v2, v36

    goto/16 :goto_225

    .line 1217
    .end local v6    # "k":I
    .end local v32    # "response":Landroid/service/autofill/FillResponse;
    .end local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v2, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v10, "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_33a
    move-object/from16 v36, v2

    move-object/from16 v34, v8

    move-object/from16 v35, v10

    .line 1217
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    goto :goto_364

    .line 1221
    .end local v34    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v4, "response":Landroid/service/autofill/FillResponse;
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_341
    move-object/from16 v36, v2

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v35, v10

    .line 1221
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v4    # "response":Landroid/service/autofill/FillResponse;
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v32    # "response":Landroid/service/autofill/FillResponse;
    .restart local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    :goto_349
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_364

    .line 1222
    const-string v2, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommitted() no datasets at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    .end local v32    # "response":Landroid/service/autofill/FillResponse;
    .end local v33    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_364
    :goto_364
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v35

    move-object/from16 v2, v36

    goto/16 :goto_204

    .line 1168
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "j":I
    .end local v31    # "state":I
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v36    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_36c
    move-object/from16 v35, v10

    .line 1168
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    :goto_36e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v35

    goto/16 :goto_128

    .line 1276
    .end local v0    # "i":I
    .end local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    :cond_374
    move-object/from16 v35, v10

    .line 1276
    .end local v10    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v35    # "lastResponse":Landroid/service/autofill/FillResponse;
    const/4 v0, 0x0

    .line 1277
    .local v0, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v1, 0x0

    .line 1280
    .local v1, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_3aa

    .line 1281
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1282
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 1283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    .line 1284
    const/16 v17, 0x0

    .line 1284
    .local v17, "i":I
    :goto_38c
    move/from16 v3, v17

    .line 1284
    .end local v17    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_3aa

    .line 1285
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 1286
    .local v4, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1287
    .local v5, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v4    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v5    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v17, v3, 0x1

    .line 1284
    .end local v3    # "i":I
    .restart local v17    # "i":I
    goto :goto_38c

    .line 1293
    .end local v2    # "size":I
    .end local v17    # "i":I
    :cond_3aa
    move-object v10, v0

    move-object/from16 v17, v1

    .line 1293
    .end local v0    # "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v1    # "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v10, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v17, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v31

    .line 1294
    .local v31, "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    if-eqz v15, :cond_3d2

    if-eqz v31, :cond_3d2

    .line 1295
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 1297
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    .line 1295
    move-object v0, v9

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move-object v5, v10

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v32, v8

    move-object/from16 v8, v18

    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v32, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/Session;->logFieldClassificationScoreLocked(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/service/autofill/UserData;Ljava/util/Collection;)V

    goto :goto_3f9

    .line 1299
    .end local v32    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_3d2
    move-object/from16 v32, v8

    .line 1299
    .end local v8    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v32    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, v9, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, v9, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, v9, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v4, v9, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v5, v9, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v16

    move-object/from16 v23, v29

    move-object/from16 v24, v30

    move-object/from16 v25, v10

    move-object/from16 v26, v17

    move-object/from16 v27, v4

    move/from16 v28, v5

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1304
    :goto_3f9
    return-void
.end method

.method private logFieldClassificationScoreLocked(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/service/autofill/UserData;Ljava/util/Collection;)V
    .registers 33
    .param p1, "fcStrategy"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p7, "userData"    # Landroid/service/autofill/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/FieldClassificationStrategy;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/service/autofill/UserData;",
            "Ljava/util/Collection<",
            "Lcom/android/server/autofill/ViewState;",
            ">;)V"
        }
    .end annotation

    .line 1319
    .local p2, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p4, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p6, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local p8, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object v13

    .line 1320
    .local v13, "userValues":[Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v14

    .line 1323
    .local v14, "categoryIds":[Ljava/lang/String;
    if-eqz v13, :cond_8f

    if-eqz v14, :cond_8f

    array-length v0, v13

    array-length v1, v14

    if-eq v0, v1, :cond_12

    goto/16 :goto_8f

    .line 1331
    :cond_12
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v15

    .line 1333
    .local v15, "maxFieldsSize":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1334
    .local v11, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1337
    .local v12, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v16

    .line 1338
    .local v16, "algorithm":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/UserData;->getAlgorithmArgs()Landroid/os/Bundle;

    move-result-object v17

    .line 1339
    .local v17, "algorithmArgs":Landroid/os/Bundle;
    invoke-interface/range {p8 .. p8}, Ljava/util/Collection;->size()I

    move-result v10

    .line 1342
    .local v10, "viewsSize":I
    new-array v9, v10, [Landroid/view/autofill/AutofillId;

    .line 1343
    .local v9, "autofillIds":[Landroid/view/autofill/AutofillId;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 1344
    .local v8, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v0, 0x0

    .line 1345
    .local v0, "k":I
    invoke-interface/range {p8 .. p8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v18, v0

    .line 1345
    .end local v0    # "k":I
    .local v18, "k":I
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1346
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    add-int/lit8 v2, v18, 0x1

    .line 1347
    .local v2, "k":I
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v9, v18

    .line 1348
    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v18    # "k":I
    nop

    .line 1345
    move/from16 v18, v2

    goto :goto_3b

    .line 1351
    .end local v2    # "k":I
    .restart local v18    # "k":I
    :cond_58
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v19, v15

    move-object v15, v6

    move-object/from16 v6, p6

    .end local v15    # "maxFieldsSize":I
    .local v19, "maxFieldsSize":I
    move-object/from16 v20, v15

    move-object v15, v7

    move v7, v10

    move-object/from16 v21, v8

    move-object v8, v9

    .line 1351
    .end local v8    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v21, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v22, v9

    move-object v9, v13

    .line 1351
    .end local v9    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .local v22, "autofillIds":[Landroid/view/autofill/AutofillId;
    move/from16 v23, v10

    move-object v10, v14

    .line 1351
    .end local v10    # "viewsSize":I
    .local v23, "viewsSize":I
    invoke-direct/range {v0 .. v12}, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;-><init>(Lcom/android/server/autofill/Session;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v1, v15

    .line 1425
    .local v1, "callback":Landroid/os/RemoteCallback;
    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/FieldClassificationStrategy;->getScores(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V

    .line 1426
    return-void

    .line 1324
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    .end local v11    # "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v12    # "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    .end local v16    # "algorithm":Ljava/lang/String;
    .end local v17    # "algorithmArgs":Landroid/os/Bundle;
    .end local v18    # "k":I
    .end local v19    # "maxFieldsSize":I
    .end local v21    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v22    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "viewsSize":I
    :cond_8f
    :goto_8f
    const/4 v0, -0x1

    if-nez v13, :cond_94

    move v1, v0

    goto :goto_95

    :cond_94
    array-length v1, v13

    .line 1325
    .local v1, "valuesLength":I
    :goto_95
    if-nez v14, :cond_98

    goto :goto_99

    :cond_98
    array-length v0, v14

    .line 1326
    .local v0, "idsLength":I
    :goto_99
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ids.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void
.end method

.method private logSaveShown()V
    .registers 4

    .line 1674
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    .line 1675
    return-void
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3
    .param p1, "category"    # I

    .line 2833
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 2837
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private notifyUnavailableToClient(I)V
    .registers 7
    .param p1, "sessionFinishedState"    # I

    .line 2170
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    return-void

    .line 2173
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v1, :cond_17

    .line 2174
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_1e

    .line 2175
    :cond_17
    if-eqz p1, :cond_1e

    .line 2176
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3a

    .line 2180
    :cond_1e
    :goto_1e
    goto :goto_38

    .line 2178
    :catch_1f
    move-exception v1

    .line 2179
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client no fill UI: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2181
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 2182
    return-void

    .line 2181
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;Ljava/lang/String;)V
    .registers 10
    .param p1, "requestId"    # I
    .param p2, "timedOut"    # Z
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "servicePackageName"    # Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2e

    .line 722
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    monitor-exit v0

    return-void

    .line 726
    :cond_2e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 727
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/metrics/LogMaker;

    .line 728
    .local v1, "requestLog":Landroid/metrics/LogMaker;
    if-nez v1, :cond_55

    .line 729
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 731
    :cond_55
    if-eqz p2, :cond_59

    const/4 v2, 0x2

    goto :goto_5b

    :cond_59
    const/16 v2, 0xb

    :goto_5b
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 733
    .end local v1    # "requestLog":Landroid/metrics/LogMaker;
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_6c

    .line 734
    if-eqz p3, :cond_68

    .line 735
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 737
    :cond_68
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 738
    return-void

    .line 733
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private processNullResponseLocked(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 2292
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_21

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when server returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_21
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2f

    .line 2294
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x10400b9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2296
    :cond_2f
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 2298
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(I)V

    .line 2299
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 2300
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newClientState"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2307
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2309
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 2310
    .local v0, "requestId":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_46

    .line 2311
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newClientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_46
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_52

    .line 2320
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 2322
    :cond_52
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2323
    if-eqz p2, :cond_5b

    move-object v1, p2

    goto :goto_5f

    :cond_5b
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_5f
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2325
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2326
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 2328
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_6d

    .line 2329
    return-void

    .line 2333
    :cond_6d
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2334
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2335
    return-void
.end method

.method private removeSelf()V
    .registers 3

    .line 2762
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2763
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 2764
    monitor-exit v0

    .line 2765
    return-void

    .line 2764
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "oldResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p3, "newClientState"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2282
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2284
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 2286
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2288
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2289
    return-void
.end method

.method private static requestLogToString(Landroid/metrics/LogMaker;)Ljava/lang/String;
    .registers 4
    .param p0, "log"    # Landroid/metrics/LogMaker;

    .line 2860
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2861
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2862
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {v1, p0}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    .line 2863
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2864
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private requestNewFillResponseLocked(I)V
    .registers 11
    .param p1, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 490
    :cond_0
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 491
    .local v0, "requestId":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 495
    .local v1, "ordinal":I
    const/16 v2, 0x38b

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x5ae

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 497
    .local v2, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_2d

    .line 498
    const/16 v3, 0x5ac

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 500
    :cond_2d
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_5c

    .line 503
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting structure for request #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 515
    :try_start_5f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v3, "receiverExtras":Landroid/os/Bundle;
    const-string v4, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6d} :catch_9d

    .line 519
    .local v4, "identity":J
    :try_start_6d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v6, v7, v3, v8, p1}, Landroid/app/IActivityManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_93

    .line 521
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to request autofill data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_98

    .line 524
    :cond_93
    :try_start_93
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    nop

    .line 528
    .end local v3    # "receiverExtras":Landroid/os/Bundle;
    .end local v4    # "identity":J
    goto :goto_9e

    .line 524
    .restart local v3    # "receiverExtras":Landroid/os/Bundle;
    .restart local v4    # "identity":J
    :catchall_98
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9d} :catch_9d

    .line 526
    .end local v3    # "receiverExtras":Landroid/os/Bundle;
    .end local v4    # "identity":J
    :catch_9d
    move-exception v3

    .line 529
    :goto_9e
    return-void
.end method

.method private requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1865
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2f

    .line 1866
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_26

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-starting session on view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_26
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 1868
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(I)V

    .line 1869
    return-void

    .line 1873
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1874
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5b

    .line 1875
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting partition for view id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1875
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_5b
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 1879
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(I)V

    goto :goto_8a

    .line 1881
    :cond_64
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_8a

    .line 1882
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting new partition for view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1882
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_8a
    :goto_8a
    return-void
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 593
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 594
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 595
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$xw4trZ-LA7gCvZvpKJ93vf377ak;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$Session$xw4trZ-LA7gCvZvpKJ93vf377ak;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 606
    :try_start_10
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 609
    goto :goto_34

    .line 607
    :catch_1d
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not set binder death listener on autofill client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .registers 13
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "state"    # I
    .param p3, "clearResponse"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2342
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 2343
    .local v0, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 2344
    move v3, v2

    .local v3, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 2345
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 2346
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_2e

    .line 2347
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring null dataset on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    goto :goto_31

    .line 2350
    :cond_2e
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2344
    .end local v4    # "dataset":Landroid/service/autofill/Dataset;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2352
    .end local v3    # "i":I
    :cond_34
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 2353
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_40
    if-ge v5, v4, :cond_54

    aget-object v6, v3, v5

    .line 2354
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v7

    .line 2355
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez p3, :cond_4e

    .line 2356
    invoke-virtual {v7, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_51

    .line 2358
    :cond_4e
    invoke-virtual {v7, v1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2353
    .end local v6    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 2362
    :cond_54
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    .line 2363
    .local v3, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v3, :cond_7e

    .line 2364
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2365
    .local v4, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_6c

    .line 2366
    array-length v5, v4

    move v6, v2

    :goto_62
    if-ge v6, v5, :cond_6c

    aget-object v7, v4, v6

    .line 2367
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v7, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2366
    .end local v7    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 2370
    :cond_6c
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 2371
    .local v5, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_7e

    .line 2372
    array-length v6, v5

    move v7, v2

    :goto_74
    if-ge v7, v6, :cond_7e

    aget-object v8, v5, v7

    .line 2373
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v8, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2372
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    .line 2378
    .end local v4    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "optionalIds":[Landroid/view/autofill/AutofillId;
    :cond_7e
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2379
    .local v4, "authIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_8f

    .line 2380
    array-length v5, v4

    :goto_85
    if-ge v2, v5, :cond_8f

    aget-object v6, v4, v2

    .line 2381
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2380
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 2384
    :cond_8f
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .registers 13
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "state"    # I
    .param p4, "clearResponse"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2392
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 2393
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 2394
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 2395
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 2396
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 2397
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 2398
    .local v5, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    .line 2399
    .local v6, "datasetId":Ljava/lang/String;
    if-eqz v6, :cond_28

    .line 2400
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 2402
    :cond_28
    if-eqz p1, :cond_2e

    .line 2403
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_34

    .line 2404
    :cond_2e
    if-eqz p4, :cond_34

    .line 2405
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2394
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    .end local v5    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v6    # "datasetId":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2408
    .end local v2    # "j":I
    :cond_37
    return-void
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 13
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1897
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1898
    return v1

    .line 1901
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1902
    .local v0, "numResponses":I
    sget v2, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3c

    .line 1903
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not starting a new partition on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reached maximum of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return v3

    .line 1908
    :cond_3c
    move v2, v3

    .local v2, "responseNum":I
    :goto_3d
    if-ge v2, v0, :cond_9e

    .line 1909
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 1911
    .local v4, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1912
    return v3

    .line 1915
    :cond_52
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    .line 1916
    .local v5, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v5, :cond_6d

    .line 1917
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 1918
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1919
    :cond_6c
    return v3

    .line 1923
    :cond_6d
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    .line 1924
    .local v6, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v6, :cond_90

    .line 1925
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1927
    .local v7, "numDatasets":I
    move v8, v3

    .local v8, "dataSetNum":I
    :goto_78
    if-ge v8, v7, :cond_90

    .line 1928
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    .line 1930
    .local v9, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v9, :cond_8d

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 1931
    return v3

    .line 1927
    .end local v9    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_78

    .line 1936
    .end local v7    # "numDatasets":I
    .end local v8    # "dataSetNum":I
    :cond_90
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1937
    return v3

    .line 1908
    .end local v4    # "response":Landroid/service/autofill/FillResponse;
    .end local v5    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .end local v6    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1941
    .end local v2    # "responseNum":I
    :cond_9e
    return v1
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 7
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 2493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 2494
    monitor-exit v0

    .line 2497
    goto :goto_17

    .line 2494
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_f} :catch_f

    .line 2495
    :catch_f
    move-exception v0

    .line 2496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private unlinkClientVultureLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_30

    .line 615
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 616
    .local v0, "unlinked":Z
    if-nez v0, :cond_30

    .line 617
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlinking vulture from death failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "unlinked":Z
    :cond_30
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 2189
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_8

    return-void

    .line 2191
    :cond_8
    const/4 v2, 0x0

    .line 2192
    .local v2, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2193
    const/4 v4, 0x1

    .line 2194
    .local v4, "saveOnFinish":Z
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    .line 2196
    .local v5, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v5, :cond_5b

    .line 2197
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 2198
    .local v0, "saveTriggerId":Landroid/view/autofill/AutofillId;
    if-eqz v0, :cond_1e

    .line 2199
    const/16 v6, 0x4cc

    invoke-direct {p0, v6}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 2201
    :cond_1e
    nop

    .line 2202
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_28

    goto :goto_29

    :cond_28
    move v7, v3

    :goto_29
    iput-boolean v7, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2205
    iget-boolean v6, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v6, :cond_51

    .line 2206
    if-nez v2, :cond_37

    .line 2207
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v6

    .line 2209
    :cond_37
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 2210
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2213
    :cond_44
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 2214
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2217
    :cond_51
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5c

    .line 2218
    const/4 v4, 0x0

    goto :goto_5c

    .line 2222
    .end local v0    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :cond_5b
    nop

    .line 2228
    .restart local v0    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :cond_5c
    :goto_5c
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v13

    .line 2229
    .local v13, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v6, 0x0

    .line 2230
    .local v6, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-eqz v13, :cond_9b

    .line 2231
    move-object v7, v6

    move v6, v3

    .line 2231
    .local v6, "i":I
    .local v7, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_65
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_99

    .line 2232
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 2233
    .local v8, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    .line 2234
    .local v9, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-nez v9, :cond_78

    .line 2234
    .end local v8    # "dataset":Landroid/service/autofill/Dataset;
    .end local v9    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_96

    .line 2236
    .restart local v8    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v9    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_78
    move-object v10, v7

    move v7, v3

    .line 2236
    .local v7, "j":I
    .local v10, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_7a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_95

    .line 2237
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillId;

    .line 2238
    .local v11, "id":Landroid/view/autofill/AutofillId;
    if-eqz v2, :cond_8e

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_92

    .line 2239
    :cond_8e
    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v10

    .line 2236
    .end local v11    # "id":Landroid/view/autofill/AutofillId;
    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 2231
    .end local v7    # "j":I
    .end local v8    # "dataset":Landroid/service/autofill/Dataset;
    .end local v9    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_95
    move-object v7, v10

    .line 2231
    .end local v10    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v7, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_96
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 2246
    .end local v6    # "i":I
    :cond_99
    move-object v3, v7

    goto :goto_9c

    .line 2246
    .end local v7    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v6, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_9b
    move-object v3, v6

    .line 2246
    .end local v6    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v3, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_9c
    :try_start_9c
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_cf

    .line 2247
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateTrackedIdsLocked(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " triggerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " saveOnFinish:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_cf
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v2}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2251
    invoke-static {v3}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 2250
    move v10, v4

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_e2} :catch_e3

    .line 2254
    goto :goto_eb

    .line 2252
    :catch_e3
    move-exception v6

    .line 2253
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AutofillSession"

    const-string v8, "Cannot set tracked ids"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2255
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_eb
    return-void
.end method

.method private writeLog(I)V
    .registers 4
    .param p1, "category"    # I

    .line 2841
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2842
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 2868
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2871
    if-eqz p1, :cond_11

    .line 2872
    const-string v1, "AutofillSession"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 2874
    :cond_11
    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :goto_16
    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 814
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 815
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; intentSender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    .line 821
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    monitor-exit v0

    return-void

    .line 825
    :cond_50
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 826
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_5b

    .line 827
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 828
    monitor-exit v0

    return-void

    .line 830
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_79

    .line 832
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 834
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 835
    .local v0, "authenticationId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    .line 837
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 835
    invoke-static {v3, p0, v4, p3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    return-void

    .line 830
    .end local v0    # "authenticationId":I
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method autoFill(IILandroid/service/autofill/Dataset;Z)V
    .registers 10
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;
    .param p4, "generateEvent"    # Z

    .line 2430
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 2431
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFill(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; dataset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2435
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    .line 2436
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    monitor-exit v0

    return-void

    .line 2441
    :cond_50
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 2442
    if-eqz p4, :cond_65

    .line 2443
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2446
    :cond_65
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 2447
    monitor-exit v0

    return-void

    .line 2451
    :cond_6a
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2452
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2453
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 2454
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_8b

    .line 2455
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 2456
    monitor-exit v0

    return-void

    .line 2458
    :cond_8b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v2

    .line 2460
    .local v2, "authenticationId":I
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 2462
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "authenticationId":I
    monitor-exit v0

    .line 2463
    return-void

    .line 2462
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_2d .. :try_end_9a} :catchall_98

    throw v1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 15
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 2639
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2640
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 2641
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_103

    return-void

    .line 2647
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2648
    .local v1, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2649
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2650
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .line 2651
    .local v4, "waitingDatasetAuth":Z
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "waitingDatasetAuth":Z
    :goto_3c
    if-ge v4, v1, :cond_9c

    .line 2652
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_49

    .line 2653
    goto :goto_99

    .line 2655
    :cond_49
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 2656
    .local v7, "viewId":Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2657
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2658
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 2659
    .local v8, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v8, :cond_99

    .line 2660
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v9

    const/16 v10, 0x40

    and-int/2addr v9, v10

    if-eqz v9, :cond_99

    .line 2661
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_95

    .line 2662
    const-string v9, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autofillApp(): view "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " waiting auth"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_95
    const/4 v6, 0x1

    .line 2665
    invoke-virtual {v8, v10}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2651
    .end local v7    # "viewId":Landroid/view/autofill/AutofillId;
    .end local v8    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 2668
    .end local v4    # "i":I
    :cond_9c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 2669
    if-eqz v6, :cond_a9

    .line 2670
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v4, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2672
    :cond_a9
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_c3

    const-string v4, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_c3
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v4, v7, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 2675
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e4

    .line 2676
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v4, :cond_db

    .line 2677
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 2679
    :cond_db
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    :cond_e4
    const/4 v4, 0x0

    const/4 v7, 0x4

    invoke-direct {p0, v4, p1, v7, v5}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_e9} :catch_ea
    .catchall {:try_start_26 .. :try_end_e9} :catchall_103

    .line 2685
    .end local v1    # "entryCount":I
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "waitingDatasetAuth":Z
    :cond_e9
    goto :goto_101

    .line 2683
    :catch_ea
    move-exception v1

    .line 2684
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_eb
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error autofilling activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_101
    monitor-exit v0

    .line 2687
    return-void

    .line 2686
    :catchall_103
    move-exception v1

    monitor-exit v0
    :try_end_105
    .catchall {:try_start_eb .. :try_end_105} :catchall_103

    throw v1
.end method

.method callSaveLocked()V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1773
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 1774
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1779
    :cond_22
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3e

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSaveLocked(): mViewStates="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_3e
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_4a

    .line 1782
    const-string v0, "AutofillSession"

    const-string v1, "callSaveLocked(): no contexts"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return-void

    .line 1786
    :cond_4a
    nop

    .line 1787
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1789
    .local v0, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1791
    .local v1, "numContexts":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "contextNum":I
    :goto_5b
    if-ge v3, v1, :cond_15d

    .line 1792
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    .line 1794
    .local v4, "context":Landroid/service/autofill/FillContext;
    nop

    .line 1795
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    .line 1797
    .local v5, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_88

    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSaveLocked(): updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_88
    move v6, v2

    .local v6, "viewStateNum":I
    :goto_89
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_12c

    .line 1800
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/ViewState;

    .line 1802
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v8, v7, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1803
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 1804
    .local v9, "value":Landroid/view/autofill/AutofillValue;
    if-nez v9, :cond_bc

    .line 1805
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_128

    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callSaveLocked(): skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 1808
    :cond_bc
    aget-object v10, v5, v6

    .line 1809
    .local v10, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v10, :cond_d7

    .line 1810
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): did not find node with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    goto :goto_128

    .line 1813
    :cond_d7
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_f9

    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): updating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_f9
    invoke-virtual {v7}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 1817
    .local v11, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    if-nez v11, :cond_103

    .line 1819
    invoke-direct {p0, v0, v8, v9}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 1821
    :cond_103
    if-eqz v11, :cond_109

    .line 1822
    invoke-virtual {v10, v11}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_128

    .line 1823
    :cond_109
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v12, :cond_128

    .line 1824
    const-string v12, "AutofillSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not updating field "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " because it failed sanitization"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    .end local v9    # "value":Landroid/view/autofill/AutofillValue;
    .end local v10    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v11    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_128
    :goto_128
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_89

    .line 1829
    .end local v6    # "viewStateNum":I
    :cond_12c
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 1831
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_159

    .line 1832
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dumping structure of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " before calling service.save()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 1791
    .end local v4    # "context":Landroid/service/autofill/FillContext;
    .end local v5    # "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    :cond_159
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5b

    .line 1838
    .end local v3    # "contextNum":I
    :cond_15d
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 1844
    new-instance v2, Landroid/service/autofill/SaveRequest;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 1846
    .local v2, "saveRequest":Landroid/service/autofill/SaveRequest;
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v3, v2}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    .line 1847
    return-void
.end method

.method public cancelSave()V
    .registers 5

    .line 879
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 882
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 883
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    monitor-exit v0

    return-void

    .line 887
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_36

    .line 888
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    return-void

    .line 887
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2709
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 2710
    const/4 v0, 0x0

    return-object v0

    .line 2712
    :cond_6
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 2713
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 2714
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2715
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 2718
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2719
    .local v0, "totalRequests":I
    if-lez v0, :cond_52

    .line 2720
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3f

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyLocked(): logging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_3f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_52

    .line 2722
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    .line 2723
    .local v2, "log":Landroid/metrics/LogMaker;
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2721
    .end local v2    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 2726
    .end local v1    # "i":I
    :cond_52
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x397

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x5af

    .line 2727
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2726
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2729
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v1
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 921
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 923
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    monitor-exit v0

    return-void

    .line 927
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_64

    if-eqz v1, :cond_3d

    .line 929
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_64

    .line 932
    :goto_33
    goto :goto_62

    .line 930
    :catch_34
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to dispatch unhandled key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_33

    .line 934
    :cond_3d
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not dispatch unhandled key on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :goto_62
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_35 .. :try_end_66} :catchall_64

    throw v1
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2508
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2509
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2511
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 2514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_79

    .line 2516
    const-string v1, "N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_84

    .line 2518
    :cond_79
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v3, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2519
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2521
    :goto_84
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2522
    .local v1, "requestLogsSizes":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2523
    const/4 v2, 0x0

    move v3, v2

    .line 2523
    .local v3, "i":I
    :goto_98
    const/16 v4, 0x23

    if-ge v3, v1, :cond_c9

    .line 2524
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2525
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 2526
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": req="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ", log="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v6}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2523
    .end local v5    # "requestId":I
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 2529
    .end local v3    # "i":I
    :cond_c9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mResponses: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2530
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v3, :cond_dd

    .line 2531
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_109

    .line 2533
    :cond_dd
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2534
    move v3, v2

    .line 2534
    .restart local v3    # "i":I
    :goto_e7
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_109

    .line 2535
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2536
    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2534
    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    .line 2539
    .end local v3    # "i":I
    :cond_109
    :goto_109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCurrentViewId: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2540
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDestroyed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsSaving: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mPendingSaveUi: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2543
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2544
    .local v3, "numberViews":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mViewStates size: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2545
    move v4, v2

    .line 2545
    .local v4, "i":I
    :goto_15a
    if-ge v4, v3, :cond_175

    .line 2546
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "ViewState at #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2547
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2545
    add-int/lit8 v4, v4, 0x1

    goto :goto_15a

    .line 2550
    .end local v4    # "i":I
    :cond_175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mContexts: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2551
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v4, :cond_1ad

    .line 2552
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2553
    .local v4, "numContexts":I
    move v5, v2

    .line 2553
    .local v5, "i":I
    :goto_189
    if-ge v5, v4, :cond_1ac

    .line 2554
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    .line 2556
    .local v6, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2557
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1a9

    .line 2558
    const-string v7, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {v6}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2553
    .end local v6    # "context":Landroid/service/autofill/FillContext;
    :cond_1a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_189

    .line 2564
    .end local v4    # "numContexts":I
    .end local v5    # "i":I
    :cond_1ac
    goto :goto_1b3

    .line 2565
    :cond_1ad
    const-string/jumbo v2, "null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    :goto_1b3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mHasCallback: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2569
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v2, :cond_1dc

    .line 2570
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mClientState: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->getSize()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " bytes"

    .line 2571
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    :cond_1dc
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCompatMode: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mUrlBar: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2575
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v2, :cond_1fd

    .line 2576
    const-string v2, "N/A"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_227

    .line 2578
    :cond_1fd
    const-string v2, "id="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2579
    const-string v2, " domain="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2580
    const-string v2, " text="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 2582
    :goto_227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2584
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSelectedDatasetIds: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2585
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2586
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;)V
    .registers 11
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;

    .line 849
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 851
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#fill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v0

    return-void

    .line 855
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_42

    .line 856
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;

    .line 858
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 856
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 859
    return-void

    .line 855
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 363
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 365
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 366
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 367
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 370
    :cond_1a
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 372
    .local v3, "options":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_35

    .line 373
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    .line 374
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 375
    .local v5, "option":Ljava/lang/CharSequence;
    if-eqz v5, :cond_33

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_33
    monitor-exit v0

    return-object v2

    .line 377
    .end local v4    # "index":I
    .end local v5    # "option":Ljava/lang/CharSequence;
    :cond_35
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "value":Landroid/view/autofill/AutofillValue;
    .end local v3    # "options":[Ljava/lang/CharSequence;
    :cond_4b
    monitor-exit v0

    .line 382
    return-object v2

    .line 381
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 387
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 389
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method forceRemoveSelfLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2739
    return-void
.end method

.method forceRemoveSelfLocked(I)V
    .registers 6
    .param p1, "clientState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2743
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1c

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveSelfLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 2746
    .local v0, "isPendingSaveUi":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 2747
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 2748
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 2749
    if-nez v0, :cond_3e

    .line 2751
    :try_start_30
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 2754
    goto :goto_3e

    .line 2752
    :catch_36
    move-exception v1

    .line 2753
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AutofillSession"

    const-string v3, "Error notifying client to finish session"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2756
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    return-void
.end method

.method getActivityTokenLocked()Landroid/os/IBinder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3

    .line 2164
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 2166
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getServiceName()Ljava/lang/CharSequence;
    .registers 3

    .line 2466
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceName()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2468
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isDestroyed()Z
    .registers 3

    .line 2158
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2159
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 2160
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2802
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isSavingLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1724
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    return v0
.end method

.method public logContextCommitted()V
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$0VAc60LP16186Azy3Ov7dL7BsAE;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$0VAc60LP16186Azy3Ov7dL7BsAE;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1103
    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 18
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    move-object v12, p0

    .line 2115
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2116
    :try_start_4
    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_27

    .line 2117
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    monitor-exit v1

    return-void

    .line 2121
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_dc

    .line 2123
    const/4 v0, 0x0

    .line 2124
    .local v0, "filterText":Ljava/lang/String;
    if-eqz p3, :cond_39

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .end local v0    # "filterText":Ljava/lang/String;
    .local v13, "filterText":Ljava/lang/String;
    :cond_39
    move-object v13, v0

    invoke-direct {v12}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2129
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2130
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v10, v12, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2128
    move-object/from16 v2, p2

    move-object v3, p1

    move-object v4, v13

    move-object v9, v12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 2132
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2133
    :try_start_61
    iget-wide v0, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_d7

    .line 2135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 2136
    iget-wide v0, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v3, v12, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v0, v3

    .line 2137
    .local v0, "duration":J
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_95

    .line 2138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 2139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shown in "

    .line 2140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2142
    const-string v4, "AutofillSession"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    :cond_95
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " app="

    .line 2145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " svc="

    .line 2146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latency="

    .line 2147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    .local v3, "historyLog":Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2149
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 2152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2151
    invoke-direct {v12, v4, v5, v6}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 2154
    .end local v0    # "duration":J
    .end local v3    # "historyLog":Ljava/lang/StringBuilder;
    :cond_d7
    monitor-exit v2

    .line 2155
    return-void

    .line 2154
    :catchall_d9
    move-exception v0

    monitor-exit v2
    :try_end_db
    .catchall {:try_start_61 .. :try_end_db} :catchall_d9

    throw v0

    .line 2121
    .end local v13    # "filterText":Ljava/lang/String;
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "servicePackageName"    # Ljava/lang/String;

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 26
    .param p1, "requestId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "requestFlags"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 630
    move/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 631
    :try_start_b
    iget-boolean v0, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_2e

    .line 632
    const-string v0, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " destroyed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v5

    return-void

    .line 637
    :cond_2e
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 638
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-eqz v0, :cond_3e

    .line 639
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_55

    .line 641
    :cond_3e
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_55
    const/16 v6, 0x38d

    if-nez v3, :cond_68

    .line 644
    if-eqz v0, :cond_63

    .line 645
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 647
    :cond_63
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(I)V

    .line 648
    monitor-exit v5

    return-void

    .line 651
    :cond_68
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 652
    .local v7, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-eqz v7, :cond_96

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_96

    .line 653
    const-string v6, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because field detection is disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(I)V

    .line 655
    monitor-exit v5

    return-void

    .line 657
    :cond_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_b .. :try_end_97} :catchall_157

    move-object v8, v0

    .line 659
    .end local v0    # "requestLog":Landroid/metrics/LogMaker;
    .local v8, "requestLog":Landroid/metrics/LogMaker;
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v5, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v5, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "sessionFinishedState":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 663
    .local v14, "disableDuration":J
    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-lez v5, :cond_105

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v5

    .line 665
    .local v5, "flags":I
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_d8

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Service disabled autofill for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 667
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": flags="

    .line 668
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", duration="

    .line 669
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 670
    .local v9, "message":Ljava/lang/StringBuilder;
    invoke-static {v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 671
    const-string v10, "AutofillSession"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v9    # "message":Ljava/lang/StringBuilder;
    :cond_d8
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_ef

    .line 674
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v13, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v18, v11

    move-wide v11, v14

    move-wide/from16 v19, v14

    move/from16 v14, v18

    .line 674
    .end local v14    # "disableDuration":J
    .local v19, "disableDuration":J
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_102

    .line 677
    .end local v19    # "disableDuration":J
    .restart local v14    # "disableDuration":J
    :cond_ef
    move-wide/from16 v19, v14

    .line 677
    .end local v14    # "disableDuration":J
    .restart local v19    # "disableDuration":J
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget v13, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v14, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 680
    :goto_102
    const/4 v0, 0x4

    .line 683
    .end local v5    # "flags":I
    move v9, v0

    goto :goto_108

    .line 683
    .end local v19    # "disableDuration":J
    .restart local v14    # "disableDuration":J
    :cond_105
    move-wide/from16 v19, v14

    move v9, v0

    .line 683
    .end local v0    # "sessionFinishedState":I
    .end local v14    # "disableDuration":J
    .local v9, "sessionFinishedState":I
    .restart local v19    # "disableDuration":J
    :goto_108
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_118

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 684
    :cond_118
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_122

    :cond_11e
    cmp-long v0, v19, v16

    if-lez v0, :cond_125

    .line 687
    :cond_122
    invoke-direct {v1, v9}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(I)V

    .line 690
    :cond_125
    if-eqz v8, :cond_14b

    .line 691
    nop

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_130

    const/4 v0, 0x0

    goto :goto_138

    :cond_130
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 691
    invoke-virtual {v8, v6, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 693
    if-eqz v7, :cond_14b

    .line 694
    const/16 v0, 0x4f7

    array-length v5, v7

    .line 696
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 694
    invoke-virtual {v8, v0, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 700
    :cond_14b
    iget-object v6, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 701
    const/4 v0, 0x0

    :try_start_14f
    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 702
    monitor-exit v6

    .line 703
    return-void

    .line 702
    :catchall_154
    move-exception v0

    monitor-exit v6
    :try_end_156
    .catchall {:try_start_14f .. :try_end_156} :catchall_154

    throw v0

    .line 657
    .end local v7    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "requestLog":Landroid/metrics/LogMaker;
    .end local v9    # "sessionFinishedState":I
    .end local v19    # "disableDuration":J
    :catchall_157
    move-exception v0

    :try_start_158
    monitor-exit v5
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    throw v0
.end method

.method public onFillRequestTimeout(ILjava/lang/String;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 715
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2792
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 2793
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 772
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 773
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    monitor-exit v0

    return-void

    .line 777
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_46

    .line 778
    const/16 v0, 0x396

    invoke-direct {p0, v0, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0xb

    .line 779
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 780
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 782
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 783
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 784
    return-void

    .line 777
    .end local v0    # "log":Landroid/metrics/LogMaker;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 744
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 747
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 748
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit v0

    return-void

    .line 752
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_53

    .line 753
    const/16 v0, 0x396

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 754
    if-nez p2, :cond_35

    const/16 v1, 0xa

    goto :goto_36

    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 755
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 756
    if-eqz p2, :cond_4f

    .line 757
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_4c

    const-string v1, "AutofillSession"

    const-string v2, "Starting intent sender on save()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;)V

    .line 762
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 763
    return-void

    .line 752
    .end local v0    # "log":Landroid/metrics/LogMaker;
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 844
    return-void
.end method

.method removeSelfLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2773
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1d

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSelfLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_3f

    .line 2775
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeSelfLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    return-void

    .line 2779
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2780
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "removeSelfLocked() ignored, waiting for pending save ui"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-void

    .line 2784
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 2785
    .local v0, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 2786
    if-eqz v0, :cond_5e

    .line 2787
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 2789
    :cond_5e
    return-void
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 943
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 950
    goto :goto_15

    .line 951
    :catchall_b
    move-exception v1

    goto :goto_17

    .line 948
    :catch_d
    move-exception v1

    .line 949
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw v1
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 896
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 898
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    monitor-exit v0

    return-void

    .line 902
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_78

    if-eqz v1, :cond_4d

    .line 904
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 905
    .local v1, "view":Lcom/android/server/autofill/ViewState;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_44
    .catchall {:try_start_2c .. :try_end_43} :catchall_78

    .end local v1    # "view":Lcom/android/server/autofill/ViewState;
    goto :goto_4c

    .line 907
    :catch_44
    move-exception v1

    .line 908
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_45
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to show fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4c
    goto :goto_76

    .line 911
    :cond_4d
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_76

    .line 912
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not show full UI on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_76
    :goto_76
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_45 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public save()V
    .registers 5

    .line 864
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 866
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    monitor-exit v0

    return-void

    .line 870
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_35

    .line 871
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 874
    return-void

    .line 870
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .registers 12
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authenticationId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 982
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 983
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 987
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_46

    .line 990
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationResultLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no responses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 992
    return-void

    .line 994
    :cond_46
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 995
    .local v0, "requestId":I
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 996
    .local v1, "authenticatedResponse":Landroid/service/autofill/FillResponse;
    if-eqz v1, :cond_101

    if-nez p1, :cond_58

    goto/16 :goto_101

    .line 1001
    :cond_58
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v2

    .line 1004
    .local v2, "datasetIdx":I
    const v3, 0xffff

    if-eq v2, v3, :cond_71

    .line 1005
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 1006
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_71

    .line 1007
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1008
    return-void

    .line 1012
    .end local v4    # "dataset":Landroid/service/autofill/Dataset;
    :cond_71
    const-string v4, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 1013
    .local v4, "result":Landroid/os/Parcelable;
    const-string v5, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1014
    .local v5, "newClientState":Landroid/os/Bundle;
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_a0

    .line 1015
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthenticationResultLocked(): result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", clientState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_a0
    instance-of v6, v4, Landroid/service/autofill/FillResponse;

    if-eqz v6, :cond_b0

    .line 1019
    const/16 v3, 0x390

    invoke-direct {p0, v0, v3}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1020
    move-object v3, v4

    check-cast v3, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto :goto_100

    .line 1021
    :cond_b0
    instance-of v6, v4, Landroid/service/autofill/Dataset;

    const/4 v7, 0x0

    if-eqz v6, :cond_df

    .line 1022
    if-eq v2, v3, :cond_d9

    .line 1023
    const/16 v3, 0x466

    invoke-direct {p0, v0, v3}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1025
    if-eqz v5, :cond_cb

    .line 1026
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_c9

    const-string v3, "AutofillSession"

    const-string v6, "Updating client state from auth dataset"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_c9
    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1029
    :cond_cb
    move-object v3, v4

    check-cast v3, Landroid/service/autofill/Dataset;

    .line 1030
    .local v3, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {p0, v0, v2, v3, v7}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;Z)V

    .line 1032
    .end local v3    # "dataset":Landroid/service/autofill/Dataset;
    goto :goto_100

    .line 1033
    :cond_d9
    const/16 v3, 0x467

    invoke-direct {p0, v0, v3}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_100

    .line 1037
    :cond_df
    if-eqz v4, :cond_f8

    .line 1038
    const-string v3, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "service returned invalid auth type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_f8
    const/16 v3, 0x468

    invoke-direct {p0, v0, v3}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1042
    invoke-direct {p0, v7}, Lcom/android/server/autofill/Session;->processNullResponseLocked(I)V

    .line 1044
    :goto_100
    return-void

    .line 997
    .end local v2    # "datasetIdx":I
    .end local v4    # "result":Landroid/os/Parcelable;
    .end local v5    # "newClientState":Landroid/os/Bundle;
    :cond_101
    :goto_101
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 998
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2262
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    .line 2262
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 2263
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 2264
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2265
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v2, :cond_2f

    .line 2266
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutofillFailure(): no view for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    goto :goto_62

    .line 2269
    :cond_2f
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2270
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    .line 2271
    .local v3, "state":I
    or-int/lit16 v4, v3, 0x400

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2272
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_62

    .line 2273
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "state":I
    :cond_62
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2276
    .end local v0    # "i":I
    :cond_65
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .registers 5
    .param p1, "hasIt"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1048
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 1049
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1053
    :cond_22
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1054
    return-void
.end method

.method public showSaveLocked()Z
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1435
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_25

    .line 1436
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return v12

    .line 1440
    :cond_25
    const-string/jumbo v0, "showSaveLocked()"

    invoke-direct {v11, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v13

    .line 1441
    .local v13, "response":Landroid/service/autofill/FillResponse;
    if-nez v13, :cond_30

    const/4 v0, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_34
    move-object v14, v0

    .line 1452
    .local v14, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v15, 0x1

    if-nez v14, :cond_45

    .line 1453
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_44

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "showSaveLocked(): no saveInfo from service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_44
    return v15

    .line 1457
    :cond_45
    invoke-direct {v11, v14}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 1460
    .local v10, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 1461
    .local v9, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    .line 1463
    .local v8, "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v14}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 1464
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    const/4 v0, 0x1

    .line 1465
    .local v0, "allRequiredAreNotEmpty":Z
    const/4 v1, 0x0

    .line 1466
    .local v1, "atLeastOneChanged":Z
    if-eqz v7, :cond_1d6

    .line 1467
    move v2, v1

    move v1, v12

    .line 1467
    .local v1, "i":I
    .local v2, "atLeastOneChanged":Z
    :goto_5f
    array-length v3, v7

    if-ge v1, v3, :cond_1cf

    .line 1468
    aget-object v3, v7, v1

    .line 1469
    .local v3, "id":Landroid/view/autofill/AutofillId;
    if-nez v3, :cond_88

    .line 1470
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "null autofill id on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    nop

    .line 1467
    move/from16 v16, v0

    move/from16 v17, v2

    goto/16 :goto_19f

    .line 1473
    :cond_88
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1474
    iget-object v4, v11, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 1475
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v4, :cond_b1

    .line 1476
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v0, 0x0

    .line 1478
    nop

    .line 1535
    move v12, v0

    goto/16 :goto_1db

    .line 1481
    :cond_b1
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1482
    .local v5, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v5, :cond_c1

    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_be

    goto :goto_c1

    .line 1499
    :cond_be
    move/from16 v16, v0

    goto :goto_f4

    .line 1483
    :cond_c1
    :goto_c1
    invoke-direct {v11, v3}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1484
    .local v6, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_1a9

    .line 1485
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v12, :cond_f1

    .line 1486
    const-string v12, "AutofillSession"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "Value of required field "

    .line 1486
    .end local v0    # "allRequiredAreNotEmpty":Z
    .local v16, "allRequiredAreNotEmpty":Z
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t change; using initial value ("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") instead"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 1489
    .end local v16    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    :cond_f1
    move/from16 v16, v0

    .line 1489
    .end local v0    # "allRequiredAreNotEmpty":Z
    .restart local v16    # "allRequiredAreNotEmpty":Z
    :goto_f3
    move-object v5, v6

    .line 1499
    .end local v6    # "initialValue":Landroid/view/autofill/AutofillValue;
    :goto_f4
    invoke-direct {v11, v10, v3, v5}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 1500
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-nez v0, :cond_11f

    .line 1501
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_11a

    .line 1502
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "value of required field "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " failed sanitization"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_11a
    const/4 v5, 0x0

    .line 1505
    .end local v16    # "allRequiredAreNotEmpty":Z
    .local v5, "allRequiredAreNotEmpty":Z
    nop

    .line 1535
    move v12, v5

    goto/16 :goto_1db

    .line 1507
    .end local v5    # "allRequiredAreNotEmpty":Z
    .restart local v16    # "allRequiredAreNotEmpty":Z
    :cond_11f
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1508
    invoke-virtual {v9, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1511
    .local v5, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v0, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19d

    .line 1512
    const/4 v6, 0x1

    .line 1513
    .local v6, "changed":Z
    if-nez v5, :cond_16b

    .line 1515
    invoke-direct {v11, v3}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 1516
    .local v12, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v12, :cond_16b

    invoke-virtual {v12, v0}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16b

    .line 1517
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v15, :cond_165

    .line 1518
    const-string v15, "AutofillSession"

    move/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 1518
    .end local v2    # "atLeastOneChanged":Z
    .local v17, "atLeastOneChanged":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "id "

    .line 1518
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v18, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    .line 1521
    .end local v17    # "atLeastOneChanged":Z
    .end local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_165
    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 1521
    .end local v2    # "atLeastOneChanged":Z
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v17    # "atLeastOneChanged":Z
    .restart local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_169
    const/4 v6, 0x0

    .line 1521
    .end local v12    # "initialValue":Landroid/view/autofill/AutofillValue;
    goto :goto_16f

    .line 1524
    .end local v17    # "atLeastOneChanged":Z
    .end local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_16b
    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 1524
    .end local v2    # "atLeastOneChanged":Z
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v17    # "atLeastOneChanged":Z
    .restart local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_16f
    if-eqz v6, :cond_19f

    .line 1525
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_19b

    .line 1526
    const-string v2, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found a change on required "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_19b
    const/4 v2, 0x1

    .line 1529
    .end local v0    # "value":Landroid/view/autofill/AutofillValue;
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "changed":Z
    .end local v17    # "atLeastOneChanged":Z
    .end local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    goto :goto_1a1

    .line 1467
    :cond_19d
    move/from16 v17, v2

    .line 1467
    .end local v16    # "allRequiredAreNotEmpty":Z
    .local v0, "allRequiredAreNotEmpty":Z
    :cond_19f
    :goto_19f
    move/from16 v2, v17

    .line 1467
    .end local v0    # "allRequiredAreNotEmpty":Z
    .restart local v16    # "allRequiredAreNotEmpty":Z
    :goto_1a1
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_5f

    .line 1491
    .end local v16    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    .restart local v3    # "id":Landroid/view/autofill/AutofillId;
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v5, "value":Landroid/view/autofill/AutofillValue;
    .local v6, "initialValue":Landroid/view/autofill/AutofillValue;
    :cond_1a9
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 1491
    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v16    # "allRequiredAreNotEmpty":Z
    .restart local v17    # "atLeastOneChanged":Z
    .restart local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1c9

    .line 1492
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty value for required "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_1c9
    const/4 v0, 0x0

    .line 1495
    .end local v16    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    nop

    .line 1535
    move v12, v0

    move/from16 v2, v17

    goto :goto_1db

    .line 1535
    .end local v1    # "i":I
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    .end local v6    # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v17    # "atLeastOneChanged":Z
    .end local v18    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_1cf
    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v12, v16

    .line 1535
    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .restart local v16    # "allRequiredAreNotEmpty":Z
    .restart local v17    # "atLeastOneChanged":Z
    goto :goto_1db

    .line 1535
    .end local v16    # "allRequiredAreNotEmpty":Z
    .end local v17    # "atLeastOneChanged":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    .local v1, "atLeastOneChanged":Z
    :cond_1d6
    move/from16 v16, v0

    move v2, v1

    move/from16 v12, v16

    .line 1535
    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v1    # "atLeastOneChanged":Z
    .restart local v2    # "atLeastOneChanged":Z
    .local v12, "allRequiredAreNotEmpty":Z
    :goto_1db
    invoke-virtual {v14}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v15

    .line 1536
    .local v15, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v12, :cond_4dd

    .line 1537
    if-nez v2, :cond_2a2

    if-eqz v15, :cond_2a2

    .line 1539
    const/4 v0, 0x0

    .line 1539
    .local v0, "i":I
    :goto_1e6
    array-length v1, v15

    if-ge v0, v1, :cond_2a2

    .line 1540
    aget-object v1, v15, v0

    .line 1541
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1542
    iget-object v3, v11, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 1543
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v3, :cond_214

    .line 1544
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no ViewState for optional "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    nop

    .line 1539
    move/from16 v19, v2

    goto/16 :goto_29c

    .line 1547
    :cond_214
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_26c

    .line 1548
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1549
    .local v4, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v9, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1551
    .local v5, "filledValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_267

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_267

    .line 1552
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_25e

    .line 1553
    const-string v6, "AutofillSession"

    move/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 1553
    .end local v2    # "atLeastOneChanged":Z
    .local v19, "atLeastOneChanged":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string v3, "found a change on optional "

    .line 1553
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v20, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_262

    .line 1556
    .end local v19    # "atLeastOneChanged":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_25e
    move/from16 v19, v2

    move-object/from16 v20, v3

    .line 1556
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v19    # "atLeastOneChanged":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_262
    const/4 v2, 0x1

    .line 1557
    .end local v19    # "atLeastOneChanged":Z
    .restart local v2    # "atLeastOneChanged":Z
    nop

    .line 1572
    move/from16 v19, v2

    goto :goto_2a4

    .line 1559
    .end local v4    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v5    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_267
    move/from16 v19, v2

    move-object/from16 v20, v3

    .line 1559
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v19    # "atLeastOneChanged":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    goto :goto_29c

    .line 1561
    .end local v19    # "atLeastOneChanged":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_26c
    move/from16 v19, v2

    move-object/from16 v20, v3

    .line 1561
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v19    # "atLeastOneChanged":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    invoke-direct {v11, v1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1562
    .local v2, "initialValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_297

    .line 1563
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no current value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; initial value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_297
    if-eqz v2, :cond_29c

    .line 1567
    invoke-virtual {v9, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_29c
    :goto_29c
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v19

    goto/16 :goto_1e6

    .line 1572
    .end local v0    # "i":I
    .end local v19    # "atLeastOneChanged":Z
    .local v2, "atLeastOneChanged":Z
    :cond_2a2
    move/from16 v19, v2

    .line 1572
    .end local v2    # "atLeastOneChanged":Z
    .restart local v19    # "atLeastOneChanged":Z
    :goto_2a4
    if-eqz v19, :cond_4d0

    .line 1573
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2b1

    .line 1574
    const-string v0, "AutofillSession"

    const-string v1, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_2b1
    invoke-virtual {v14}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v6

    .line 1577
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_30f

    .line 1578
    const/16 v0, 0x46d

    invoke-direct {v11, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    move-object v1, v0

    .line 1581
    .local v1, "log":Landroid/metrics/LogMaker;
    :try_start_2be
    invoke-virtual {v6, v11}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 1582
    .local v0, "isValid":Z
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2df

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_2df
    if-eqz v0, :cond_2e4

    .line 1584
    const/16 v2, 0xa

    goto :goto_2e5

    .line 1585
    :cond_2e4
    const/4 v2, 0x5

    .line 1583
    :goto_2e5
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2e8} :catch_2fb

    .line 1591
    nop

    .line 1590
    nop

    .line 1593
    iget-object v2, v11, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1594
    if-nez v0, :cond_30f

    .line 1595
    const-string v2, "AutofillSession"

    const-string/jumbo v3, "not showing save UI because fields failed validation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v2, 0x1

    return v2

    .line 1586
    .end local v0    # "isValid":Z
    :catch_2fb
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1589
    iget-object v2, v11, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1590
    const/4 v2, 0x1

    return v2

    .line 1602
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_30f
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 1603
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_432

    .line 1604
    const/4 v0, 0x0

    .line 1604
    .local v0, "i":I
    :goto_316
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_432

    .line 1605
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1606
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    nop

    .line 1607
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1608
    .local v2, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_354

    .line 1609
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "Checking if saved fields match contents of dataset #"

    .line 1609
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; allIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_356

    .line 1612
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_354
    move-object/from16 v21, v5

    .line 1612
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :goto_356
    const/4 v3, 0x0

    .line 1612
    .local v3, "j":I
    :goto_357
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_406

    .line 1613
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 1614
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 1615
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_393

    .line 1616
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_38c

    .line 1617
    move-object/from16 v22, v6

    const-string v6, "AutofillSession"

    .line 1617
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .local v22, "validator":Landroid/service/autofill/InternalValidator;
    move-object/from16 v23, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 1617
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v23, "requiredIds":[Landroid/view/autofill/AutofillId;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v8

    const-string v8, "dataset has value for field that is null: "

    .line 1617
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v24, "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d1

    .line 1604
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "j":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_38c
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1604
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    goto :goto_3d1

    .line 1621
    .end local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v1    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v3    # "j":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_393
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1621
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    .line 1622
    .local v6, "datasetValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3dd

    .line 1623
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_3d1

    .line 1624
    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "found a dataset change on id "

    .line 1624
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v25, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": from "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v3    # "j":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    .end local v25    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    :cond_3d1
    :goto_3d1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    goto/16 :goto_316

    .line 1629
    .restart local v1    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v3    # "j":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_3dd
    move-object/from16 v25, v2

    .line 1629
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v25    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3fa

    const-string v2, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no dataset changes for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_3fa
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v2, v25

    goto/16 :goto_357

    .line 1631
    .end local v3    # "j":I
    .end local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v25    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_406
    move-object/from16 v25, v2

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1631
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v25    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_430

    .line 1632
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_430
    const/4 v2, 0x1

    return v2

    .line 1639
    .end local v0    # "i":I
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v25    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_432
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1639
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_45b

    .line 1640
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_45b
    iget-object v0, v11, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;

    invoke-static {v1, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v8

    .line 1649
    .local v8, "client":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v1, v11, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v2, v11, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v11, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1650
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v11, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, v11, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, v11, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1651
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v11, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, v11, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v6, v11, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1650
    move-object/from16 v16, v21

    move-object v5, v14

    .line 1650
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v16, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move/from16 v18, v6

    move-object/from16 v17, v22

    move-object v6, v11

    .line 1650
    .end local v22    # "validator":Landroid/service/autofill/InternalValidator;
    .local v17, "validator":Landroid/service/autofill/InternalValidator;
    move-object/from16 v20, v23

    .line 1650
    .end local v23    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v20, "requiredIds":[Landroid/view/autofill/AutofillId;
    move-object/from16 v26, v13

    move-object/from16 v21, v24

    move-object v13, v8

    move-object v8, v11

    .line 1650
    .end local v8    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v24    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v13, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v21, "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v26, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v22, v9

    move-object v9, v0

    .line 1650
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v22, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v23, v10

    move/from16 v10, v18

    .line 1650
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .local v23, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 1653
    if-eqz v13, :cond_4cb

    .line 1655
    :try_start_4ad
    iget v0, v11, Lcom/android/server/autofill/Session;->id:I

    const/4 v1, 0x1

    invoke-interface {v13, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_4b3
    .catch Landroid/os/RemoteException; {:try_start_4ad .. :try_end_4b3} :catch_4b4

    .line 1658
    goto :goto_4cb

    .line 1656
    :catch_4b4
    move-exception v0

    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4cb
    :goto_4cb
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1661
    const/4 v1, 0x0

    return v1

    .line 1665
    .end local v16    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v17    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v20    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v21    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v22    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v23    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v8, "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .local v13, "response":Landroid/service/autofill/FillResponse;
    :cond_4d0
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v13

    move/from16 v0, v19

    .line 1665
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v13    # "response":Landroid/service/autofill/FillResponse;
    .restart local v20    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v21    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v22    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v23    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    goto :goto_4eb

    .line 1665
    .end local v19    # "atLeastOneChanged":Z
    .end local v20    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v21    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v22    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v23    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .local v2, "atLeastOneChanged":Z
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v13    # "response":Landroid/service/autofill/FillResponse;
    :cond_4dd
    move/from16 v19, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v13

    move/from16 v0, v19

    .line 1665
    .end local v2    # "atLeastOneChanged":Z
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v13    # "response":Landroid/service/autofill/FillResponse;
    .local v0, "atLeastOneChanged":Z
    .restart local v20    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v21    # "allIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v22    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v23    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    :goto_4eb
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_518

    .line 1666
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSaveLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", atLeastOneChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_518
    const/4 v1, 0x1

    return v1
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 6
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 957
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 959
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    monitor-exit v0

    return-void

    .line 963
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 964
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_36

    .line 965
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    return-void

    .line 964
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "newActivity"    # Landroid/os/IBinder;
    .param p2, "newClient"    # Landroid/os/IBinder;

    .line 577
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 579
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    monitor-exit v0

    return-void

    .line 583
    :cond_26
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 584
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 587
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 588
    monitor-exit v0

    .line 589
    return-void

    .line 588
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 12
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualBounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1947
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_20

    .line 1948
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-void

    .line 1952
    :cond_20
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4f

    .line 1953
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_4f
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1958
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    const/4 v1, 0x1

    if-nez v0, :cond_bd

    .line 1959
    if-eq p4, v1, :cond_6f

    const/4 v2, 0x4

    if-eq p4, v2, :cond_6f

    const/4 v2, 0x2

    if-ne p4, v2, :cond_63

    goto :goto_6f

    .line 1975
    :cond_63
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6e

    const-string v1, "AutofillSession"

    const-string v2, "Ignoring specific action when viewState=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_6e
    return-void

    .line 1961
    :cond_6f
    :goto_6f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_89

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating viewState for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_89
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v2

    .line 1963
    .local v2, "isIgnored":Z
    new-instance v3, Lcom/android/server/autofill/ViewState;

    .line 1964
    if-eqz v2, :cond_94

    const/16 v4, 0x80

    goto :goto_95

    :cond_94
    move v4, v1

    :goto_95
    invoke-direct {v3, p0, p1, p0, v4}, Lcom/android/server/autofill/ViewState;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v3

    .line 1965
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    if-eqz v2, :cond_bc

    .line 1971
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_bb

    const-string v1, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLocked(): ignoring view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_bb
    return-void

    .line 1974
    .end local v2    # "isIgnored":Z
    :cond_bc
    nop

    .line 1980
    :cond_bd
    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_2bc

    .line 2096
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(): unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2bb

    .line 1989
    :pswitch_da
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v3, :cond_152

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_152

    .line 1991
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_ec

    .line 1992
    move-object v3, v2

    goto :goto_fa

    :cond_ec
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1993
    .local v3, "currentUrl":Ljava/lang/String;
    :goto_fa
    const/4 v4, 0x0

    if-nez v3, :cond_105

    .line 1995
    const-string v1, "URL bar value changed, but current value is null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v4}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1996
    return-void

    .line 1998
    :cond_105
    if-eqz p3, :cond_148

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v5

    if-nez v5, :cond_10e

    goto :goto_148

    .line 2003
    :cond_10e
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, "newUrl":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 2005
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_127

    const-string v2, "AutofillSession"

    const-string v4, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_127
    return-void

    .line 2008
    :cond_128
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v2, :cond_138

    .line 2012
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_137

    .line 2013
    const-string v2, "AutofillSession"

    const-string v4, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_137
    return-void

    .line 2018
    :cond_138
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_143

    const-string v2, "AutofillSession"

    const-string v4, "Finishing session because URL bar changed"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_143
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2020
    return-void

    .line 2000
    .end local v1    # "newUrl":Ljava/lang/String;
    :cond_148
    :goto_148
    const-string v5, "URL bar value changed to null or non-text: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v4

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2001
    return-void

    .line 2023
    .end local v3    # "currentUrl":Ljava/lang/String;
    :cond_152
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2bb

    .line 2024
    if-eqz p3, :cond_164

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 2025
    :cond_164
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 2026
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 2027
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 2028
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 2029
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2030
    .local v1, "length":I
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1b8

    .line 2031
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLocked("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "): resetting value that was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chars long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_1b8
    const/16 v3, 0x464

    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x465

    .line 2035
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 2036
    .local v3, "log":Landroid/metrics/LogMaker;
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2040
    .end local v1    # "length":I
    .end local v3    # "log":Landroid/metrics/LogMaker;
    :cond_1cd
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2044
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2045
    .local v1, "filledValue":Landroid/view/autofill/AutofillValue;
    if-eqz v1, :cond_1f7

    invoke-virtual {v1, p3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 2046
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1f6

    .line 2047
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring autofilled change on id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_1f6
    return-void

    .line 2052
    :cond_1f7
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2056
    if-eqz p3, :cond_211

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-nez v3, :cond_205

    goto :goto_211

    .line 2059
    :cond_205
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2062
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_20c

    goto :goto_210

    :cond_20c
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2062
    .end local v3    # "text":Ljava/lang/CharSequence;
    :goto_210
    goto :goto_212

    .line 2057
    :cond_211
    :goto_211
    const/4 v2, 0x0

    .line 2062
    .local v2, "filterText":Ljava/lang/String;
    :goto_212
    nop

    .line 2064
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2065
    .end local v1    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v2    # "filterText":Ljava/lang/String;
    goto/16 :goto_2bb

    .line 2089
    :pswitch_21c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    if-ne v1, v3, :cond_2bb

    .line 2090
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_23c

    const-string v1, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_23c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2092
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    goto/16 :goto_2bb

    .line 2068
    :pswitch_245
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_269

    if-eqz p2, :cond_269

    .line 2069
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entered on virtual child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_269
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v1, :cond_295

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_295

    .line 2073
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_294

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_294
    return-void

    .line 2077
    :cond_295
    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V

    .line 2080
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    if-eq v1, v2, :cond_2a7

    .line 2081
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2082
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2086
    :cond_2a7
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2087
    goto :goto_2bb

    .line 1983
    :pswitch_2ab
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1984
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 1985
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 1986
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(I)V

    .line 1987
    nop

    .line 2098
    :cond_2bb
    :goto_2bb
    return-void

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_2ab
        :pswitch_245
        :pswitch_21c
        :pswitch_da
    .end packed-switch
.end method
