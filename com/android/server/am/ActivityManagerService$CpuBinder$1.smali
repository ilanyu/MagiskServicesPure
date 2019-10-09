.class Lcom/android/server/am/ActivityManagerService$CpuBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$CpuBinder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService$CpuBinder;

    .line 2962
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2966
    if-eqz p4, :cond_3

    return-void

    .line 2967
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cpuinfo"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2968
    return-void

    .line 2969
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2970
    :try_start_19
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2971
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2971
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    monitor-exit v0

    .line 2974
    return-void

    .line 2973
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_39

    throw v1
.end method
