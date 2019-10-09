.class public final Lcom/android/server/usage/IntervalStats$EventTracker;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTracker"
.end annotation


# instance fields
.field public count:I

.field public curStartTime:J

.field public duration:J

.field public lastEventTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addToEventStats(Ljava/util/List;IJJ)V
    .registers 11
    .param p2, "event"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;IJJ)V"
        }
    .end annotation

    .line 73
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 74
    :cond_c
    new-instance v0, Landroid/app/usage/EventStats;

    invoke-direct {v0}, Landroid/app/usage/EventStats;-><init>()V

    .line 75
    .local v0, "ev":Landroid/app/usage/EventStats;
    iput p2, v0, Landroid/app/usage/EventStats;->mEventType:I

    .line 76
    iget v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iput v1, v0, Landroid/app/usage/EventStats;->mCount:I

    .line 77
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mTotalTime:J

    .line 78
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mLastEventTime:J

    .line 79
    iput-wide p3, v0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    .line 80
    iput-wide p5, v0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v0    # "ev":Landroid/app/usage/EventStats;
    :cond_26
    return-void
.end method

.method public commitTime(J)V
    .registers 9
    .param p1, "timeStamp"    # J

    .line 56
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 57
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    sub-long v4, p1, v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 58
    iput-wide v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 60
    :cond_13
    return-void
.end method

.method public update(J)V
    .registers 7
    .param p1, "timeStamp"    # J

    .line 63
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 65
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 67
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 68
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 69
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    .line 70
    return-void
.end method
