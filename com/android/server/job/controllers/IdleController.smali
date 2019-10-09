.class public final Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Idle"


# instance fields
.field private mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

.field mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

.field private mIdleWindowSlop:J

.field private mInactivityIdleThreshold:J

.field final mTrackedTasks:Landroid/util/ArraySet;
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

    .line 41
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Idle"

    const/4 v1, 0x3

    .line 42
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
    sput-boolean v0, Lcom/android/server/job/controllers/IdleController;->DEBUG:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 55
    invoke-static {}, Lcom/android/server/job/controllers/IdleControllerInjector;->getInstance()Lcom/android/server/job/controllers/IdleControllerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    .line 56
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking()V

    .line 57
    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/job/controllers/IdleController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/IdleController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/controllers/IdleController;

    .line 39
    iget-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/IdleController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/controllers/IdleController;

    .line 39
    iget-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/IdleController;)Lcom/android/server/job/controllers/IdleControllerInjector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/IdleController;

    .line 39
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    return-object v0
.end method

.method private initIdleStateTracking()V
    .registers 10

    .line 102
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J

    .line 104
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J

    .line 106
    new-instance v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/IdleController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    .line 109
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-wide v4, p0, Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J

    iget-wide v6, p0, Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J

    iget-object v8, p0, Lcom/android/server/job/controllers/IdleController;->mLock:Ljava/lang/Object;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/controllers/IdleControllerInjector;->initInjector(Landroid/content/Context;Lcom/android/server/job/StateChangedListener;JJLjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    # getter for: Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->access$000(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    # getter for: Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z
    invoke-static {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->access$100(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/IdleControllerInjector;->updateIdleTrackerState(ZZ)V

    .line 112
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

    .line 260
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 261
    .local v0, "token":J
    const-wide v2, 0x10b00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 263
    .local v2, "mToken":J
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v4

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 265
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_56

    .line 266
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 267
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 268
    goto :goto_53

    .line 270
    :cond_33
    const-wide v6, 0x20b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 271
    .local v6, "jsToken":J
    const-wide v8, 0x10b00000001L

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 272
    const-wide v8, 0x10500000002L

    .line 273
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 272
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 274
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 265
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "jsToken":J
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 277
    .end local v4    # "i":I
    :cond_56
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 279
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

    .line 241
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 245
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 246
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 247
    goto :goto_4c

    .line 249
    :cond_35
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 251
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 244
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 255
    .end local v0    # "i":I
    :cond_4f
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 65
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/IdleControllerInjector;->isInIdleWhiteListLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 69
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 73
    :cond_21
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 79
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/IdleControllerInjector;->removeTaskLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 83
    :cond_12
    return-void
.end method

.method reportNewIdleState(Z)V
    .registers 5
    .param p1, "isIdle"    # Z

    .line 89
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 91
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 90
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 93
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 94
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 95
    return-void

    .line 93
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
