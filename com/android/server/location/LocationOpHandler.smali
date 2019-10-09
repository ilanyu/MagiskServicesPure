.class public Lcom/android/server/location/LocationOpHandler;
.super Landroid/os/Handler;
.source "LocationOpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    }
.end annotation


# static fields
.field private static final MSG_DELAYED_LOCATION_OP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationOpHanlder"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastLocationOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/LocationOpHandler$LocationOpRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 28
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    .line 29
    iput-object p1, p0, Lcom/android/server/location/LocationOpHandler;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 31
    return-void
.end method

.method private postWifiScanRequest(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 45
    iget-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startScan(Landroid/os/WorkSource;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_10

    .line 37
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 38
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationOpHandler;->postWifiScanRequest(I)V

    .line 42
    :cond_10
    :goto_10
    return-void
.end method

.method public isFrequenctlyOp(IIJI)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "op"    # I
    .param p3, "optime"    # J
    .param p5, "minInterval"    # I

    .line 50
    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    .line 51
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_8
    const/4 v1, 0x0

    .line 55
    .local v1, "isFrequenctlyOp":Z
    iget-object v2, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_c
    iget-object v3, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    .line 58
    .local v3, "lastOp":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    if-eqz v3, :cond_29

    if-ne p2, v0, :cond_29

    .line 59
    iget-wide v4, v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    cmp-long v0, p3, v4

    if-lez v0, :cond_29

    iget-wide v4, v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    int-to-long v6, p5

    add-long/2addr v4, v6

    cmp-long v0, p3, v4

    if-gez v0, :cond_29

    .line 60
    const/4 v0, 0x1

    .line 63
    .end local v1    # "isFrequenctlyOp":Z
    .end local v3    # "lastOp":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    .local v0, "isFrequenctlyOp":Z
    move v1, v0

    .end local v0    # "isFrequenctlyOp":Z
    .restart local v1    # "isFrequenctlyOp":Z
    :cond_29
    monitor-exit v2

    .line 64
    return v1

    .line 63
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public setFollowupAction(IIJI)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "op"    # I
    .param p3, "optime"    # J
    .param p5, "minInterval"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    const/4 v1, 0x2

    if-ne p2, v1, :cond_28

    .line 70
    int-to-long v1, p5

    .line 71
    .local v1, "delay":J
    :try_start_7
    iget-object v3, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    .line 72
    .local v3, "lastOp":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    if-eqz v3, :cond_1d

    iget-wide v4, v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    cmp-long v4, p3, v4

    if-lez v4, :cond_1d

    .line 73
    iget-wide v4, v3, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    sub-long v4, p3, v4

    sub-long/2addr v1, v4

    .line 75
    :cond_1d
    const/4 v4, 0x1

    invoke-static {p0, v4, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 76
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/location/LocationOpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v1    # "delay":J
    .end local v3    # "lastOp":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_28

    .line 78
    :catchall_26
    move-exception v1

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw v1
.end method

.method public updateLastLocationOp(IIJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "op"    # I
    .param p3, "optime"    # J

    .line 83
    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_7

    .line 84
    return-void

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_a
    new-instance v8, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;-><init>(Lcom/android/server/location/LocationOpHandler;IIJ)V

    move-object v2, v8

    .line 88
    .local v2, "opRecord":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    iget-object v3, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    if-ne p2, v0, :cond_20

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationOpHandler;->removeMessages(I)V

    .line 92
    .end local v2    # "opRecord":Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    :cond_20
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v0
.end method
