.class public final Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"


# instance fields
.field private final DEADLINE_TAG:Ljava/lang/String;

.field private final DELAY_TAG:Ljava/lang/String;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mChainedAttributionEnabled:Z

.field private final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextDelayExpiredElapsedMillis:J

.field private final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextJobExpiredElapsedMillis:J

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Time"

    const/4 v1, 0x3

    .line 50
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
    sput-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 53
    const-string v0, "*job.deadline*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "*job.delay*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 327
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 337
    new-instance v0, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 69
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 70
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 71
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 47
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/TimeController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/TimeController;

    .line 47
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/TimeController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/TimeController;

    .line 47
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 145
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 143
    :goto_1e
    return v0
.end method

.method private checkExpiredDeadlinesAndResetAlarm()V
    .registers 12

    .line 160
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    const-wide v1, 0x7fffffffffffffffL

    .line 162
    .local v1, "nextExpiryTime":J
    const/4 v3, 0x0

    .line 163
    .local v3, "nextExpiryUid":I
    const/4 v4, 0x0

    .line 164
    .local v4, "nextExpiryPackageName":Ljava/lang/String;
    :try_start_a
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 166
    .local v5, "nowElapsedMillis":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 167
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 168
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 169
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    if-nez v9, :cond_29

    .line 170
    goto :goto_16

    .line 173
    :cond_29
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 174
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9, v8}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 175
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 182
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_16

    .line 177
    .restart local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_38
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v9

    move-wide v1, v9

    .line 178
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    move v3, v9

    .line 179
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 180
    nop

    .line 183
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_48
    nop

    .line 184
    invoke-direct {p0, v3, v4}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    .line 183
    invoke-direct {p0, v1, v2, v8}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 185
    .end local v1    # "nextExpiryTime":J
    .end local v3    # "nextExpiryUid":I
    .end local v4    # "nextExpiryPackageName":Ljava/lang/String;
    .end local v5    # "nowElapsedMillis":J
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_52

    throw v1
.end method

.method private checkExpiredDelaysAndResetAlarm()V
    .registers 14

    .line 206
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 208
    .local v1, "nowElapsedMillis":J
    const-wide v3, 0x7fffffffffffffffL

    .line 209
    .local v3, "nextDelayTime":J
    const/4 v5, 0x0

    .line 210
    .local v5, "nextDelayUid":I
    const/4 v6, 0x0

    .line 211
    .local v6, "nextDelayPackageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 212
    .local v7, "ready":Z
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 213
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 214
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 215
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-nez v10, :cond_2a

    .line 216
    goto :goto_17

    .line 218
    :cond_2a
    invoke-direct {p0, v9, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 219
    invoke-direct {p0, v9}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 220
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 222
    :cond_39
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 223
    const/4 v7, 0x1

    goto :goto_5c

    .line 225
    :cond_41
    const/high16 v10, -0x80000000

    invoke-virtual {v9, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v10

    if-nez v10, :cond_5c

    .line 228
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v10

    .line 229
    .local v10, "jobDelayTime":J
    cmp-long v12, v3, v10

    if-lez v12, :cond_5c

    .line 230
    move-wide v3, v10

    .line 231
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    move v5, v12

    .line 232
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 235
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "jobDelayTime":J
    :cond_5c
    :goto_5c
    goto :goto_17

    .line 236
    :cond_5d
    if-eqz v7, :cond_64

    .line 237
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 239
    :cond_64
    nop

    .line 240
    invoke-direct {p0, v5, v6}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v9

    .line 239
    invoke-direct {p0, v3, v4, v9}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 241
    .end local v1    # "nowElapsedMillis":J
    .end local v3    # "nextDelayTime":J
    .end local v5    # "nextDelayUid":I
    .end local v6    # "nextDelayPackageName":Ljava/lang/String;
    .end local v7    # "ready":Z
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method private deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 245
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    if-eqz v0, :cond_19

    .line 246
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 247
    .local v0, "ws":Landroid/os/WorkSource;
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 248
    invoke-virtual {v1, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/16 v2, 0x3e8

    const-string v3, "JobScheduler"

    .line 249
    invoke-virtual {v1, v2, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 250
    return-object v0

    .line 252
    .end local v0    # "ws":Landroid/os/WorkSource;
    :cond_19
    if-nez p2, :cond_21

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_26

    :cond_21
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    :goto_26
    return-object v0
.end method

.method private ensureAlarmServiceLocked()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 151
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 153
    :cond_10
    return-void
.end method

.method private evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 189
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 191
    .local v0, "jobDeadline":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_16

    .line 192
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 193
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 195
    :cond_12
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    .line 196
    return v3

    .line 198
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    .line 258
    .local v0, "jobDelayTime":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_d

    .line 259
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 260
    return v2

    .line 262
    :cond_d
    const/4 v2, 0x0

    return v2
.end method

.method private maybeAdjustAlarmTime(J)J
    .registers 6
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    .line 300
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 301
    .local v0, "earliestWakeupTimeElapsed":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    .line 302
    return-wide v0

    .line 304
    :cond_b
    return-wide p1
.end method

.method private maybeUpdateAlarmsLocked(JJLandroid/os/WorkSource;)V
    .registers 8
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "deadlineExpiredElapsed"    # J
    .param p5, "ws"    # Landroid/os/WorkSource;

    .line 267
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 268
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 270
    :cond_9
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_12

    .line 271
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 273
    :cond_12
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 10
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 294
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 295
    const-string v1, "*job.deadline*"

    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 297
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 10
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 282
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 283
    const-string v1, "*job.delay*"

    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 285
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .registers 22
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p3, "alarmTimeElapsed"    # J
    .param p5, "ws"    # Landroid/os/WorkSource;

    move-object/from16 v0, p0

    move-wide/from16 v13, p3

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    .line 310
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v13, v1

    if-nez v1, :cond_18

    .line 311
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object/from16 v15, p2

    invoke-virtual {v1, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_54

    .line 313
    :cond_18
    move-object/from16 v15, p2

    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v1, :cond_3f

    .line 314
    const-string v1, "JobScheduler.Time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 316
    :cond_3f
    move-object/from16 v12, p1

    :goto_41
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    .line 320
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 316
    move-wide v3, v13

    move-object v9, v12

    move-object v10, v15

    move-object/from16 v12, p5

    invoke-virtual/range {v1 .. v12}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 323
    :goto_54
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 24
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
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

    .line 388
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 389
    .local v2, "token":J
    const-wide v4, 0x10b00000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 391
    .local v4, "mToken":J
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 392
    .local v6, "nowElapsed":J
    const-wide v8, 0x10300000001L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 393
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 395
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 398
    iget-object v8, v0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 399
    .local v9, "ts":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_50

    .line 400
    goto :goto_3b

    .line 402
    :cond_50
    const-wide v11, 0x20b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 403
    .local v11, "tsToken":J
    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 405
    const-wide v13, 0x10800000003L

    .line 406
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v15

    .line 405
    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 407
    const-wide v13, 0x10300000004L

    .line 408
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v15

    move-wide/from16 v17, v2

    sub-long v2, v15, v6

    .line 407
    .end local v2    # "token":J
    .local v17, "token":J
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 410
    const-wide v2, 0x10800000005L

    .line 411
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v13

    .line 410
    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 412
    const-wide v2, 0x10300000006L

    .line 413
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v13

    sub-long/2addr v13, v6

    .line 412
    invoke-virtual {v1, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 415
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 416
    .end local v9    # "ts":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "tsToken":J
    nop

    .line 398
    move-wide/from16 v2, v17

    goto :goto_3b

    .line 418
    .end local v17    # "token":J
    .restart local v2    # "token":J
    :cond_9d
    move-object/from16 v10, p4

    move-wide/from16 v17, v2

    .end local v2    # "token":J
    .restart local v17    # "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 419
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 420
    .end local v17    # "token":J
    .restart local v2    # "token":J
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 351
    .local v0, "nowElapsed":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapsed clock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v2, "Next delay alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 356
    const-string v2, "Next deadline alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 361
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 362
    .local v3, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 363
    goto :goto_3d

    .line 365
    :cond_50
    const-string v4, "#"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 367
    const-string v4, " from "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 369
    const-string v4, ": Delay="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 371
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_7c

    .line 373
    :cond_77
    const-string v4, "N/A"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 375
    :goto_7c
    const-string v4, ", Deadline="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 377
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_94

    .line 379
    :cond_8f
    const-string v4, "N/A"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 381
    :goto_94
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 382
    .end local v3    # "ts":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_3d

    .line 383
    :cond_98
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 17
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    move-object v6, p0

    move-object v7, p1

    .line 80
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 81
    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 88
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 89
    .local v8, "nowElapsedMillis":J
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 90
    return-void

    .line 91
    :cond_26
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 93
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-nez v0, :cond_39

    .line 95
    return-void

    .line 99
    :cond_39
    const/4 v0, 0x0

    .line 100
    .local v0, "isInsert":Z
    iget-object v1, v6, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    iget-object v2, v6, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_46
    move-object v10, v1

    .line 101
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 102
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 103
    .local v1, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_61

    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_64

    .line 108
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_61
    nop

    .line 100
    move-object v1, v10

    goto :goto_46

    .line 109
    .end local v0    # "isInsert":Z
    .local v11, "isInsert":Z
    :cond_64
    :goto_64
    move v11, v0

    if-eqz v11, :cond_6a

    .line 110
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 112
    :cond_6a
    invoke-interface {v10, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 113
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 114
    nop

    .line 115
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_83

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v3

    goto :goto_84

    .line 116
    :cond_83
    move-wide v3, v1

    :goto_84
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 117
    move-wide v12, v0

    goto :goto_92

    .line 116
    :cond_90
    nop

    .line 117
    move-wide v12, v1

    :goto_92
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v5

    .line 114
    move-object v0, v6

    move-wide v1, v3

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateAlarmsLocked(JJLandroid/os/WorkSource;)V

    .line 119
    .end local v8    # "nowElapsedMillis":J
    .end local v10    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v11    # "isInsert":Z
    :cond_a4
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 128
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 129
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 130
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 131
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 134
    :cond_16
    return-void
.end method
