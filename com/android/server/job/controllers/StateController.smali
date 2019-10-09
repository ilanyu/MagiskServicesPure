.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# instance fields
.field protected final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final mService:Lcom/android/server/job/JobSchedulerService;

.field protected final mStateChangedListener:Lcom/android/server/job/StateChangedListener;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 43
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 44
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getConstants()Lcom/android/server/job/JobSchedulerService$Constants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 60
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 70
    return-void
.end method
