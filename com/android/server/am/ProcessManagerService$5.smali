.class Lcom/android/server/am/ProcessManagerService$5;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->doAdjBoost(Ljava/lang/String;IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1408
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$5;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput p2, p0, Lcom/android/server/am/ProcessManagerService$5;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ProcessManagerService$5;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$5;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$800(Lcom/android/server/am/ProcessManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessManagerService$5;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1412
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;>;"
    if-nez v0, :cond_11

    .line 1413
    return-void

    .line 1415
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$5;->val$processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    .line 1416
    .local v1, "priorityInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    if-eqz v1, :cond_75

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_75

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_75

    .line 1417
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$5;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1418
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService$5;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;
    invoke-static {v3}, Lcom/android/server/am/ProcessManagerService;->access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ProcessManagerService$5;->val$userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1419
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    sget v4, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1420
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_5c

    .line 1422
    :cond_50
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1423
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 1425
    :goto_5c
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService$5;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1426
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_2c .. :try_end_66} :catchall_6f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1427
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$5;->val$processName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 1426
    :catchall_6f
    move-exception v3

    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1429
    :cond_75
    :goto_75
    return-void
.end method
