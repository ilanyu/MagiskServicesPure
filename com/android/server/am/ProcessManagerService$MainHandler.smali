.class Lcom/android/server/am/ProcessManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 176
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    .line 177
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_20

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 185
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;
    invoke-static {v1}, Lcom/android/server/am/ProcessManagerService;->access$200(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStarter;->restoreLastProcessesInfoLocked(I)V

    .line 186
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    nop

    .line 192
    :goto_20
    return-void

    .line 186
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
