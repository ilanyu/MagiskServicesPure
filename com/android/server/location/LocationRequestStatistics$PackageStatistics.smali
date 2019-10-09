.class public Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStatistics"
.end annotation


# instance fields
.field private mFastestIntervalMs:J

.field private mForegroundDurationMs:J

.field private final mInitialElapsedTimeMs:J

.field private mLastActivitationElapsedTimeMs:J

.field private mLastForegroundElapsedTimeMs:J

.field private mNumActiveRequests:I

.field private mSlowestIntervalMs:J

.field private mTotalDurationMs:J


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 130
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 131
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 132
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 133
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestStatistics$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/location/LocationRequestStatistics$1;

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"    # J

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"    # Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V

    return-void
.end method

.method private startRequesting(J)V
    .registers 5
    .param p1, "intervalMs"    # J

    .line 137
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_a

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    .line 141
    :cond_a
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    .line 142
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 145
    :cond_12
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a

    .line 146
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 149
    :cond_1a
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 150
    return-void
.end method

.method private stopRequesting()V
    .registers 5

    .line 162
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-gtz v0, :cond_c

    .line 164
    const-string v0, "LocationStats"

    const-string v1, "Reference counting corrupted in usage statistics."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_c
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 169
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_26

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v0, v2

    .line 172
    .local v0, "lastDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 173
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    .line 175
    .end local v0    # "lastDurationMs":J
    :cond_26
    return-void
.end method

.method private updateForeground(Z)V
    .registers 10
    .param p1, "isForeground"    # Z

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 155
    .local v0, "nowElapsedTimeMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 156
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    iget-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    sub-long v6, v0, v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 158
    :cond_15
    if-eqz p1, :cond_19

    move-wide v4, v0

    nop

    :cond_19
    iput-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 159
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .registers 7

    .line 181
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 182
    .local v0, "currentDurationMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v2, :cond_f

    .line 183
    nop

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 186
    :cond_f
    return-wide v0
.end method

.method public getFastestIntervalMs()J
    .registers 3

    .line 212
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    return-wide v0
.end method

.method public getForegroundDurationMs()J
    .registers 7

    .line 193
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 194
    .local v0, "currentDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 195
    nop

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 198
    :cond_13
    return-wide v0
.end method

.method public getSlowestIntervalMs()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    return-wide v0
.end method

.method public getTimeSinceFirstRequestMs()J
    .registers 5

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 226
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_20

    .line 233
    const-string v1, "Interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 235
    :cond_20
    const-string v1, "Min interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ": Max interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_40
    const-string v1, ": Duration requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getDurationMs()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " total, "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getForegroundDurationMs()J

    move-result-wide v4

    div-long/2addr v4, v2

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " foreground, out of the last "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceFirstRequestMs()J

    move-result-wide v4

    div-long/2addr v4, v2

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " minutes"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 246
    const-string v1, ": Currently active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
