.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService$StandbyTracker;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$0:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    iput p2, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$1:I

    iput p3, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$2:I

    iput-object p4, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$0:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    iget v1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$1:I

    iget v2, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$2:I

    iget-object v3, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$StandbyTracker$18Nt1smLe-l9bimlwR39k5RbMdM;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->lambda$onAppIdleStateChanged$1(Lcom/android/server/job/JobSchedulerService$StandbyTracker;IILjava/lang/String;)V

    return-void
.end method
