.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KNOWN_ACTIVE:I = 0x1

.field static final KNOWN_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Background"

.field static final UNKNOWN:I


# instance fields
.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 229
    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 62
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 63
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 62
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 64
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 47
    invoke-direct {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/controllers/BackgroundJobsController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$0(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 84
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 85
    .local v0, "uid":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "sourcePkg":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 88
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 90
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " active"

    goto :goto_25

    :cond_23
    const-string v2, " idle"

    :goto_25
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 92
    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 93
    :cond_38
    const-string v2, ", whitelisted"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 95
    :cond_3d
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 100
    const-string v2, "allowed]"

    goto :goto_57

    :cond_55
    const-string v2, "disallowed]"

    .line 99
    :goto_57
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_67

    .line 104
    const-string v2, " RUNNABLE"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6c

    .line 106
    :cond_67
    const-string v2, " WAITING"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    :goto_6c
    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$1(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 121
    nop

    .line 122
    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 124
    .local v0, "jsToken":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 126
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 127
    .local v2, "sourceUid":I
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 128
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "sourcePkg":Ljava/lang/String;
    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 132
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v4

    .line 131
    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 133
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 134
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 135
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_4d

    .line 133
    :cond_4b
    move v4, v6

    goto :goto_4f

    .line 135
    :cond_4d
    :goto_4d
    nop

    .line 133
    move v4, v5

    :goto_4f
    const-wide v7, 0x10800000005L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 137
    const-wide v7, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 139
    invoke-virtual {v4, v2, v3}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v4

    .line 137
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 142
    const-wide v7, 0x10800000007L

    iget v4, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v9, 0x400000

    and-int/2addr v4, v9

    if-eqz v4, :cond_72

    goto :goto_73

    :cond_72
    move v5, v6

    :goto_73
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 148
    return-void
.end method

.method private updateAllJobRestrictionsLocked()V
    .registers 3

    .line 155
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 156
    return-void
.end method

.method private updateJobRestrictionsForUidLocked(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "isActive"    # Z

    .line 159
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 160
    return-void
.end method

.method private updateJobRestrictionsLocked(II)V
    .registers 15
    .param p1, "filterUid"    # I
    .param p2, "newActiveState"    # I

    .line 163
    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;I)V

    .line 165
    .local v0, "updateTrackedJobs":Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    sget-boolean v1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    goto :goto_11

    :cond_10
    move-wide v4, v2

    .line 167
    .local v4, "start":J
    :goto_11
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v1

    .line 168
    .local v1, "store":Lcom/android/server/job/JobStore;
    if-lez p1, :cond_1d

    .line 169
    invoke-virtual {v1, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_20

    .line 171
    :cond_1d
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 174
    :goto_20
    sget-boolean v6, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v6, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    nop

    .line 175
    .local v2, "time":J
    :cond_2a
    sget-boolean v6, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v6, :cond_59

    .line 176
    const-string v6, "JobScheduler.Background"

    const-string v7, "Job status updated: %d/%d checked/total jobs, %d us"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 179
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    .line 180
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 176
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_59
    iget-boolean v6, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    if-eqz v6, :cond_62

    .line 185
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 187
    :cond_62
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 12
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

    .line 114
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 115
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 117
    .local v4, "mToken":J
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 120
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;

    invoke-direct {v3, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, p4, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 150
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 152
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
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

    .line 80
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 109
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 70
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 75
    return-void
.end method

.method updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "activeState"    # I

    .line 191
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 192
    .local v0, "uid":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_15

    .line 194
    move v3, v4

    goto :goto_17

    .line 195
    :cond_15
    nop

    .line 194
    move v3, v5

    :goto_17
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AppStateTracker;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 199
    .local v2, "canRun":Z
    if-nez p2, :cond_25

    .line 200
    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v3

    .local v3, "isActive":Z
    goto :goto_2a

    .line 202
    .end local v3    # "isActive":Z
    :cond_25
    if-ne p2, v4, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v5

    .line 204
    .restart local v3    # "isActive":Z
    :goto_2a
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(Z)Z

    move-result v4

    .line 205
    .local v4, "didChange":Z
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result v5

    or-int/2addr v4, v5

    .line 206
    return v4
.end method
