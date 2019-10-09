.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Battery"


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

.field private final mTrackedTasks:Landroid/util/ArraySet;
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

    .line 48
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Battery"

    const/4 v1, 0x3

    .line 49
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
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 61
    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 62
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/BatteryController;

    .line 46
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method private maybeReportNewChargingStateLocked()V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    .line 84
    .local v0, "stablePower":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    .line 85
    .local v1, "batteryNotLow":Z
    sget-boolean v2, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_27

    .line 86
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_27
    const/4 v2, 0x0

    .line 89
    .local v2, "reportChange":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 89
    .local v3, "i":I
    :goto_30
    if-ltz v3, :cond_47

    .line 90
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 101
    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    move-result v5

    or-int/2addr v2, v5

    .line 102
    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    move-result v5

    or-int/2addr v2, v5

    .line 89
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 105
    .end local v3    # "i":I
    :cond_47
    if-nez v0, :cond_54

    if-eqz v1, :cond_4c

    goto :goto_54

    .line 108
    :cond_4c
    if-eqz v2, :cond_5a

    .line 111
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_5a

    .line 107
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 113
    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 16
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

    .line 259
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 260
    .local v0, "token":J
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 262
    .local v2, "mToken":J
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 263
    invoke-virtual {v4}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v4

    .line 262
    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 265
    invoke-virtual {v4}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v4

    .line 264
    const-wide v5, 0x10800000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 267
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 268
    invoke-virtual {v4}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v4

    .line 267
    const-wide v5, 0x10800000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 269
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 270
    invoke-virtual {v4}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v4

    .line 269
    const-wide v5, 0x10500000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 272
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_80

    .line 273
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 274
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 275
    goto :goto_7d

    .line 277
    :cond_5d
    const-wide v6, 0x20b00000005L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 278
    .local v6, "jsToken":J
    const-wide v8, 0x10b00000001L

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 279
    const-wide v8, 0x10500000002L

    .line 280
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 279
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 281
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 272
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "jsToken":J
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 284
    .end local v4    # "i":I
    :cond_80
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 286
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 6
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

    .line 234
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 238
    const-string v0, "MONITORING: seq="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 241
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 244
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 245
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 246
    goto :goto_7c

    .line 248
    :cond_65
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 250
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 243
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 254
    .end local v0    # "i":I
    :cond_7f
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 67
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 68
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 70
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    .line 71
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    .line 73
    :cond_21
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_c
    return-void
.end method
