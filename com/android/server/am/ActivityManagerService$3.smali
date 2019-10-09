.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 2720
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2739
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2723
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    .line 2827
    return-void

    .line 2725
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2726
    .local v4, "start":J
    const/4 v6, 0x0

    .line 2727
    .local v6, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2728
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_26

    .line 2729
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2730
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2732
    .end local v6    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object v6, v0

    .line 2732
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v6    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_26
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_1b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2733
    const/4 v0, 0x0

    if-eqz v6, :cond_c7

    .line 2734
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2735
    const-wide/16 v9, 0x0

    .line 2737
    .local v9, "nativeTotalPss":J
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v7

    .line 2738
    :try_start_39
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v12, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v11

    .line 2741
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_c4

    .line 2742
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2743
    .local v12, "N":I
    move v7, v8

    move-wide/from16 v24, v9

    .line 2743
    .end local v9    # "nativeTotalPss":J
    .local v7, "j":I
    .local v24, "nativeTotalPss":J
    :goto_4b
    if-ge v7, v12, :cond_7b

    .line 2744
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 2745
    :try_start_52
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v13, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_66

    .line 2747
    monitor-exit v9

    goto :goto_75

    .line 2749
    :cond_66
    monitor-exit v9
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_78

    .line 2750
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long v24, v24, v9

    .line 2743
    :goto_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 2749
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 2752
    .end local v7    # "j":I
    :cond_7b
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2753
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_81
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2756
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v9

    .line 2757
    .local v9, "cachedKb":J
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    move-wide/from16 v26, v13

    .line 2758
    .local v26, "freeKb":J
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v13

    move-wide/from16 v28, v13

    .line 2759
    .local v28, "zramKb":J
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v13

    move-wide/from16 v30, v13

    .line 2760
    .local v30, "kernelKb":J
    const-wide/16 v13, 0x400

    mul-long v32, v9, v13

    mul-long v34, v26, v13

    mul-long v36, v28, v13

    mul-long v38, v30, v13

    mul-long v40, v24, v13

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2762
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide v14, v9

    move-wide/from16 v16, v26

    move-wide/from16 v18, v28

    move-wide/from16 v20, v30

    move-wide/from16 v22, v24

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2764
    .end local v9    # "cachedKb":J
    .end local v26    # "freeKb":J
    .end local v28    # "zramKb":J
    .end local v30    # "kernelKb":J
    monitor-exit v7
    :try_end_ba
    .catchall {:try_start_81 .. :try_end_ba} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_c7

    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v7
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2741
    .end local v11    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v12    # "N":I
    .end local v24    # "nativeTotalPss":J
    .local v9, "nativeTotalPss":J
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v7
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v0

    .line 2767
    .end local v9    # "nativeTotalPss":J
    :cond_c7
    :goto_c7
    const/4 v7, 0x0

    .line 2768
    .local v7, "num":I
    const/4 v9, 0x3

    new-array v9, v9, [J

    move v10, v7

    .line 2775
    .end local v7    # "num":I
    .local v9, "tmp":[J
    .local v10, "num":I
    :goto_cc
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_cf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2776
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_118

    .line 2777
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_e3

    goto :goto_10c

    :cond_e3
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected pss of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processes in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2777
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :goto_10c
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2781
    monitor-exit v11
    :try_end_114
    .catchall {:try_start_cf .. :try_end_114} :catchall_1b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2783
    :cond_118
    :try_start_118
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2784
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2785
    .local v12, "procState":I
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v24, v13

    .line 2786
    .local v24, "statType":I
    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v29, v13

    .line 2787
    .local v29, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2788
    .local v13, "now":J
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_143

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v15, :cond_143

    const-wide/16 v15, 0x3e8

    add-long v15, v29, v15

    cmp-long v15, v15, v13

    if-gez v15, :cond_143

    .line 2791
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2791
    .local v15, "pid":I
    goto :goto_14b

    .line 2793
    .end local v15    # "pid":I
    :cond_143
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v15}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2798
    const/4 v7, 0x0

    .line 2799
    nop

    .line 2799
    .end local v13    # "now":J
    move v15, v8

    .line 2801
    .restart local v15    # "pid":I
    :goto_14b
    monitor-exit v11
    :try_end_14c
    .catchall {:try_start_118 .. :try_end_14c} :catchall_1b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2802
    if-eqz v7, :cond_1b1

    .line 2803
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v31

    .line 2804
    .local v31, "startTime":J
    invoke-static {v15, v9, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v33

    .line 2805
    .local v33, "pss":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v35

    .line 2806
    .local v35, "endTime":J
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_160
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2807
    const-wide/16 v13, 0x0

    cmp-long v13, v33, v13

    if-eqz v13, :cond_19b

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v13, :cond_19b

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v13, v12, :cond_19b

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v13, v15, :cond_19b

    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v13, v13, v29

    if-nez v13, :cond_19b

    .line 2809
    add-int/lit8 v10, v10, 0x1

    .line 2810
    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2811
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    aget-wide v18, v9, v8

    aget-wide v20, v9, v3

    const/4 v14, 0x2

    aget-wide v22, v9, v14

    sub-long v25, v35, v31

    .line 2812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27
    :try_end_191
    .catchall {:try_start_160 .. :try_end_191} :catchall_1a7

    .line 2811
    move-object v14, v7

    move/from16 v37, v15

    move v15, v12

    .line 2811
    .end local v15    # "pid":I
    .local v37, "pid":I
    move-wide/from16 v16, v33

    :try_start_197
    invoke-virtual/range {v13 .. v28}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V

    goto :goto_1a2

    .line 2814
    .end local v37    # "pid":I
    .restart local v15    # "pid":I
    :cond_19b
    move/from16 v37, v15

    .line 2814
    .end local v15    # "pid":I
    .restart local v37    # "pid":I
    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2822
    :goto_1a2
    monitor-exit v11
    :try_end_1a3
    .catchall {:try_start_197 .. :try_end_1a3} :catchall_1af

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1b1

    .line 2822
    .end local v37    # "pid":I
    .restart local v15    # "pid":I
    :catchall_1a7
    move-exception v0

    move/from16 v37, v15

    .line 2822
    .end local v15    # "pid":I
    .restart local v37    # "pid":I
    :goto_1aa
    :try_start_1aa
    monitor-exit v11
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1af

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1af
    move-exception v0

    goto :goto_1aa

    .line 2824
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "procState":I
    .end local v24    # "statType":I
    .end local v29    # "lastPssTime":J
    .end local v31    # "startTime":J
    .end local v33    # "pss":J
    .end local v35    # "endTime":J
    .end local v37    # "pid":I
    :cond_1b1
    :goto_1b1
    goto/16 :goto_cc

    .line 2801
    :catchall_1b3
    move-exception v0

    :try_start_1b4
    monitor-exit v11
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2732
    .end local v9    # "tmp":[J
    .end local v10    # "num":I
    :catchall_1b9
    move-exception v0

    :try_start_1ba
    monitor-exit v7
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
