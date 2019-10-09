.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_CHARGING:I = -0x2

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverDisabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverEnabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

.field private mSendTronLog:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 172
    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 175
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;-><init>(Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    .line 184
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 185
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 186
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySavingStats;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 49
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "interactiveState"    # I
    .param p4, "interactiveLabel"    # Ljava/lang/String;
    .param p5, "dozeState"    # I
    .param p6, "dozeLabel"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    .line 456
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    move-object/from16 v4, p6

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const/4 v6, 0x0

    invoke-direct {v0, v6, v2, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v7

    .line 463
    .local v7, "offStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/4 v8, 0x1

    invoke-direct {v0, v8, v2, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v9

    .line 465
    .local v9, "onStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const-string v10, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    .line 466
    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    iget v6, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v6, v6, 0x3e8

    .line 467
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v8

    iget v6, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 468
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v11, v8

    .line 469
    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v11, v8

    .line 470
    invoke-virtual {v9}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v11, v8

    iget v6, v9, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v6, v6, 0x3e8

    .line 471
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x5

    aput-object v6, v11, v8

    iget v6, v9, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 472
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x6

    aput-object v6, v11, v8

    .line 473
    invoke-virtual {v9}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v12

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x7

    aput-object v6, v11, v8

    .line 465
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private endLastStateLocked(JII)V
    .registers 27
    .param p1, "now"    # J
    .param p3, "batteryLevel"    # I
    .param p4, "batteryPercent"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 333
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_7

    .line 334
    return-void

    .line 336
    :cond_7
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 338
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 339
    move/from16 v3, p4

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 340
    move-wide/from16 v4, p1

    iput-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 342
    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long/2addr v6, v8

    .line 343
    .local v6, "deltaTime":J
    iget v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int/2addr v8, v9

    .line 344
    .local v8, "deltaDrain":I
    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int/2addr v9, v10

    .line 346
    .local v9, "deltaPercent":I
    iget-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 347
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v10, v8

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 348
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 359
    iget v10, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 360
    invoke-static {v10}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v10

    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 361
    invoke-static {v11}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v11

    iget v12, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 362
    invoke-static {v12}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v12

    iget-wide v13, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v15, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 359
    move-wide/from16 v17, v13

    move-wide v13, v6

    move/from16 v19, v15

    move v15, v8

    move/from16 v16, v9

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    .line 370
    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_19

    .line 201
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 202
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_19

    .line 203
    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_19
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 5
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I

    .line 256
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    return-object v0
.end method

.method private startNewStateLocked(IJII)V
    .registers 9
    .param p1, "newState"    # I
    .param p2, "now"    # J
    .param p4, "batteryLevel"    # I
    .param p5, "batteryPercent"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 377
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 379
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v0, :cond_7

    .line 380
    return-void

    .line 383
    :cond_7
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    .line 384
    .local v0, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    iput p4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 385
    iput p5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 386
    iput-wide p2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 387
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 388
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    packed-switch p0, :pswitch_data_38

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    return-object v0

    .line 228
    :pswitch_31
    const-string v0, "NotInitialized"

    return-object v0

    .line 230
    :pswitch_34
    const-string v0, "Charging"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch -0x2
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method static statesToIndex(III)I
    .registers 5
    .param p0, "batterySaverState"    # I
    .param p1, "interactiveState"    # I
    .param p2, "dozeState"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    and-int/lit8 v0, p0, 0x1

    .line 216
    .local v0, "ret":I
    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 217
    and-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 218
    return v0
.end method

.method private transitionStateLocked(I)V
    .registers 14
    .param p1, "newState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 305
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_5

    .line 306
    return-void

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v7

    .line 309
    .local v7, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v0

    .line 310
    .local v0, "batteryLevel":I
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v9

    .line 312
    .local v9, "batteryPercent":I
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 313
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    move v10, v1

    .line 314
    .local v10, "oldBatterySaverEnabled":Z
    nop

    .line 315
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    if-eqz v1, :cond_28

    move v2, v3

    nop

    :cond_28
    move v11, v2

    .line 316
    .local v11, "newBatterySaverEnabled":Z
    if-eq v10, v11, :cond_41

    .line 317
    iput-boolean v11, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    .line 318
    if-eqz v11, :cond_3b

    .line 319
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 320
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    goto :goto_41

    .line 322
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 326
    :cond_41
    :goto_41
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    .line 327
    move-object v1, p0

    move v2, p1

    move-wide v3, v7

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    .line 328
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->transitionStateLocked(IJII)V

    .line 329
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 391
    iget-object v10, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 392
    :try_start_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    const-string v0, "Battery saving stats:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_120

    move-object/from16 v1, p2

    :try_start_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_11e

    move-object v11, v0

    .line 397
    .end local p2    # "indent":Ljava/lang/String;
    .local v11, "indent":Ljava/lang/String;
    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v12, v0

    .line 398
    .local v12, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v0

    move-wide v14, v0

    .line 399
    .local v14, "nowElapsed":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    const-string v1, "Battery Saver is currently: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    iget-boolean v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    if-eqz v1, :cond_44

    const-string v1, "ON"

    goto :goto_46

    :cond_44
    const-string v1, "OFF"

    :goto_46
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7c

    .line 405
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    const-string v1, "Last ON time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/util/Date;

    sub-long v5, v12, v14

    iget-wide v3, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 414
    :cond_7c
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_af

    .line 415
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    const-string v1, "Last OFF time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/util/Date;

    sub-long v2, v12, v14

    iget-wide v4, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 424
    :cond_af
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    const-string v1, "Times enabled: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 431
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string v1, "Drain stats:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const-string v1, "                   Battery saver OFF                          ON"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x0

    const-string v7, "NonDoze"

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 438
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x0

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 441
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x2

    const-string v7, "Deep   "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 443
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x2

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 446
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x1

    const-string v7, "Light  "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 448
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x1

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 450
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "now":J
    .end local v14    # "nowElapsed":J
    monitor-exit v10

    .line 451
    return-void

    .line 450
    .end local v11    # "indent":Ljava/lang/String;
    .restart local p2    # "indent":Ljava/lang/String;
    :catchall_11e
    move-exception v0

    goto :goto_123

    :catchall_120
    move-exception v0

    move-object/from16 v1, p2

    .line 450
    .end local p2    # "indent":Ljava/lang/String;
    .restart local v11    # "indent":Ljava/lang/String;
    :goto_123
    move-object v11, v1

    :goto_124
    monitor-exit v10
    :try_end_125
    .catchall {:try_start_23 .. :try_end_125} :catchall_126

    throw v0

    :catchall_126
    move-exception v0

    goto :goto_124
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 6
    .param p1, "stateIndex"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 244
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    if-nez v1, :cond_20

    .line 245
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    move-object v1, v2

    .line 246
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_20
    monitor-exit v0

    return-object v1

    .line 249
    .end local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method injectBatteryLevel()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 267
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_8

    .line 268
    const/4 v1, 0x0

    return v1

    .line 270
    :cond_8
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v1

    return v1
.end method

.method injectBatteryPercent()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 276
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_8

    .line 277
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_8
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    return v1
.end method

.method injectCurrentTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSendTronLog(Z)V
    .registers 4
    .param p1, "send"    # Z

    .line 194
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public startCharging()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    const/4 v1, -0x2

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public transitionState(III)V
    .registers 6
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v1

    .line 290
    .local v1, "newState":I
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 291
    .end local v1    # "newState":I
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
