.class final Lcom/android/server/job/JobServiceContext$JobCallback;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobCallback"
.end annotation


# instance fields
.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobServiceContext;

    .line 144
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .registers 4
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    .line 150
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    .line 151
    return-void
.end method

.method public acknowledgeStopMessage(IZ)V
    .registers 4
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    .line 156
    return-void
.end method

.method public completeWork(II)Z
    .registers 4
    .param p1, "jobId"    # I
    .param p2, "workId"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z

    move-result v0

    return v0
.end method

.method public dequeueWork(I)Landroid/app/job/JobWorkItem;
    .registers 3
    .param p1, "jobId"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/job/JobServiceContext;->doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;

    move-result-object v0

    return-object v0
.end method

.method public jobFinished(IZ)V
    .registers 4
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .line 170
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    .line 171
    return-void
.end method
