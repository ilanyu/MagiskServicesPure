.class final Lcom/android/server/Watchdog$WorkerHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# static fields
.field static final WAITED_HALF_DUMP:I = 0x0

.field static final WATCH_DOG_DUMP:I = 0x1

.field static final WATCH_DOG_WITH_WAITED_HALF_DUMP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 154
    iput-object p1, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    .line 155
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 160
    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 161
    .local v3, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, "waitedHalf":Z
    iget v4, v2, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_c8

    .line 198
    const-string v4, "Watchdog"

    const-string v5, "    // wrong message received of WorkerHandler"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 171
    :pswitch_19
    const/4 v0, 0x1

    .line 173
    .end local v0    # "waitedHalf":Z
    .local v4, "waitedHalf":Z
    :pswitch_1a
    move v4, v0

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 174
    .local v15, "subject":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_3c

    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3c
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    # invokes: Lcom/android/server/Watchdog;->dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;
    invoke-static {v0, v4, v3}, Lcom/android/server/Watchdog;->access$100(Lcom/android/server/Watchdog;ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v14

    .line 178
    .local v14, "newFd":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v6, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "watchdog"

    const/4 v8, 0x0

    const-string/jumbo v9, "system_server"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object v12, v15

    move-object/from16 v16, v14

    .end local v14    # "newFd":Ljava/io/File;
    .local v16, "newFd":Ljava/io/File;
    move-object v5, v15

    move-object v15, v0

    .line 178
    .end local v15    # "subject":Ljava/lang/String;
    .local v5, "subject":Ljava/lang/String;
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 182
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    # getter for: Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/Watchdog;->access$200(Lcom/android/server/Watchdog;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 183
    :try_start_60
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    # getter for: Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/Watchdog;->access$300(Lcom/android/server/Watchdog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 186
    const-string v0, "Watchdog"

    const-string v7, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/16 v7, 0x77

    # invokes: Lcom/android/server/Watchdog;->doSysRq(C)V
    invoke-static {v0, v7}, Lcom/android/server/Watchdog;->access$400(Lcom/android/server/Watchdog;C)V

    .line 188
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/16 v7, 0x6c

    # invokes: Lcom/android/server/Watchdog;->doSysRq(C)V
    invoke-static {v0, v7}, Lcom/android/server/Watchdog;->access$400(Lcom/android/server/Watchdog;C)V

    .line 191
    const/4 v0, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    iget-object v8, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    .line 192
    # invokes: Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/Watchdog;->access$500(Lcom/android/server/Watchdog;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_8c
    .catchall {:try_start_60 .. :try_end_8c} :catchall_a2

    .line 191
    move-object/from16 v9, v16

    :try_start_8e
    invoke-static {v0, v7, v5, v9, v8}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V

    .line 193
    .end local v16    # "newFd":Ljava/io/File;
    .local v9, "newFd":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    # setter for: Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;
    invoke-static {v0, v7}, Lcom/android/server/Watchdog;->access$302(Lcom/android/server/Watchdog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_9e

    .line 195
    .end local v9    # "newFd":Ljava/io/File;
    .restart local v16    # "newFd":Ljava/io/File;
    :cond_9c
    move-object/from16 v9, v16

    .line 195
    .end local v16    # "newFd":Ljava/io/File;
    .restart local v9    # "newFd":Ljava/io/File;
    :goto_9e
    monitor-exit v6

    .line 196
    nop

    .line 201
    move v0, v4

    goto :goto_c6

    .line 195
    .end local v9    # "newFd":Ljava/io/File;
    .restart local v16    # "newFd":Ljava/io/File;
    :catchall_a2
    move-exception v0

    move-object/from16 v9, v16

    .line 195
    .end local v16    # "newFd":Ljava/io/File;
    .restart local v9    # "newFd":Ljava/io/File;
    :goto_a5
    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_a7

    throw v0

    :catchall_a7
    move-exception v0

    goto :goto_a5

    .line 166
    .end local v4    # "waitedHalf":Z
    .end local v5    # "subject":Ljava/lang/String;
    .end local v9    # "newFd":Ljava/io/File;
    .restart local v0    # "waitedHalf":Z
    :pswitch_a9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v4, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v5, v1, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    .line 168
    invoke-virtual {v5}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v5

    .line 167
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7, v3, v6, v6, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    # setter for: Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;
    invoke-static {v4, v5}, Lcom/android/server/Watchdog;->access$002(Lcom/android/server/Watchdog;Ljava/io/File;)Ljava/io/File;

    .line 169
    nop

    .line 201
    :goto_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method
