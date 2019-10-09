.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x30

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0x493e0L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastSnapshot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 5
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 99
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 124
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/net/INetdEventCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 162
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 163
    return-void
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/net/metrics/WakeupEvent;

    .line 297
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 298
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    .line 300
    .local v1, "stats":Landroid/net/metrics/WakeupStats;
    if-nez v1, :cond_1c

    .line 301
    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 302
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 305
    return-void
.end method

.method private collectPendingMetricsSnapshot(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 188
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 189
    return-void

    .line 191
    :cond_10
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 192
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 193
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 194
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 195
    return-void

    .line 197
    :cond_27
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "netId"    # I

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 172
    .local v0, "metrics":Landroid/net/metrics/NetworkMetrics;
    if-nez v0, :cond_1e

    .line 174
    new-instance v1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v1, p3, v2, v3, v4}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v1

    .line 175
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_1e
    return-object v0
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 3

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 182
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getTransports(I)J
    .registers 5
    .param p1, "netId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 367
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_10

    .line 368
    const-wide/16 v1, 0x0

    return-wide v1

    .line 370
    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static isValidCallerType(I)Z
    .registers 4
    .param p0, "callerType"    # I

    .line 147
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 148
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_f

    .line 149
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 375
    return-void
.end method

.method private static projectSnapshotTime(J)J
    .registers 6
    .param p0, "timeMs"    # J

    .line 166
    const-wide/32 v0, 0x493e0

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 6
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

    monitor-enter p0

    .line 129
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 130
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 131
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 133
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_27

    .line 134
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 128
    .end local p1    # "callerType":I
    .end local p2    # "callback":Landroid/net/INetdEventCallback;
    :catchall_27
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 308
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 309
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 310
    .local v2, "stats":Landroid/net/metrics/ConnectStats;
    iget v3, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v3, :cond_1a

    .line 311
    goto :goto_21

    .line 313
    :cond_1a
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "stats":Landroid/net/metrics/ConnectStats;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 315
    .end local v1    # "i":I
    :cond_24
    move v1, v0

    .restart local v1    # "i":I
    :goto_25
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 316
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 317
    .local v2, "ev":Landroid/net/metrics/DnsEvent;
    iget v3, v2, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v3, :cond_3c

    .line 318
    goto :goto_43

    .line 320
    :cond_3c
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v2    # "ev":Landroid/net/metrics/DnsEvent;
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 322
    .end local v1    # "i":I
    :cond_46
    nop

    .local v0, "i":I
    :goto_47
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 323
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 325
    .end local v0    # "i":I
    :cond_61
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_6d

    .line 327
    monitor-exit p0

    return-void

    .line 307
    .end local p1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_6d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 330
    :try_start_1
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    move v1, v0

    .line 331
    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 332
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 334
    .end local v1    # "i":I
    :cond_20
    move v1, v0

    .line 334
    .restart local v1    # "i":I
    :goto_21
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 335
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 337
    .end local v1    # "i":I
    :cond_39
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v1, "network statistics:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_4a
    if-ge v3, v2, :cond_54

    aget-object v4, v1, v3

    .line 340
    .local v4, "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 339
    .end local v4    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 342
    :cond_54
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, "packet wakeup events:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    move v1, v0

    .line 344
    .restart local v1    # "i":I
    :goto_60
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 345
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 347
    .end local v1    # "i":I
    :cond_74
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/WakeupEvent;

    array-length v2, v1

    :goto_7d
    if-ge v0, v2, :cond_87

    aget-object v3, v1, v0

    .line 348
    .local v3, "wakeup":Landroid/net/metrics/WakeupEvent;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_89

    .line 347
    .end local v3    # "wakeup":Landroid/net/metrics/WakeupEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 350
    :cond_87
    monitor-exit p0

    return-void

    .line 329
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_89
    move-exception p1

    monitor-exit p0

    .line 329
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized listAsProtos(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 353
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 354
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 356
    .end local v1    # "i":I
    :cond_1f
    move v1, v0

    .restart local v1    # "i":I
    :goto_20
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 357
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 359
    .end local v1    # "i":I
    :cond_3c
    nop

    .local v0, "i":I
    :goto_3d
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 360
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_59

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 362
    .end local v0    # "i":I
    :cond_57
    monitor-exit p0

    return-void

    .line 352
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_59
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 24
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 234
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    .local v2, "timestamp":J
    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v4, v10, v11, v12}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 237
    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v14, v13

    const/4 v4, 0x0

    move v15, v4

    :goto_1b
    if-ge v15, v14, :cond_31

    aget-object v4, v13, v15

    move-object/from16 v16, v4

    .line 238
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_2e

    .line 239
    move-object/from16 v4, v16

    move-object v5, v12

    move/from16 v6, p5

    move-wide v7, v2

    move/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_33

    .line 237
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    :cond_2e
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 242
    :cond_31
    monitor-exit p0

    return-void

    .line 233
    .end local v2    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "error":I
    .end local p3    # "latencyMs":I
    .end local p4    # "ipAddr":Ljava/lang/String;
    .end local p5    # "port":I
    .end local p6    # "uid":I
    :catchall_33
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw v0
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 27
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 206
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    .local v2, "timestamp":J
    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual {v4, v11, v12, v13}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 209
    iget-object v14, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v15, v14

    const/4 v4, 0x0

    move v10, v4

    :goto_1b
    if-ge v10, v15, :cond_39

    aget-object v4, v14, v10

    move-object/from16 v16, v4

    .line 210
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_34

    .line 211
    move-object/from16 v4, v16

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide v8, v2

    move/from16 v17, v10

    move/from16 v10, p8

    invoke-interface/range {v4 .. v10}, Landroid/net/INetdEventCallback;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3b

    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    goto :goto_36

    .line 209
    :cond_34
    move/from16 v17, v10

    :goto_36
    add-int/lit8 v10, v17, 0x1

    goto :goto_1b

    .line 214
    :cond_39
    monitor-exit p0

    return-void

    .line 205
    .end local v2    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "eventType":I
    .end local p3    # "returnCode":I
    .end local p4    # "latencyMs":I
    .end local p5    # "hostname":Ljava/lang/String;
    .end local p6    # "ipAddresses":[Ljava/lang/String;
    .end local p7    # "ipAddressesCount":I
    .end local p8    # "uid":I
    :catchall_3b
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw v0
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 223
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_e

    .line 224
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 222
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 227
    :cond_11
    monitor-exit p0

    return-void

    .line 221
    .end local p1    # "netId":I
    .end local p2    # "ipAddress":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .end local p4    # "validated":Z
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 15
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttsUs"    # [I
    .param p5, "sentAckDiffsMs"    # [I

    monitor-enter p0

    .line 276
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_30

    .line 284
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, "timestamp":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_2e

    .line 286
    aget v3, p1, v2

    .line 287
    .local v3, "netId":I
    aget v4, p2, v2

    .line 288
    .local v4, "sent":I
    aget v5, p3, v2

    .line 289
    .local v5, "lost":I
    aget v6, p4, v2

    .line 290
    .local v6, "rttUs":I
    aget v7, p5, v2

    .line 291
    .local v7, "sentAckDiffMs":I
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v8

    .line 292
    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_39

    .line 285
    .end local v3    # "netId":I
    .end local v4    # "sent":I
    .end local v5    # "lost":I
    .end local v6    # "rttUs":I
    .end local v7    # "sentAckDiffMs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 294
    .end local v2    # "i":I
    :cond_2e
    monitor-exit p0

    return-void

    .line 280
    .end local v0    # "timestamp":J
    :cond_30
    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 281
    monitor-exit p0

    return-void

    .line 275
    .end local p1    # "networkIds":[I
    .end local p2    # "sentPackets":[I
    .end local p3    # "lostPackets":[I
    .end local p4    # "rttsUs":[I
    .end local p5    # "sentAckDiffsMs":[I
    :catchall_39
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J

    move-object/from16 v1, p0

    monitor-enter p0

    .line 247
    :try_start_3
    const-string v0, "iface:"

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "iface":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_19

    .line 250
    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    .local v4, "timestampMs":J
    goto :goto_1d

    .line 252
    .end local v4    # "timestampMs":J
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .restart local v4    # "timestampMs":J
    :goto_1d
    move-wide v12, v4

    .line 255
    .end local v4    # "timestampMs":J
    .local v12, "timestampMs":J
    new-instance v2, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v2}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 256
    .local v2, "event":Landroid/net/metrics/WakeupEvent;
    iput-object v0, v2, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 257
    iput-wide v12, v2, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 258
    move/from16 v11, p2

    iput v11, v2, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 259
    move/from16 v10, p3

    iput v10, v2, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 260
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 261
    move-object/from16 v9, p6

    iput-object v9, v2, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 262
    move-object/from16 v7, p7

    iput-object v7, v2, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 263
    move/from16 v6, p4

    iput v6, v2, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 264
    move/from16 v5, p8

    iput v5, v2, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 265
    move/from16 v4, p9

    iput v4, v2, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 266
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 268
    iget-object v8, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v8}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "dstMac":Ljava/lang/String;
    const/16 v14, 0x2c

    move v4, v14

    move v5, v11

    move-object v6, v0

    move v7, v10

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p4

    move-wide v14, v12

    move/from16 v12, p8

    .end local v12    # "timestampMs":J
    .local v14, "timestampMs":J
    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_68

    .line 271
    monitor-exit p0

    return-void

    .line 246
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "event":Landroid/net/metrics/WakeupEvent;
    .end local v8    # "dstMac":Ljava/lang/String;
    .end local v14    # "timestampMs":J
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "ethertype":I
    .end local p4    # "ipNextHeader":I
    .end local p5    # "dstHw":[B
    .end local p6    # "srcIp":Ljava/lang/String;
    .end local p7    # "dstIp":Ljava/lang/String;
    .end local p8    # "srcPort":I
    .end local p9    # "dstPort":I
    .end local p10    # "timestampNs":J
    :catchall_68
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5
    .param p1, "callerType"    # I

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 139
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    .line 140
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 142
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    .line 143
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 137
    .end local p1    # "callerType":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    throw p1
.end method
