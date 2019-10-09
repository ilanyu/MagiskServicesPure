.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1599
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1600
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1601
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 1605
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1606
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_d

    .line 1607
    monitor-exit v0

    return-void

    .line 1609
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_e2

    goto/16 :goto_d3

    .line 1664
    :pswitch_16
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1665
    .local v1, "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 1666
    .local v4, "disabled":Z
    :goto_1f
    if-eqz v4, :cond_28

    .line 1667
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v6, "app uid idle"

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1669
    :cond_28
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_dd

    .line 1670
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1671
    monitor-exit v5

    .line 1672
    goto/16 :goto_d3

    .line 1671
    :catchall_39
    move-exception v2

    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2

    .line 1657
    .end local v1    # "uid":I
    .end local v4    # "disabled":Z
    :pswitch_3c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1658
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_dd

    .line 1659
    :try_start_43
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1660
    monitor-exit v2

    .line 1661
    goto/16 :goto_d3

    .line 1660
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v3

    .line 1645
    .end local v1    # "uid":I
    :pswitch_52
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1646
    .restart local v1    # "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_5a

    move v4, v3

    goto :goto_5b

    :cond_5a
    move v4, v2

    .line 1647
    .restart local v4    # "disabled":Z
    :goto_5b
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v6, 0x12

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1648
    if-eqz v4, :cond_6c

    .line 1649
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v6, "uid gone"

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1651
    :cond_6c
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_dd

    .line 1652
    :try_start_71
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1653
    monitor-exit v5

    .line 1654
    goto :goto_d3

    .line 1653
    :catchall_7c
    move-exception v2

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v2

    .line 1639
    .end local v1    # "uid":I
    .end local v4    # "disabled":Z
    :pswitch_7f
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1640
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1641
    .local v2, "procState":I
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1642
    goto :goto_d3

    .line 1631
    .end local v1    # "uid":I
    .end local v2    # "procState":I
    :pswitch_89
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1632
    goto :goto_d3

    .line 1634
    :pswitch_8f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x0

    const-string v5, "app no longer allowed to run"

    # invokes: Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1636
    goto :goto_d3

    .line 1622
    :pswitch_9c
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_a8

    .line 1624
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_d3

    .line 1627
    :cond_a8
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;)V

    .line 1629
    goto :goto_d3

    .line 1611
    :pswitch_ae
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1614
    .local v1, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_cd

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v2, v1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1615
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1616
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v4}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_d2

    .line 1618
    :cond_cd
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1620
    .end local v1    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_d2
    nop

    .line 1676
    :goto_d3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$700(Lcom/android/server/job/JobSchedulerService;)V

    .line 1678
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1679
    monitor-exit v0

    .line 1680
    return-void

    .line 1679
    :catchall_dd
    move-exception v1

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_7e .. :try_end_df} :catchall_dd

    throw v1

    nop

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_9c
        :pswitch_8f
        :pswitch_89
        :pswitch_7f
        :pswitch_52
        :pswitch_3c
        :pswitch_16
    .end packed-switch
.end method
