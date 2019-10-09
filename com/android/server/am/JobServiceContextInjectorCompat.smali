.class public Lcom/android/server/am/JobServiceContextInjectorCompat;
.super Ljava/lang/Object;
.source "JobServiceContextInjectorCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelJob(II)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "jobId"    # I

    .line 10
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 11
    .local v0, "jobScheduler":Lcom/android/server/job/JobSchedulerInternal;
    if-eqz v0, :cond_d

    .line 12
    invoke-interface {v0, p0, p1}, Lcom/android/server/job/JobSchedulerInternal;->cancelJob(II)V

    .line 14
    :cond_d
    return-void
.end method
