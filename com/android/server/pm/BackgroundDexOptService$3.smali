.class Lcom/android/server/pm/BackgroundDexOptService$3;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runOtaIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 385
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->access$100(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I

    move-result v0

    .line 386
    .local v0, "result":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->isCharging:Z
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$200()Z

    move-result v1

    if-nez v1, :cond_6c

    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$300()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 389
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 390
    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->otaHasOptedPkgs:Landroid/util/ArraySet;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$400()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 391
    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->otaToOptPkgs:Landroid/util/ArraySet;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$300()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 392
    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$500()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 393
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x320

    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$700()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 394
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 395
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 396
    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$600()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 393
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 398
    const-string v2, "BackgroundDexOptService"

    const-string v3, "After ota work done, re-schedule an origin daily job."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v1    # "js":Landroid/app/job/JobScheduler;
    :cond_6c
    return-void
.end method
