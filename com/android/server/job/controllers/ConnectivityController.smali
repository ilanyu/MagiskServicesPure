.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Connectivity"


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mTrackedJobs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Connectivity"

    const/4 v1, 0x3

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    .line 304
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 322
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 74
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 75
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 79
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 80
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/controllers/ConnectivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(ILandroid/net/Network;)V

    return-void
.end method

.method private static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 7
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 147
    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 148
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v2, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1

    .line 150
    :cond_16
    return v1
.end method

.method private static isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 16
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkBytes()J

    move-result-wide v0

    .line 115
    .local v0, "estimatedBytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 117
    return v3

    .line 122
    :cond_c
    nop

    .line 123
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    .line 124
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v4

    .line 122
    invoke-static {v2, v4}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v2

    int-to-long v4, v2

    .line 125
    .local v4, "slowest":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_21

    .line 127
    return v3

    .line 130
    :cond_21
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x400

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    div-long/2addr v6, v8

    .line 132
    .local v6, "estimatedMillis":J
    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-lez v2, :cond_60

    .line 134
    const-string v2, "JobScheduler.Connectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Estimated "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes over "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " kbps network would take "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms; that\'s insane!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x1

    return v2

    .line 138
    :cond_60
    return v3
.end method

.method private static isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 8
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 166
    return v1

    .line 170
    :cond_c
    new-instance v0, Landroid/net/NetworkCapabilities;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v2, 0xb

    .line 172
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 173
    .local v0, "relaxed":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 175
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v2

    iget v3, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_33

    const/4 v1, 0x1

    nop

    :cond_33
    return v1

    .line 177
    :cond_34
    return v1
.end method

.method static isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 7
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 185
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-nez p2, :cond_6

    goto :goto_24

    .line 188
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 191
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    .line 194
    :cond_14
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    return v2

    .line 197
    :cond_1c
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_23

    return v2

    .line 199
    :cond_23
    return v0

    .line 185
    :cond_24
    :goto_24
    return v0
.end method

.method private static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 5
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 158
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 157
    return v0
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 203
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v0

    .line 204
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 205
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    return v2
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 12
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 212
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 213
    .local v0, "ignoreBlocked":Z
    :goto_c
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 214
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 213
    invoke-virtual {v3, p2, v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 216
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v1

    goto :goto_21

    :cond_20
    move v4, v2

    .line 217
    .local v4, "connected":Z
    :goto_21
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {p1, p2, p3, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 219
    .local v5, "satisfied":Z
    if-eqz v4, :cond_2c

    if-eqz v5, :cond_2c

    goto :goto_2d

    .line 220
    :cond_2c
    move v1, v2

    :goto_2d
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    move-result v1

    .line 225
    .local v1, "changed":Z
    iput-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 227
    sget-boolean v2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v2, :cond_6d

    .line 228
    const-string v2, "JobScheduler.Connectivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connectivity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_48

    const-string v7, "CHANGED"

    goto :goto_4b

    :cond_48
    const-string/jumbo v7, "unchanged"

    :goto_4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " satisfied="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_6d
    return v1
.end method

.method private updateTrackedJobs(ILandroid/net/Network;)V
    .registers 21
    .param p1, "filterUid"    # I
    .param p2, "filterNetwork"    # Landroid/net/Network;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 244
    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 248
    .local v0, "uidToNetwork":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/Network;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 250
    .local v5, "networkToCapabilities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkCapabilities;>;"
    const/4 v6, 0x0

    .line 251
    .local v6, "changed":Z
    iget-object v7, v1, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_1c
    if-ltz v7, :cond_81

    .line 252
    iget-object v9, v1, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 253
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 255
    .local v10, "uid":I
    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v2, v12, :cond_33

    if-ne v2, v10, :cond_31

    goto :goto_33

    :cond_31
    move v13, v11

    goto :goto_34

    :cond_33
    :goto_33
    move v13, v8

    .line 256
    .local v13, "uidMatch":Z
    :goto_34
    if-eqz v13, :cond_7d

    .line 257
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Network;

    .line 258
    .local v14, "network":Landroid/net/Network;
    if-nez v14, :cond_48

    .line 259
    iget-object v15, v1, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v10}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v15

    move-object v14, v15

    .line 260
    invoke-virtual {v0, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    :cond_48
    if-eqz v3, :cond_52

    .line 267
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_51

    goto :goto_52

    :cond_51
    goto :goto_53

    :cond_52
    :goto_52
    move v11, v8

    .line 268
    .local v11, "networkMatch":Z
    :goto_53
    iget-object v15, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v8

    .line 269
    .local v15, "forceUpdate":Z
    if-nez v11, :cond_5e

    if-eqz v15, :cond_7d

    .line 270
    :cond_5e
    if-eqz v14, :cond_63

    iget v12, v14, Landroid/net/Network;->netId:I

    nop

    .line 271
    .local v12, "netId":I
    :cond_63
    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/NetworkCapabilities;

    .line 272
    .local v16, "capabilities":Landroid/net/NetworkCapabilities;
    if-nez v16, :cond_75

    .line 273
    iget-object v8, v1, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v14}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 274
    .end local v16    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v8, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-virtual {v5, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_77

    .line 276
    .end local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v16    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_75
    move-object/from16 v8, v16

    .end local v16    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    :goto_77
    invoke-direct {v1, v9, v14, v8}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v16

    or-int v6, v6, v16

    .line 251
    .end local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "uid":I
    .end local v11    # "networkMatch":Z
    .end local v12    # "netId":I
    .end local v13    # "uidMatch":Z
    .end local v14    # "network":Landroid/net/Network;
    .end local v15    # "forceUpdate":Z
    :cond_7d
    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    goto :goto_1c

    .line 280
    .end local v7    # "i":I
    :cond_81
    if-eqz v6, :cond_88

    .line 281
    iget-object v7, v1, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v7}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 283
    .end local v0    # "uidToNetwork":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/Network;>;"
    .end local v5    # "networkToCapabilities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkCapabilities;>;"
    .end local v6    # "changed":Z
    :cond_88
    monitor-exit v4

    .line 284
    return-void

    .line 283
    :catchall_8a
    move-exception v0

    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_9 .. :try_end_8c} :catchall_8a

    throw v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 354
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 355
    .local v2, "token":J
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 357
    .local v6, "mToken":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_12
    iget-object v9, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_5b

    .line 358
    iget-object v9, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 359
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    .line 360
    goto :goto_58

    .line 362
    :cond_2b
    const-wide v11, 0x20b00000002L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 363
    .local v11, "jsToken":J
    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 364
    const-wide v13, 0x10500000002L

    .line 365
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    .line 364
    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 366
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v13

    .line 367
    .local v13, "rn":Landroid/net/NetworkRequest;
    if-eqz v13, :cond_55

    .line 368
    invoke-virtual {v13, v1, v4, v5}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 371
    :cond_55
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 357
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "jsToken":J
    .end local v13    # "rn":Landroid/net/NetworkRequest;
    :goto_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 374
    .end local v8    # "i":I
    :cond_5b
    move-object/from16 v10, p4

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 376
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 337
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 338
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 339
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 341
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 343
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 336
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_41
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 90
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 93
    :cond_12
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_c
    return-void
.end method

.method public onNetworkActive()V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_42

    .line 293
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 294
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 295
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_3a

    .line 296
    const-string v3, "JobScheduler.Connectivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " due to network activity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3a
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3, v2}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 292
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 301
    .end local v1    # "i":I
    :cond_42
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method
