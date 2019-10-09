.class Lcom/android/server/am/ProcessManagerService$8;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->restartProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1693
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$8;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$8;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ProcessManagerService$8;->val$uid:I

    iput-object p4, p0, Lcom/android/server/am/ProcessManagerService$8;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1696
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$8;->this$0:Lcom/android/server/am/ProcessManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$8;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ProcessManagerService$8;->val$uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1698
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$8;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$300(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$8;->val$processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1699
    .local v0, "crashCount":Ljava/lang/Integer;
    const/4 v1, 0x2

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_42

    .line 1700
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService$8;->val$processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to too much crash!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return-void

    .line 1703
    :cond_42
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$8;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1704
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService$8;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;
    invoke-static {v3}, Lcom/android/server/am/ProcessManagerService;->access$200(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService$8;->val$processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService$8;->val$processName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ProcessManagerService$8;->val$uid:I

    .line 1705
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v1}, Lcom/android/server/am/ProcessStarter;->makeHostingTypeFromFlag(I)Ljava/lang/String;

    move-result-object v1

    .line 1704
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/ProcessStarter;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 1707
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6e

    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1709
    .end local v0    # "crashCount":Ljava/lang/Integer;
    :cond_6e
    :goto_6e
    return-void
.end method
