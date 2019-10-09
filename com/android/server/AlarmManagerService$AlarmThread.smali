.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 3556
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3557
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3558
    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .line 3562
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_7
    move-object v8, v0

    .line 3566
    .end local v0    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local v8, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;J)I

    move-result v2

    .line 3568
    .local v2, "result":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3569
    .local v9, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 3570
    .local v11, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3571
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastWakeup:J
    invoke-static {v0, v11, v12}, Lcom/android/server/AlarmManagerService;->access$1002(Lcom/android/server/AlarmManagerService;J)J

    .line 3572
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1a6

    .line 3574
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3576
    const/high16 v0, 0x10000

    and-int v3, v2, v0

    if-eqz v3, :cond_ad

    .line 3581
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3582
    :try_start_33
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 3583
    .local v4, "lastTimeChangeClockTime":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v6, v11, v6

    add-long/2addr v6, v4

    .line 3585
    .local v6, "expectedClockTime":J
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_aa

    .line 3586
    const-wide/16 v13, 0x0

    cmp-long v3, v4, v13

    if-eqz v3, :cond_52

    const-wide/16 v13, 0x3e8

    sub-long v15, v6, v13

    cmp-long v3, v9, v15

    if-ltz v3, :cond_52

    add-long/2addr v13, v6

    cmp-long v3, v9, v13

    if-lez v3, :cond_ad

    .line 3593
    :cond_52
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v13}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 3594
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v13}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 3595
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 3596
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 3597
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 3598
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 3599
    :try_start_7c
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 3600
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v9, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 3601
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v11, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 3602
    monitor-exit v13
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_a7

    .line 3603
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.TIME_SET"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3604
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v13, 0x25200000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3608
    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v3, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3612
    or-int/lit8 v2, v2, 0x5

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastTimeChangeClockTime":J
    .end local v6    # "expectedClockTime":J
    goto :goto_ad

    .line 3602
    .restart local v4    # "lastTimeChangeClockTime":J
    .restart local v6    # "expectedClockTime":J
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v13
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0

    .line 3585
    .end local v4    # "lastTimeChangeClockTime":J
    .end local v6    # "expectedClockTime":J
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v0

    .line 3616
    .end local v2    # "result":I
    .local v13, "result":I
    :cond_ad
    :goto_ad
    move v13, v2

    if-eq v13, v0, :cond_194

    .line 3619
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3640
    :try_start_b5
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastTrigger:J
    invoke-static {v0, v11, v12}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;J)J

    .line 3641
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v3, v8

    move-wide v4, v11

    move-wide v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v0

    .line 3642
    .local v0, "hasWakeup":Z
    if-nez v0, :cond_10a

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v11, v12}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 3645
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_ec

    .line 3646
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v11, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 3647
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3648
    invoke-virtual {v3, v11, v12}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v3, v11

    iput-wide v3, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3650
    :cond_ec
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3651
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 3652
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3653
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_18f

    .line 3659
    :cond_10a
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14b

    .line 3660
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3661
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3662
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3663
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v11, v2

    .line 3664
    .local v2, "thisDelayTime":J
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v5, v4, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3665
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_144

    .line 3666
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v2, v4, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3668
    :cond_144
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3670
    .end local v2    # "thisDelayTime":J
    :cond_14b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3672
    .local v2, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_151
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_17b

    .line 3673
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3674
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static {v5, v4}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-nez v5, :cond_178

    .line 3675
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3676
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3675
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3672
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_178
    add-int/lit8 v3, v3, 0x1

    goto :goto_151

    .line 3679
    .end local v3    # "i":I
    :cond_17b
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v8, v11, v12}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3680
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 3681
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3682
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)V

    .line 3684
    .end local v0    # "hasWakeup":Z
    .end local v2    # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_18f
    monitor-exit v14

    goto :goto_19f

    :catchall_191
    move-exception v0

    monitor-exit v14
    :try_end_193
    .catchall {:try_start_b5 .. :try_end_193} :catchall_191

    throw v0

    .line 3689
    :cond_194
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3690
    :try_start_199
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3691
    monitor-exit v4

    .line 3693
    .end local v9    # "nowRTC":J
    .end local v11    # "nowELAPSED":J
    .end local v13    # "result":I
    :goto_19f
    nop

    .line 3562
    move-object v0, v8

    goto/16 :goto_7

    .line 3691
    .restart local v9    # "nowRTC":J
    .restart local v11    # "nowELAPSED":J
    .restart local v13    # "result":I
    :catchall_1a3
    move-exception v0

    monitor-exit v4
    :try_end_1a5
    .catchall {:try_start_199 .. :try_end_1a5} :catchall_1a3

    throw v0

    .line 3572
    .end local v13    # "result":I
    .local v2, "result":I
    :catchall_1a6
    move-exception v0

    :try_start_1a7
    monitor-exit v3
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    throw v0
.end method
