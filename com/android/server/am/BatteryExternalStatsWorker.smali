.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mOnBatteryScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseLatestStates:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$y4b5S_CLdUbDV0ejaQDagLXGZRg;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$y4b5S_CLdUbDV0ejaQDagLXGZRg;

    .line 72
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 85
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 88
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 100
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 109
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 111
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 114
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 119
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-array v11, v3, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v11, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v19}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 318
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 384
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 131
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    .line 132
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 6
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 519
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 520
    return-object v0

    .line 524
    :cond_4
    const-wide/16 v1, 0x7d0

    .line 525
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 526
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 528
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 530
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 532
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1f

    .line 533
    return-object v2

    .line 536
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1f
    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_3a} :catch_3b

    .line 539
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    goto :goto_5c

    .line 537
    :catch_3b
    move-exception v1

    .line 538
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_5c
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 240
    :cond_d
    return-void
.end method

.method private extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 46
    .param p1, "latest"    # Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation

    move-object/from16 v0, p0

    .line 545
    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    sub-long/2addr v2, v4

    .line 546
    .local v2, "timePeriodMs":J
    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 547
    .local v4, "lastScanMs":J
    iget-object v6, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 548
    .local v6, "lastIdleMs":J
    iget-object v8, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v8, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 549
    .local v8, "lastTxMs":J
    iget-object v10, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v10, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 550
    .local v10, "lastRxMs":J
    iget-object v12, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v12, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 554
    .local v12, "lastEnergy":J
    iget-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 555
    .local v14, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-wide v15, v12

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v12

    .end local v12    # "lastEnergy":J
    .local v15, "lastEnergy":J
    iput-wide v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v12

    iput v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 558
    iget-wide v12, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    sub-long/2addr v12, v8

    .line 559
    .local v12, "txTimeMs":J
    move-object/from16 v17, v14

    move-wide/from16 v18, v15

    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .end local v14    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v15    # "lastEnergy":J
    .local v17, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v18, "lastEnergy":J
    sub-long/2addr v14, v10

    .line 560
    .local v14, "rxTimeMs":J
    move-wide/from16 v20, v8

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .end local v8    # "lastTxMs":J
    .local v20, "lastTxMs":J
    sub-long/2addr v8, v6

    .line 561
    .local v8, "idleTimeMs":J
    move-wide/from16 v22, v8

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .end local v8    # "idleTimeMs":J
    .local v22, "idleTimeMs":J
    sub-long/2addr v8, v4

    .line 563
    .local v8, "scanTimeMs":J
    move-wide/from16 v24, v4

    const-wide/16 v4, 0x0

    .end local v4    # "lastScanMs":J
    .local v24, "lastScanMs":J
    cmp-long v16, v12, v4

    if-ltz v16, :cond_138

    cmp-long v16, v14, v4

    if-ltz v16, :cond_138

    cmp-long v16, v8, v4

    if-gez v16, :cond_64

    .line 566
    move-wide/from16 v36, v2

    move-wide/from16 v32, v6

    move-wide/from16 v38, v8

    move-wide/from16 v42, v10

    move-object/from16 v0, v17

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    move-wide/from16 v2, v22

    goto/16 :goto_148

    .line 573
    :cond_64
    add-long v4, v12, v14

    .line 575
    .local v4, "totalActiveTimeMs":J
    cmp-long v16, v4, v2

    if-lez v16, :cond_102

    .line 577
    const-wide/16 v26, 0x0

    .line 578
    .local v26, "maxExpectedIdleTimeMs":J
    const-wide/16 v28, 0x2ee

    add-long v28, v2, v28

    cmp-long v16, v4, v28

    if-lez v16, :cond_f9

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-wide/from16 v30, v8

    const-string v8, "Total Active time "

    .end local v8    # "scanTimeMs":J
    .local v30, "scanTimeMs":J
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 582
    const-string v8, " is longer than sample period "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 584
    const-string v8, ".\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v8, "Previous WiFi snapshot: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "idle="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 587
    const-string v8, " rx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 589
    const-string v8, " tx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    move-wide/from16 v8, v20

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 591
    .end local v20    # "lastTxMs":J
    .local v8, "lastTxMs":J
    move-wide/from16 v32, v6

    const-string v6, " e="

    .end local v6    # "lastIdleMs":J
    .local v32, "lastIdleMs":J
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 592
    .end local v18    # "lastEnergy":J
    .local v6, "lastEnergy":J
    move-wide/from16 v34, v8

    const-string v8, "\n"

    .end local v8    # "lastTxMs":J
    .local v34, "lastTxMs":J
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v8, "Current WiFi snapshot: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "idle="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 595
    const-string v8, " rx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 597
    const-string v8, " tx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 599
    const-string v8, " e="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 600
    const-string v8, "BatteryExternalStatsWorker"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_10c

    .line 603
    .end local v30    # "scanTimeMs":J
    .end local v32    # "lastIdleMs":J
    .end local v34    # "lastTxMs":J
    .local v6, "lastIdleMs":J
    .local v8, "scanTimeMs":J
    .restart local v18    # "lastEnergy":J
    .restart local v20    # "lastTxMs":J
    :cond_f9
    move-wide/from16 v32, v6

    move-wide/from16 v30, v8

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    .end local v8    # "scanTimeMs":J
    .end local v18    # "lastEnergy":J
    .end local v20    # "lastTxMs":J
    .local v6, "lastEnergy":J
    .restart local v30    # "scanTimeMs":J
    .restart local v32    # "lastIdleMs":J
    .restart local v34    # "lastTxMs":J
    goto :goto_10c

    .end local v26    # "maxExpectedIdleTimeMs":J
    .end local v30    # "scanTimeMs":J
    .end local v32    # "lastIdleMs":J
    .end local v34    # "lastTxMs":J
    .local v6, "lastIdleMs":J
    .restart local v8    # "scanTimeMs":J
    .restart local v18    # "lastEnergy":J
    .restart local v20    # "lastTxMs":J
    :cond_102
    move-wide/from16 v32, v6

    move-wide/from16 v30, v8

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    .end local v8    # "scanTimeMs":J
    .end local v18    # "lastEnergy":J
    .end local v20    # "lastTxMs":J
    .local v6, "lastEnergy":J
    .restart local v30    # "scanTimeMs":J
    .restart local v32    # "lastIdleMs":J
    .restart local v34    # "lastTxMs":J
    sub-long v26, v2, v4

    .restart local v26    # "maxExpectedIdleTimeMs":J
    :goto_10c
    move-wide/from16 v8, v26

    .line 606
    .end local v26    # "maxExpectedIdleTimeMs":J
    .local v8, "maxExpectedIdleTimeMs":J
    move-object/from16 v0, v17

    iput-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 607
    .end local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v0, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    iput-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 608
    move-wide/from16 v36, v2

    move-wide/from16 v2, v30

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 614
    .end local v30    # "scanTimeMs":J
    .local v2, "scanTimeMs":J
    .local v36, "timePeriodMs":J
    move-wide/from16 v38, v2

    move-wide/from16 v40, v4

    move-wide/from16 v42, v10

    move-wide/from16 v2, v22

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .end local v4    # "totalActiveTimeMs":J
    .end local v10    # "lastRxMs":J
    .end local v22    # "idleTimeMs":J
    .local v2, "idleTimeMs":J
    .local v38, "scanTimeMs":J
    .local v40, "totalActiveTimeMs":J
    .local v42, "lastRxMs":J
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 615
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    sub-long/2addr v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .end local v8    # "maxExpectedIdleTimeMs":J
    .end local v40    # "totalActiveTimeMs":J
    goto :goto_172

    .line 566
    .end local v0    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v32    # "lastIdleMs":J
    .end local v34    # "lastTxMs":J
    .end local v36    # "timePeriodMs":J
    .end local v38    # "scanTimeMs":J
    .end local v42    # "lastRxMs":J
    .local v2, "timePeriodMs":J
    .local v6, "lastIdleMs":J
    .local v8, "scanTimeMs":J
    .restart local v10    # "lastRxMs":J
    .restart local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v18    # "lastEnergy":J
    .restart local v20    # "lastTxMs":J
    .restart local v22    # "idleTimeMs":J
    :cond_138
    move-wide/from16 v36, v2

    move-wide/from16 v32, v6

    move-wide/from16 v38, v8

    move-wide/from16 v42, v10

    move-object/from16 v0, v17

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    move-wide/from16 v2, v22

    .end local v8    # "scanTimeMs":J
    .end local v10    # "lastRxMs":J
    .end local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v18    # "lastEnergy":J
    .end local v20    # "lastTxMs":J
    .end local v22    # "idleTimeMs":J
    .restart local v0    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v2, "idleTimeMs":J
    .local v6, "lastEnergy":J
    .restart local v32    # "lastIdleMs":J
    .restart local v34    # "lastTxMs":J
    .restart local v36    # "timePeriodMs":J
    .restart local v38    # "scanTimeMs":J
    .restart local v42    # "lastRxMs":J
    :goto_148
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 567
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 568
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 569
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 570
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 571
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_172
    move-object/from16 v4, p0

    iput-object v1, v4, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 619
    return-object v0
.end method

.method public static synthetic lambda$7toxTvZDSEytL0rCkoEfGilPDWM(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes(ZZ)V

    return-void
.end method

.method public static synthetic lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->updateProcStateCpuTimes(ZZ)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 74
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "batterystats-worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 75
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    return-object v0
.end method

.method public static synthetic lambda$scheduleCpuSyncDueToWakelockChange$1(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public static synthetic lambda$scheduleCpuSyncDueToWakelockChange$2(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 3

    .line 206
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 207
    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public static synthetic lambda$scheduleSyncDueToBatteryLevelChange$3(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 3

    .line 228
    const-string v0, "battery-level"

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .registers 7
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 255
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 259
    :cond_15
    if-eqz p1, :cond_23

    .line 262
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    .line 263
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_23

    .line 265
    :cond_22
    return-object p1

    .line 269
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 303
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_27

    .line 304
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 305
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 308
    :cond_27
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 309
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    .registers 23
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "useLatestStates"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation

    move-object/from16 v1, p0

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 399
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    .line 401
    .local v4, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2e

    .line 403
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_1a

    .line 404
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 408
    :cond_1a
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_2e

    .line 410
    :try_start_1e
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 411
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 414
    goto :goto_2e

    .line 412
    :catch_2d
    move-exception v0

    .line 418
    :cond_2e
    :goto_2e
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_43

    .line 420
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 421
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_43

    .line 422
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string v6, "bluetooth"

    invoke-direct {v5, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 423
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 427
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_43
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_65

    .line 429
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_53

    .line 430
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 433
    :cond_53
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_65

    .line 434
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "telephony"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 435
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 439
    :cond_65
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 440
    .local v5, "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 441
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-static {v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/ModemActivityInfo;

    .line 443
    .local v7, "modemInfo":Landroid/telephony/ModemActivityInfo;
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 444
    :try_start_7d
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v14, 0xe

    const/16 v16, 0x0

    .line 444
    move-object/from16 v15, p1

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 450
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b2

    .line 451
    if-eqz p5, :cond_a8

    .line 452
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_9c
    .catchall {:try_start_7d .. :try_end_9c} :catchall_14c

    move v10, v0

    .line 453
    .end local p3    # "onBattery":Z
    .local v10, "onBattery":Z
    :try_start_9d
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a5

    .line 455
    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    move v11, v0

    goto :goto_ac

    .line 474
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_a5
    move-exception v0

    goto/16 :goto_14f

    .line 455
    .end local v10    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :cond_a8
    move/from16 v10, p3

    move/from16 v11, p4

    .line 455
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .local v11, "onBatteryScreenOff":Z
    :goto_ac
    :try_start_ac
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    goto :goto_b6

    .line 458
    .end local v10    # "onBattery":Z
    .end local v11    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_b2
    move/from16 v10, p3

    move/from16 v11, p4

    .line 458
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .restart local v11    # "onBatteryScreenOff":Z
    :goto_b6
    and-int/lit8 v0, p2, 0x1f

    if-eqz v0, :cond_c4

    .line 459
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 460
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    .line 463
    :cond_c4
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_cd

    .line 464
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    .line 467
    :cond_cd
    if-eqz v6, :cond_f1

    .line 468
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 469
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    goto :goto_f1

    .line 471
    :cond_db
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bluetooth info is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_f1
    :goto_f1
    monitor-exit v8
    :try_end_f2
    .catchall {:try_start_ac .. :try_end_f2} :catchall_153

    .line 497
    const/4 v0, 0x0

    if-eqz v5, :cond_105

    invoke-virtual {v5}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v8

    if-eqz v8, :cond_105

    .line 498
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    goto :goto_121

    .line 500
    :cond_105
    const-string v8, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wifi info is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 504
    :goto_121
    if-eqz v7, :cond_12f

    invoke-virtual {v7}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 505
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_14b

    .line 507
    :cond_12f
    const-string v8, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "modem info is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 511
    :goto_14b
    return-void

    .line 474
    .end local v10    # "onBattery":Z
    .end local v11    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_14c
    move-exception v0

    move/from16 v10, p3

    .line 474
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .restart local v11    # "onBatteryScreenOff":Z
    :goto_14f
    move/from16 v11, p4

    :goto_151
    :try_start_151
    monitor-exit v8
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_153

    throw v0

    :catchall_153
    move-exception v0

    goto :goto_151
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .registers 3

    .line 216
    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 221
    :cond_e
    monitor-exit p0

    .line 222
    return-void

    .line 221
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .registers 3

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 315
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .registers 8
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 175
    monitor-exit v0

    return-object v2

    .line 177
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_39

    .line 178
    monitor-enter p0

    .line 179
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_34

    .line 180
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 180
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 184
    :cond_34
    monitor-exit p0

    .line 185
    return-object v2

    .line 184
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v0

    .line 177
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 143
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 141
    .end local p1    # "uid":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    .line 141
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    throw p1
.end method

.method public scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 193
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 194
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 197
    :cond_12
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_1
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    .line 148
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 210
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 156
    monitor-exit v0

    return-object v2

    .line 158
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    .line 159
    monitor-enter p0

    .line 160
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_36

    .line 161
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 161
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 161
    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 166
    :cond_36
    monitor-exit p0

    .line 167
    return-object v2

    .line 166
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw v0

    .line 158
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 289
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 291
    :cond_e
    monitor-exit p0

    return-void

    .line 287
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_10
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$eNtlYRY6yBjSWzaL4STPjcGEduM;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$eNtlYRY6yBjSWzaL4STPjcGEduM;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 230
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    monitor-exit p0

    return-object v0

    .line 277
    :cond_17
    :try_start_17
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 280
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    .line 272
    :catchall_29
    move-exception v0

    monitor-exit p0

    .line 272
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    throw v0
.end method

.method public shutdown()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 295
    return-void
.end method
