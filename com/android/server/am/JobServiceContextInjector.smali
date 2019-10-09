.class public Lcom/android/server/am/JobServiceContextInjector;
.super Ljava/lang/Object;
.source "JobServiceContextInjector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JobServiceContext"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 11
    .param p0, "jobContext"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 31
    nop

    .line 32
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 31
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 33
    const/4 v4, 0x5

    .line 35
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 33
    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 37
    :cond_25
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    .line 38
    .local v0, "jobId":I
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 39
    .local v1, "uid":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_58

    .line 40
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/server/am/JobServiceContextInjectorCompat;->cancelJob(II)V

    .line 41
    const-string v2, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Reject Start Job, cancelJob uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_58
    const/4 v2, 0x0

    return v2
.end method
