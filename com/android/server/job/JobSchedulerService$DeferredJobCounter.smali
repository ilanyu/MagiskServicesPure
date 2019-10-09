.class Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeferredJobCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeferred:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2466
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 2467
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 2469
    :cond_10
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 2457
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public numDeferred()I
    .registers 2

    .line 2461
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    return v0
.end method
