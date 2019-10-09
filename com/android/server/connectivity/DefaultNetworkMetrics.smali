.class public Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "DefaultNetworkMetrics.java"


# static fields
.field private static final ROLLING_LOG_SIZE:I = 0x40


# instance fields
.field public final creationTimeMs:J

.field private mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mEvents:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsLog:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentlyValid:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTransports:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastValidationTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/DefaultNetworkEvent;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 64
    iget-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 65
    return-void
.end method

.method private static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p0, "ev"    # Landroid/net/metrics/DefaultNetworkEvent;
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 163
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 164
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    iget v1, v1, Landroid/net/Network;->netId:I

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 165
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v1, v1

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    or-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 166
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v4

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    .line 167
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_41

    move v3, v4

    nop

    :cond_41
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    .line 168
    return-void
.end method

.method private logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "timeMs"    # J
    .param p3, "oldNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_7

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 126
    .local v0, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 127
    iget v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    .line 129
    if-eqz p3, :cond_1b

    .line 131
    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 132
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    .line 138
    :cond_1b
    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-eqz v1, :cond_23

    .line 139
    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    iput v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    .line 141
    :cond_23
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method private newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "timeMs"    # J
    .param p3, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 146
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    .line 147
    .local v0, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    iput-wide p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 149
    if-eqz p3, :cond_1c

    .line 150
    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 151
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    .line 152
    iget-boolean v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_1f

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 154
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    goto :goto_1f

    .line 157
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 159
    :cond_1f
    :goto_1f
    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 160
    return-void
.end method

.method private static printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    .registers 10
    .param p0, "localTimeMs"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "ev"    # Landroid/net/metrics/DefaultNetworkEvent;

    .line 171
    iget-wide v0, p3, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    sub-long v0, p0, v0

    .line 172
    .local v0, "localCreationTimeMs":J
    const-string v2, "%tT.%tL: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private updateValidationTime(J)V
    .registers 8
    .param p1, "timeMs"    # J

    .line 112
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 113
    return-void
.end method


# virtual methods
.method public declared-synchronized flushEvents(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/DefaultNetworkEvent;

    .line 92
    .local v1, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v1    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    goto :goto_7

    .line 94
    :cond_1b
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 95
    monitor-exit p0

    return-void

    .line 90
    .end local p1    # "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_22
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    throw p1
.end method

.method public declared-synchronized listEvents(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 68
    :try_start_1
    const-string v0, "default network events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "localTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 71
    .local v2, "timeMs":J
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_22

    aget-object v7, v4, v6

    .line 72
    .local v7, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v0, v1, p1, v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V

    .line 71
    .end local v7    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 74
    :cond_22
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v4, v2, v3}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 77
    iget-boolean v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v4, :cond_30

    .line 78
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 79
    iput-wide v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 81
    :cond_30
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {v0, v1, p1, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 82
    monitor-exit p0

    return-void

    .line 67
    .end local v0    # "localTimeMs":J
    .end local v2    # "timeMs":J
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_37
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    throw p1
.end method

.method public declared-synchronized listEventsAsProto(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 86
    .local v3, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 85
    .end local v3    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 88
    :cond_19
    monitor-exit p0

    return-void

    .line 84
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    throw p1
.end method

.method public declared-synchronized logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "timeMs"    # J
    .param p3, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "oldNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-enter p0

    .line 117
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 119
    monitor-exit p0

    return-void

    .line 116
    .end local p1    # "timeMs":J
    .end local p3    # "newNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "oldNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_9
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    throw p1
.end method

.method public declared-synchronized logDefaultNetworkValidity(JZ)V
    .registers 5
    .param p1, "timeMs"    # J
    .param p3, "isValid"    # Z

    monitor-enter p0

    .line 99
    if-nez p3, :cond_10

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_10

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    goto :goto_10

    .line 98
    .end local p1    # "timeMs":J
    .end local p3    # "isValid":Z
    :catchall_e
    move-exception p1

    goto :goto_1c

    .line 105
    .restart local p1    # "timeMs":J
    .restart local p3    # "isValid":Z
    :cond_10
    :goto_10
    if-eqz p3, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-nez v0, :cond_1e

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 107
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_e

    goto :goto_1e

    .line 98
    .end local p1    # "timeMs":J
    .end local p3    # "isValid":Z
    :goto_1c
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    throw p1

    .line 109
    .restart local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .restart local p1    # "timeMs":J
    .restart local p3    # "isValid":Z
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void
.end method
