.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextBackoffMs:J

.field private final mRebindBackoffIncrease:D

.field private final mRebindBackoffMs:J

.field private final mRebindMaxBackoffMs:J

.field private mRebindScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReconnectTime:J

.field private mService:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldBeBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJ)V
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "rebindBackoffSeconds"    # J
    .param p8, "rebindBackoffIncrease"    # D
    .param p10, "rebindMaxBackoffSeconds"    # J

    .line 155
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 151
    new-instance v0, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 158
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 159
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 160
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 162
    const-wide/16 v0, 0x3e8

    mul-long v2, p6, v0

    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 163
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 164
    mul-long/2addr v0, p10

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 166
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PersistentConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/PersistentConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/PersistentConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/PersistentConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 63
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method private cleanUpConnectionLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 266
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 151
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method private final unbindLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 283
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 285
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_8

    .line 286
    return-void

    .line 288
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 290
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 292
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    .line 293
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .registers 3

    .line 216
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final bindForBackoff()V
    .registers 3

    .line 254
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_9

    .line 257
    monitor-exit v0

    return-void

    .line 260
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 261
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final bindInnerLocked(Z)V
    .registers 10
    .param p1, "resetBackoff"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 225
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 227
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_8

    .line 228
    return-void

    .line 230
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 232
    if-eqz p1, :cond_11

    .line 234
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 237
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    .local v0, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v5, 0x4000001

    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 245
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 243
    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    .line 247
    .local v1, "success":Z
    if-nez v1, :cond_5b

    .line 248
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5b
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 323
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_16

    const-string v1, "  [bound]"

    goto :goto_18

    :cond_16
    const-string v1, "  [not bound]"

    :goto_18
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_22

    const-string v1, "  [connected]"

    goto :goto_24

    :cond_22
    const-string v1, "  [not connected]"

    :goto_24
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_3a

    .line 329
    const-string v1, "  reconnect in "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 332
    :cond_3a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 334
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v1, "  Next backoff(sec): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 337
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 170
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNextBackoffMsForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 357
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method getReconnectTimeForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 362
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 209
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 367
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method injectPostAtTime(Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 347
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 348
    return-void
.end method

.method injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 342
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 352
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .registers 3

    .line 180
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return v1

    .line 182
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isConnected()Z
    .registers 3

    .line 198
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return v1

    .line 200
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isRebindScheduled()Z
    .registers 3

    .line 189
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    monitor-exit v0

    return v1

    .line 191
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method scheduleRebindLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 303
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 305
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_46

    .line 306
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 310
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 312
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 317
    :cond_46
    return-void
.end method

.method shouldBeBoundForTest()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return v0
.end method

.method public final unbind()V
    .registers 3

    .line 274
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 277
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method unscheduleRebindLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 297
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 299
    return-void
.end method
