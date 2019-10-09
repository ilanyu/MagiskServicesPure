.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 101
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 102
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 103
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 107
    const-wide v1, 0x7528ad000L

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 110
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 111
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 113
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .registers 10
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .line 120
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 121
    const-string/jumbo v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 122
    const-string/jumbo v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 123
    const-string/jumbo v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 124
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 126
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 127
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 129
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 130
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 132
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 133
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 14
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 190
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 192
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    move-object v4, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 193
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_2e

    .line 197
    :catch_15
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "NetworkStatsRecorder"

    const-string/jumbo v3, "problem completely reading network stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 199
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_2f

    .line 194
    :catch_22
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "NetworkStatsRecorder"

    const-string/jumbo v3, "problem completely reading network stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2e
    nop

    .line 201
    :goto_2f
    return-object v0
.end method

.method private recoverFromWtf()V
    .registers 6

    .line 512
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 514
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_10
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 519
    :goto_a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 520
    goto :goto_15

    .line 519
    :catchall_e
    move-exception v1

    goto :goto_28

    .line 515
    :catch_10
    move-exception v1

    .line 517
    .local v1, "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    .line 517
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 521
    :goto_15
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    const-string/jumbo v2, "netstats_dump"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 524
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 525
    return-void

    .line 519
    .restart local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 503
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 504
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .line 480
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_12

    .line 481
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 483
    :cond_12
    if-eqz p2, :cond_21

    .line 484
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_2b

    .line 487
    :cond_21
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 490
    :goto_2b
    return-void
.end method

.method public forcePersistLocked(J)V
    .registers 6
    .param p1, "currentTimeMillis"    # J

    .line 310
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 314
    :try_start_10
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 315
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 316
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_21} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_48

    .line 324
    :catch_22
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 326
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_49

    .line 320
    :catch_2f
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 322
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_48

    .line 317
    :catch_3c
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    :goto_48
    nop

    .line 330
    :cond_49
    :goto_49
    return-void
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 172
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_16
    if-nez v0, :cond_2a

    .line 173
    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    .line 176
    :cond_2a
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 182
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_16
    if-nez v0, :cond_1c

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 185
    :cond_1c
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .registers 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 155
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 155
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 445
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 446
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    .line 448
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 449
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 451
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    .line 454
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 455
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 457
    :cond_34
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 465
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 466
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    .line 468
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 469
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 471
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 474
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 475
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 477
    :cond_36
    return-void
.end method

.method public maybePersistLocked(J)V
    .registers 7
    .param p1, "currentTimeMillis"    # J

    .line 297
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    .line 299
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_18

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_1d

    .line 302
    :cond_18
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 304
    :goto_1d
    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V
    .registers 31
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p4, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 217
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 220
    .local v3, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_d

    return-void

    .line 223
    :cond_d
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v4, :cond_14

    .line 224
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 225
    return-void

    .line 228
    :cond_14
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    .line 230
    .local v4, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_22
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-static {v1, v5, v6, v7}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v15

    .line 232
    .local v15, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v16, p4

    .line 233
    .local v16, "end":J
    invoke-virtual {v15}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v5

    sub-long v18, v16, v5

    .line 235
    .local v18, "start":J
    const/16 v20, 0x0

    if-eqz v2, :cond_4b

    .line 236
    array-length v5, v2

    move/from16 v6, v20

    :goto_3b
    if-ge v6, v5, :cond_4b

    aget-object v7, v2, v6

    .line 237
    .local v7, "info":Lcom/android/internal/net/VpnInfo;
    iget v8, v7, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v9, v7, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    invoke-virtual {v15, v8, v9, v10}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    .line 236
    .end local v7    # "info":Lcom/android/internal/net/VpnInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 241
    :cond_4b
    const/4 v5, 0x0

    .line 242
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    move-object v6, v5

    move/from16 v5, v20

    .local v5, "i":I
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    :goto_4f
    move v14, v5

    .end local v5    # "i":I
    .local v14, "i":I
    invoke-virtual {v15}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v14, v5, :cond_122

    .line 243
    invoke-virtual {v15, v14, v6}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 247
    .end local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 248
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    if-eqz v5, :cond_6b

    .line 249
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-interface {v5, v15, v14, v6}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 251
    :cond_6b
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 252
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 253
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 254
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 255
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 258
    :cond_95
    iget-object v5, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v13, p2

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/server/net/NetworkIdentitySet;

    .line 259
    .local v21, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v21, :cond_af

    .line 260
    iget-object v5, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    nop

    .line 242
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "i":I
    .end local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .local v22, "entry":Landroid/net/NetworkStats$Entry;
    .local v23, "i":I
    :goto_a9
    move-object/from16 v22, v12

    move/from16 v23, v14

    goto/16 :goto_11c

    .line 265
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v23    # "i":I
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "i":I
    .restart local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    :cond_af
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b6

    .end local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    goto :goto_a9

    .line 268
    .restart local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    :cond_b6
    iget v5, v12, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v5, :cond_bc

    const/4 v5, 0x1

    goto :goto_be

    :cond_bc
    move/from16 v5, v20

    :goto_be
    iget-boolean v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v5, v6, :cond_118

    .line 269
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_de

    .line 270
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    iget v7, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v12, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-object/from16 v22, v12

    move-wide/from16 v12, v16

    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    move/from16 v23, v14

    move-object/from16 v14, v22

    .end local v14    # "i":I
    .restart local v23    # "i":I
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_e2

    .line 274
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v23    # "i":I
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "i":I
    :cond_de
    move-object/from16 v22, v12

    move/from16 v23, v14

    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "i":I
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v23    # "i":I
    :goto_e2
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_fc

    .line 275
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    move-object/from16 v14, v22

    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    move-object/from16 v24, v14

    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .local v24, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_fe

    .line 279
    .end local v24    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_fc
    move-object/from16 v24, v22

    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v24    # "entry":Landroid/net/NetworkStats$Entry;
    :goto_fe
    if-eqz v4, :cond_115

    .line 280
    move-object/from16 v14, v24

    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    .end local v24    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v5, v4

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    move-object/from16 v22, v14

    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .end local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    goto :goto_11c

    .line 242
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v24    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_115
    move-object/from16 v22, v24

    .end local v24    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_11c

    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v23    # "i":I
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .local v14, "i":I
    :cond_118
    move-object/from16 v22, v12

    move/from16 v23, v14

    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "i":I
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v23    # "i":I
    :goto_11c
    add-int/lit8 v5, v23, 0x1

    .end local v23    # "i":I
    .restart local v5    # "i":I
    move-object/from16 v6, v22

    goto/16 :goto_4f

    .line 285
    .end local v5    # "i":I
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v6    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_122
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 290
    return-void
.end method

.method public removeUidsLocked([I)V
    .registers 6
    .param p1, "uids"    # [I

    .line 337
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v0, :cond_51

    .line 340
    :try_start_4
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v1, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_50

    .line 344
    :catch_11
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem removing UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 346
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_51

    .line 341
    :catch_31
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem removing UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    :goto_50
    nop

    .line 351
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_5a

    .line 352
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 354
    :cond_5a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_63

    .line 355
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 359
    :cond_63
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v0, :cond_6f

    .line 360
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 363
    :cond_6f
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    .line 364
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_7d
    if-eqz v0, :cond_82

    .line 365
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 367
    :cond_82
    return-void
.end method

.method public resetLocked()V
    .registers 2

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 143
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_c

    .line 144
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_15

    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 149
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e

    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 152
    :cond_1e
    return-void
.end method

.method public setPersistThreshold(J)V
    .registers 9
    .param p1, "thresholdBytes"    # J

    .line 137
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 139
    return-void
.end method

.method public writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 493
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 494
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v2, :cond_16

    .line 495
    const-wide v2, 0x10300000001L

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 497
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 498
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 499
    return-void
.end method
