.class Lcom/android/server/am/ProcessManagerService$2;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1279
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1282
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 1283
    .local v0, "freeMemory":J
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;
    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessPolicy;->getCameraMemThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_89

    .line 1284
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    .line 1285
    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const/16 v3, 0x384

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    .line 1286
    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;
    invoke-static {v4}, Lcom/android/server/am/ProcessManagerService;->access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v4

    .line 1284
    invoke-static {v2, v3, v4}, Lcom/android/server/am/ProcessUtils;->getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1287
    .local v2, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1288
    .local v3, "N":I
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    .line 1289
    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/server/am/ProcessUtils;->getPidsForProc(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)[I

    move-result-object v4

    .line 1288
    invoke-static {v4}, Lcom/android/server/am/ProcessUtils;->getTotalPss([I)I

    move-result v4

    .line 1291
    .local v4, "willFree":I
    const-string v5, "ProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boost camera with free mem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "KB, kill "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processes, will free memory:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_6c
    if-ge v6, v3, :cond_84

    .line 1295
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1296
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_81

    .line 1297
    iget-object v8, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;
    invoke-static {v8}, Lcom/android/server/am/ProcessManagerService;->access$500(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessKiller;

    move-result-object v8

    const-string v9, "camera boost"

    invoke-virtual {v8, v7, v9, v5}, Lcom/android/server/am/ProcessKiller;->killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 1294
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 1301
    .end local v6    # "i":I
    :cond_84
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    # invokes: Lcom/android/server/am/ProcessManagerService;->reportCameraBoost(JII)V
    invoke-static {v5, v0, v1, v3, v4}, Lcom/android/server/am/ProcessManagerService;->access$600(Lcom/android/server/am/ProcessManagerService;JII)V

    .line 1303
    .end local v2    # "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "N":I
    .end local v4    # "willFree":I
    :cond_89
    return-void
.end method
