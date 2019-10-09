.class Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BROADCAST_RETRY_INTERVAL_MS:J

.field private static final BUFFER_ENTRIES_CRITICAL_LEVEL:I = 0x2400

.field private static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FORCE_FETCH_THROTTLE_NS:J

.field private static final OVERLAP_NS:J

.field private static final POLLING_INTERVAL_MS:J

.field private static final RATE_LIMIT_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field private mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCriticalLevelLogged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mForceSemaphore:Ljava/util/concurrent/Semaphore;

.field private mId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastEventNanos:J

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastForceNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mForceSemaphore"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAllowedRetrievalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 55
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "id"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 121
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 127
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 129
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 133
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 60
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 61
    iput-wide p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 63
    return-void
.end method

.method private assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 404
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->setId(J)V

    .line 405
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 406
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Reached maximum id value; wrapping around."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    goto :goto_23

    .line 409
    :cond_1c
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 411
    :goto_23
    return-void
.end method

.method private checkCriticalLevel()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 390
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 391
    return-void

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2400

    if-lt v0, v1, :cond_21

    .line 395
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    if-nez v0, :cond_21

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 397
    const v0, 0x3345f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 400
    :cond_21
    return-void
.end method

.method private getNextBatch(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 268
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    goto :goto_23

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 273
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    goto :goto_20

    :cond_17
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 276
    .local v0, "startNanos":J
    :goto_20
    invoke-static {v0, v1, p1}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V

    .line 281
    .end local v0    # "startNanos":J
    :goto_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4f

    .line 282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4c

    .line 285
    sget-object v1, Lcom/android/server/devicepolicy/-$$Lambda$SecurityLogMonitor$y5Q3dMmmJ8bk5nBh8WR2MUroKrI;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$SecurityLogMonitor$y5Q3dMmmJ8bk5nBh8WR2MUroKrI;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 286
    goto :goto_4f

    .line 281
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 291
    .end local v0    # "i":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method static synthetic lambda$getNextBatch$0(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I
    .registers 6
    .param p0, "e1"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .param p1, "e2"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 285
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private mergeBatchLocked(Ljava/util/ArrayList;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "curPos":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 332
    .local v0, "lastPos":I
    .local v2, "curPos":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_69

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 333
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 334
    .local v3, "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v4

    .line 335
    .local v4, "currentNanos":J
    iget-wide v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_33

    .line 337
    goto :goto_69

    .line 339
    :cond_33
    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 340
    .local v6, "lastEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v6}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v7

    .line 341
    .local v7, "lastNanos":J
    cmp-long v9, v7, v4

    if-lez v9, :cond_4e

    .line 344
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 345
    iget-object v9, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 347
    :cond_4e
    cmp-long v9, v7, v4

    if-gez v9, :cond_55

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 352
    :cond_55
    invoke-virtual {v6, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    goto :goto_64

    .line 357
    :cond_5c
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 358
    iget-object v9, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_64
    add-int/lit8 v0, v0, 0x1

    .line 362
    add-int/lit8 v2, v2, 0x1

    .line 364
    .end local v3    # "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v4    # "currentNanos":J
    .end local v6    # "lastEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v7    # "lastNanos":J
    :goto_68
    goto :goto_14

    .line 366
    :cond_69
    :goto_69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 367
    .local v3, "idLogs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_75
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 368
    .local v5, "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 369
    .end local v5    # "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    goto :goto_75

    .line 371
    :cond_85
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->checkCriticalLevel()V

    .line 375
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2800

    if-le v4, v5, :cond_bb

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 378
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit16 v6, v6, -0x1400

    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 377
    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 380
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 381
    const-string v1, "SecurityLogMonitor"

    const-string v4, "Pending logs buffer full. Discarding old logs."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_bb
    return-void
.end method

.method private notifyDeviceOwnerIfNeeded(Z)V
    .registers 8
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "allowRetrievalAndNotifyDO":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 458
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_57

    if-eqz v1, :cond_10

    .line 481
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    return-void

    .line 461
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 462
    .local v1, "logSize":I
    const/16 v2, 0x400

    if-ge v1, v2, :cond_1e

    if-eqz p1, :cond_23

    if-lez v1, :cond_23

    .line 464
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-nez v2, :cond_23

    .line 465
    const/4 v0, 0x1

    .line 469
    :cond_23
    if-lez v1, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_30

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_30
    if-eqz v0, :cond_3e

    .line 475
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J
    :try_end_3e
    .catchall {:try_start_10 .. :try_end_3e} :catchall_57

    .line 481
    .end local v1    # "logSize":I
    :cond_3e
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 482
    nop

    .line 483
    if-eqz v0, :cond_56

    .line 484
    const-string v1, "SecurityLogMonitor"

    const-string/jumbo v2, "notify DO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v2, "android.app.action.SECURITY_LOGS_AVAILABLE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 488
    :cond_56
    return-void

    .line 481
    :catchall_57
    move-exception v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private saveLastEvents(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 301
    return-void

    .line 305
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 309
    .local v0, "pos":I
    :goto_24
    if-ltz v0, :cond_3c

    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3c

    .line 310
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 313
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    return-void
.end method


# virtual methods
.method discardLogs()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 233
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 234
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 235
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Discarded all logs."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public forceLogs()J
    .registers 10

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 497
    .local v0, "nowNanos":J
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v2

    .line 498
    :try_start_7
    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    sget-wide v5, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    .line 499
    .local v3, "toWaitNanos":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1e

    .line 500
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    monitor-exit v2

    return-wide v5

    .line 502
    :cond_1e
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 505
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v7

    if-nez v7, :cond_2d

    .line 506
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 508
    :cond_2d
    monitor-exit v2

    return-wide v5

    .line 509
    .end local v3    # "toWaitNanos":J
    :catchall_2f
    move-exception v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method pause()V
    .registers 3

    .line 190
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Paused."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    return-void
.end method

.method resume()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    if-nez v0, :cond_16

    .line 209
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Attempted to resume, but logging is not paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_35

    .line 215
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    return-void

    .line 212
    :cond_16
    const/4 v0, 0x0

    :try_start_17
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_35

    .line 215
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    nop

    .line 218
    const-string v1, "SecurityLogMonitor"

    const-string v2, "Resumed."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_28
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded(Z)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 223
    goto :goto_34

    .line 221
    :catch_2c
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SecurityLogMonitor"

    const-string v2, "Thread interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_34
    return-void

    .line 215
    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method retrieveLogs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-eqz v0, :cond_27

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 249
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 250
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 251
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2e

    .line 252
    nop

    .line 257
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    return-object v1

    .line 254
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :cond_27
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    return-object v0

    .line 257
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public run()V
    .registers 6

    .line 415
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_52

    .line 420
    :try_start_14
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    sget-wide v2, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 422
    .local v1, "force":Z
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->getNextBatch(Ljava/util/ArrayList;)V

    .line 424
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_26} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_26} :catch_40

    .line 426
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mergeBatchLocked(Ljava/util/ArrayList;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    .line 428
    :try_start_29
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .line 431
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->saveLastEvents(Ljava/util/ArrayList;)V

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded(Z)V

    .end local v1    # "force":Z
    goto :goto_51

    .line 428
    .restart local v1    # "force":Z
    :catchall_39
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_40} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_40} :catch_40

    .line 436
    .end local v1    # "force":Z
    :catch_40
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SecurityLogMonitor"

    const-string v3, "Thread interrupted, exiting."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    goto :goto_52

    .line 434
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_49
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SecurityLogMonitor"

    const-string v3, "Failed to read security log"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    :goto_51
    goto :goto_a

    .line 444
    :cond_52
    :goto_52
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_66

    .line 448
    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 451
    :cond_66
    const-string v1, "SecurityLogMonitor"

    const-string v2, "MonitorThread exit."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method start()V
    .registers 4

    .line 140
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Starting security logging."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x3345b

    invoke-static {v2, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 142
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-nez v1, :cond_3a

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 146
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 147
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 148
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 149
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 150
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 152
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 153
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_41

    .line 156
    :cond_3a
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_41
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method stop()V
    .registers 6

    .line 161
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Stopping security logging."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x3345c

    invoke-static {v2, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 163
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    :try_start_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4a

    .line 166
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_51

    .line 168
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_2b} :catch_2c
    .catchall {:try_start_1e .. :try_end_2b} :catchall_51

    .line 171
    goto :goto_34

    .line 169
    :catch_2c
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2d
    const-string v2, "SecurityLogMonitor"

    const-string v3, "Interrupted while waiting for thread to stop"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 175
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 176
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 177
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_51

    .line 181
    :cond_4a
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
