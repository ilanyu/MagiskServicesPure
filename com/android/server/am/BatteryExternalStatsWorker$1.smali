.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 318
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 328
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I
    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v1

    .line 330
    .local v1, "updateFlags":I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    goto :goto_28

    :cond_26
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    :goto_28
    move-object v8, v2

    .line 332
    .local v8, "uidsToRemove":[I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 333
    .local v5, "onBattery":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 334
    .local v6, "onBatteryScreenOff":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 335
    .local v7, "useLatestStates":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I
    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 336
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 338
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;
    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 339
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z
    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 340
    and-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_64

    .line 341
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # invokes: Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 343
    :cond_64
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6d

    .line 344
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 346
    :cond_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_ce

    .line 349
    :try_start_6e
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_b5

    .line 354
    :try_start_75
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v4, v1

    # invokes: Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_b0

    .line 360
    nop

    .line 361
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_b2

    .line 363
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_8a

    .line 364
    :try_start_81
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 368
    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_91} :catch_b5

    .line 369
    :try_start_91
    array-length v2, v8

    :goto_92
    if-ge v9, v2, :cond_a2

    aget v4, v8, v9

    .line 370
    .local v4, "uid":I
    iget-object v10, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v10}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V

    .line 369
    .end local v4    # "uid":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_92

    .line 372
    :cond_a2
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 373
    monitor-exit v0

    .line 376
    goto :goto_bd

    .line 373
    :catchall_ad
    move-exception v2

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_91 .. :try_end_af} :catchall_ad

    :try_start_af
    throw v2
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b0} :catch_b5

    .line 357
    :catchall_b0
    move-exception v2

    :try_start_b1
    throw v2

    .line 361
    :catchall_b2
    move-exception v2

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v2
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b5} :catch_b5

    .line 374
    :catch_b5
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v4, "Error updating external stats: "

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bd
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 379
    :try_start_c0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J
    invoke-static {v0, v9, v10}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 380
    monitor-exit v2

    .line 381
    return-void

    .line 380
    :catchall_cb
    move-exception v0

    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_c0 .. :try_end_cd} :catchall_cb

    throw v0

    .line 346
    .end local v1    # "updateFlags":I
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "useLatestStates":Z
    .end local v8    # "uidsToRemove":[I
    :catchall_ce
    move-exception v1

    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v1
.end method
