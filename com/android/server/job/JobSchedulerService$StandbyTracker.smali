.class final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2388
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAppIdleStateChanged$0(Ljava/lang/String;ILcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "bucketIndex"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2414
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2415
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 2417
    :cond_d
    return-void
.end method

.method public static synthetic lambda$onAppIdleStateChanged$1(Lcom/android/server/job/JobSchedulerService$StandbyTracker;IILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "bucketIndex"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2408
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_22

    .line 2409
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2412
    :try_start_27
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$Ofnn0P__SXhzXRU-7eLyuPrl31w;

    invoke-direct {v2, p3, p2}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$Ofnn0P__SXhzXRU-7eLyuPrl31w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2418
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged()V

    .line 2419
    monitor-exit v0

    .line 2420
    return-void

    .line 2419
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 2395
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2397
    .local v0, "uid":I
    if-gez v0, :cond_2f

    .line 2398
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v1, :cond_2e

    .line 2399
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App idle state change for unknown app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_2e
    return-void

    .line 2405
    :cond_2f
    invoke-static {p4}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2407
    .local v1, "bucketIndex":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;-><init>(Lcom/android/server/job/JobSchedulerService$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2421
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 5
    .param p1, "isParoleOn"    # Z

    .line 2425
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_21

    .line 2426
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global parole state now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_15

    const-string v2, "ON"

    goto :goto_17

    :cond_15
    const-string v2, "OFF"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_21
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iput-boolean p1, v0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    .line 2429
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2433
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2435
    .local v0, "uid":I
    if-gez v0, :cond_d

    .line 2437
    return-void

    .line 2440
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v1

    .line 2441
    .local v1, "sinceLast":J
    const-wide/32 v3, 0xa4cb800

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 2443
    const-wide/16 v1, 0x0

    .line 2445
    :cond_1e
    new-instance v3, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {v3}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    .line 2446
    .local v3, "counter":Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2447
    :try_start_28
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2448
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_4c

    .line 2449
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v4

    if-gtz v4, :cond_3c

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_4b

    .line 2450
    :cond_3c
    const-class v4, Landroid/os/BatteryStatsInternal;

    .line 2451
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStatsInternal;

    .line 2452
    .local v4, "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    .line 2454
    .end local v4    # "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    :cond_4b
    return-void

    .line 2448
    :catchall_4c
    move-exception v5

    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v5
.end method
