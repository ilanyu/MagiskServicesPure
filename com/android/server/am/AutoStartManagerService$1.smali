.class Lcom/android/server/am/AutoStartManagerService$1;
.super Ljava/lang/Object;
.source "AutoStartManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AutoStartManagerService;->signalStopProcessesLocked(Ljava/util/ArrayList;ZLjava/lang/String;ILcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$tmpProcs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/android/server/am/AutoStartManagerService$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/AutoStartManagerService$1;->val$tmpProcs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 123
    iget-object v0, p0, Lcom/android/server/am/AutoStartManagerService$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 124
    iget-object v1, p0, Lcom/android/server/am/AutoStartManagerService$1;->val$tmpProcs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 125
    .local v1, "size":I
    const/4 v2, 0x0

    .line 126
    .local v2, "tmpProc":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_2a

    .line 127
    iget-object v4, p0, Lcom/android/server/am/AutoStartManagerService$1;->val$tmpProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move-object v2, v4

    .line 128
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v8, 0x12

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/AutoStartManagerService;->sendSignalToProcessLocked(IILjava/lang/String;IIZ)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 130
    .end local v1    # "size":I
    .end local v2    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 131
    return-void

    .line 130
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
