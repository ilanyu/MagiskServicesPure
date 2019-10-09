.class final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MaybeReadyJobQueueFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field backoffCount:I

.field batteryNotLowCount:I

.field chargingCount:I

.field connectivityCount:I

.field contentCount:I

.field idleCount:I

.field runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field storageNotLowCount:I

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 1767
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 1769
    return-void
.end method

.method private reset()V
    .registers 2

    .line 1842
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    .line 1843
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    .line 1844
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    .line 1845
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    .line 1846
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    .line 1847
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    .line 1848
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    .line 1849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 1850
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1774
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1776
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 1777
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1776
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1778
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1778
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_5d} :catch_5f

    .line 1781
    return-void

    .line 1784
    :cond_5e
    goto :goto_60

    .line 1783
    :catch_5f
    move-exception v0

    .line 1785
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    if-lez v0, :cond_6c

    .line 1786
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    .line 1788
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1789
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    .line 1791
    :cond_78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1792
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    .line 1794
    :cond_84
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1795
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    .line 1797
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1798
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    .line 1800
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1801
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    .line 1803
    :cond_a8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1804
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    .line 1806
    :cond_b4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-nez v0, :cond_bf

    .line 1807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 1809
    :cond_bf
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1811
    :cond_c4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1757
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public postProcess()V
    .registers 3

    .line 1814
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    if-gtz v0, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    if-ge v0, v1, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    if-ge v0, v1, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    if-ge v0, v1, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    if-ge v0, v1, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    if-ge v0, v1, :cond_60

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    if-ge v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 1822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    if-lt v0, v1, :cond_53

    goto :goto_60

    .line 1832
    :cond_53
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_90

    .line 1833
    const-string v0, "JobScheduler"

    const-string/jumbo v1, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1823
    :cond_60
    :goto_60
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_6c

    .line 1824
    const-string v0, "JobScheduler"

    const-string/jumbo v1, "maybeQueueReadyJobsForExecutionLocked: Running jobs."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_6c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    .line 1827
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1828
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_90

    .line 1829
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1838
    :cond_90
    :goto_90
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 1839
    return-void
.end method
