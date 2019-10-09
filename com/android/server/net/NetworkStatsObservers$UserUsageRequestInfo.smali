.class Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "statsObserver"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "accessLevel"    # I

    .line 377
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    .line 378
    return-void
.end method

.method private getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    iget v11, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v12, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 414
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-wide v1

    .line 415
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    :catch_1c
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/SecurityException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method protected checkStats()Z
    .registers 8

    .line 382
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v2, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    .line 384
    .local v0, "uidsToMonitor":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 385
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-object v3, v3, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    aget v4, v0, v2

    invoke-direct {p0, v3, v4}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J

    move-result-wide v3

    .line 386
    .local v3, "bytesSoFar":J
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-wide v5, v5, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_23

    .line 387
    const/4 v1, 0x1

    return v1

    .line 384
    .end local v3    # "bytesSoFar":J
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 390
    .end local v2    # "i":I
    :cond_26
    return v1
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 8
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .line 398
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mUidSnapshot:Landroid/net/NetworkStats;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveUidIfaces:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mVpnArray:[Lcom/android/internal/net/VpnInfo;

    iget-wide v4, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 400
    return-void
.end method
