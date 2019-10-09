.class Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetricsLoggerHelper"
.end annotation


# static fields
.field private static final STATE_CHANGE_DETECT_MASK:I = 0x3


# instance fields
.field private mLastState:I

.field private mStartBatteryLevel:I

.field private mStartPercent:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 477
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    return-void
.end method


# virtual methods
.method reportLocked(IJIIII)V
    .registers 14
    .param p1, "state"    # I
    .param p2, "deltaTimeMs"    # J
    .param p4, "startBatteryLevelUa"    # I
    .param p5, "startBatteryLevelPercent"    # I
    .param p6, "endBatteryLevelUa"    # I
    .param p7, "endBatteryLevelPercent"    # I

    .line 509
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    # getter for: Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->access$000(Lcom/android/server/power/batterysaver/BatterySavingStats;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 510
    return-void

    .line 512
    :cond_9
    nop

    .line 513
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 514
    .local v0, "batterySaverOn":Z
    :goto_15
    nop

    .line 515
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 517
    .local v3, "interactive":Z
    :goto_1f
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x516

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 518
    if-eqz v0, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v1

    :goto_2b
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x517

    .line 519
    if-eqz v3, :cond_35

    move v1, v2

    nop

    :cond_35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x518

    .line 520
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x519

    .line 521
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x51b

    .line 523
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 522
    invoke-virtual {v1, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x51a

    .line 524
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x51c

    .line 525
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 527
    .local v1, "logMaker":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    # getter for: Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->access$100(Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 528
    return-void
.end method

.method public transitionStateLocked(IJII)V
    .registers 21
    .param p1, "newState"    # I
    .param p2, "now"    # J
    .param p4, "batteryLevel"    # I
    .param p5, "batteryPercent"    # I

    move-object v8, p0

    move/from16 v9, p1

    move-wide/from16 v10, p2

    .line 489
    iget v0, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-ltz v9, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    xor-int/2addr v0, v3

    if-nez v0, :cond_1f

    iget v0, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    xor-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v2

    :goto_20
    move v12, v1

    .line 492
    .local v12, "stateChanging":Z
    if-eqz v12, :cond_45

    .line 493
    iget v0, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    if-ltz v0, :cond_3a

    .line 494
    iget-wide v0, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartTime:J

    sub-long v13, v10, v0

    .line 496
    .local v13, "deltaTime":J
    iget v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    iget v4, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartBatteryLevel:I

    iget v5, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartPercent:I

    move-object v0, v8

    move-wide v2, v13

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->reportLocked(IJIIII)V

    .line 499
    .end local v13    # "deltaTime":J
    :cond_3a
    iput-wide v10, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartTime:J

    .line 500
    move/from16 v0, p4

    iput v0, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartBatteryLevel:I

    .line 501
    move/from16 v1, p5

    iput v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartPercent:I

    goto :goto_49

    .line 503
    :cond_45
    move/from16 v0, p4

    move/from16 v1, p5

    :goto_49
    iput v9, v8, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    .line 504
    return-void
.end method
