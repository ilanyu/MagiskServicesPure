.class Lcom/android/server/am/AppErrors$1;
.super Landroid/os/AnrMonitor$TimerThread;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$dumpApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$firstPids:Ljava/util/ArrayList;

.field final synthetic val$info:Ljava/lang/StringBuilder;

.field final synthetic val$lastPids:Landroid/util/SparseArray;

.field final synthetic val$stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/am/AppErrors;
    .param p2, "x0"    # J

    .line 1033
    iput-object p1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    iput-object p4, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iput-object p5, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/android/server/am/AppErrors$1;->val$info:Ljava/lang/StringBuilder;

    iput-object p7, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iput-object p8, p0, Lcom/android/server/am/AppErrors$1;->val$firstPids:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/am/AppErrors$1;->val$lastPids:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p3}, Landroid/os/AnrMonitor$TimerThread;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1038
    :try_start_0
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1039
    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Lmiui/process/IMiuiApplicationThread;->dumpMessage()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "msgs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1041
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    # getter for: Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/AppErrors;->access$000(Lcom/android/server/am/AppErrors;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppErrors$1;->val$info:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 1044
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/AppErrors$1;->val$firstPids:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/am/AppErrors$1;->val$lastPids:Landroid/util/SparseArray;

    sget-object v10, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 1042
    invoke-static/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/am/AppErrors$1;->finishRun()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 1048
    .end local v0    # "msgs":Ljava/lang/String;
    goto :goto_50

    .line 1046
    :catch_48
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Error happened during dump message"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method
