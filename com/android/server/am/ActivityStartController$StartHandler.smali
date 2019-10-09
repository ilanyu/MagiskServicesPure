.class final Lcom/android/server/am/ActivityStartController$StartHandler;
.super Landroid/os/Handler;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStartController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 91
    iput-object p1, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    .line 92
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_19

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    # getter for: Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ActivityStartController;->access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 100
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 101
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    :goto_19
    return-void

    .line 101
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
