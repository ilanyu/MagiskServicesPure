.class final Lcom/android/server/am/ProcessManagerService$LocalService;
.super Lmiui/process/ProcessManagerInternal;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2

    .line 1714
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-direct {p0}, Lmiui/process/ProcessManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ProcessManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ProcessManagerService$1;

    .line 1714
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService$LocalService;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    return-void
.end method


# virtual methods
.method public forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1746
    return-void
.end method

.method public getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;
    .registers 3
    .param p1, "pid"    # I

    .line 1755
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$1000(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiApplicationThreadManager;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowForegroundAppInfoLocked()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->getMultiWindowForegroundAppInfoLocked(Lcom/android/server/am/ActivityManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "curComponentActivity"    # Landroid/content/ComponentName;

    .line 1735
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessManagerService;->notifyActivityChanged(Landroid/content/ComponentName;)V

    .line 1736
    return-void
.end method

.method public notifyForegroundInfoChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V
    .registers 8
    .param p1, "foregroundRecord"    # Ljava/lang/Object;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "pid"    # I
    .param p4, "multiWindowAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1724
    if-eqz p1, :cond_17

    instance-of v0, p1, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    instance-of v0, p2, Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz v0, :cond_17

    .line 1726
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1727
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    move-object v1, p2

    check-cast v1, Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1728
    .local v1, "activityState":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    .line 1729
    invoke-virtual {v2, v0, v1, p3, p4}, Lcom/android/server/am/ProcessManagerService;->notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    .line 1731
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "activityState":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_17
    return-void
.end method

.method public onCleanUpApplicationRecord(Ljava/lang/Object;)V
    .registers 9
    .param p1, "processRecord"    # Ljava/lang/Object;

    .line 1761
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1762
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_a

    goto :goto_39

    .line 1765
    :cond_a
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1766
    .local v1, "packageName":Ljava/lang/String;
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1767
    .local v2, "uid":I
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1768
    .local v3, "processName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    .line 1770
    .local v4, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v4, :cond_27

    iget v5, v4, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_33

    .line 1771
    :cond_27
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    iget-object v5, v5, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ProcessManagerService$LocalService$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/server/am/ProcessManagerService$LocalService$1;-><init>(Lcom/android/server/am/ProcessManagerService$LocalService;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1779
    :cond_33
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # invokes: Lcom/android/server/am/ProcessManagerService;->restartProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v5, v1, v3, v2}, Lcom/android/server/am/ProcessManagerService;->access$1200(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1780
    return-void

    .line 1763
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_39
    :goto_39
    return-void
.end method

.method public recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 1718
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ProcessManagerService;->recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1719
    return-void
.end method

.method public updateProcessForegroundLocked(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1741
    return-void
.end method
