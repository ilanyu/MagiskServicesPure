.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2250
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2251
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2256
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const v6, 0x10807bd

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v0, :sswitch_data_768

    goto/16 :goto_765

    .line 2696
    :sswitch_13
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2697
    .local v3, "flag":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2698
    .local v4, "packageName":Ljava/lang/String;
    if-nez v3, :cond_3b

    .line 2699
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_3b

    .line 2700
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mNetLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2701
    :try_start_25
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    if-ltz v0, :cond_36

    .line 2702
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    invoke-virtual {v0, v7, v4, v6, v10}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    .line 2704
    monitor-exit v5

    return-void

    .line 2706
    :cond_36
    monitor-exit v5

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_38

    throw v0

    .line 2709
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_765

    .line 2710
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    invoke-virtual {v0, v7, v4, v9, v11}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    .line 2710
    .end local v3    # "flag":I
    .end local v4    # "packageName":Ljava/lang/String;
    goto/16 :goto_765

    .line 2285
    :sswitch_46
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2286
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "servicerecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2285
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 2287
    goto/16 :goto_765

    .line 2289
    :sswitch_5e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 2291
    .local v3, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2292
    .local v4, "N":I
    move v0, v10

    .line 2292
    .local v0, "i":I
    :goto_68
    move v5, v0

    .line 2292
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_79

    .line 2294
    :try_start_6b
    invoke-virtual {v3, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, v10, v8}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_74} :catch_75

    .line 2296
    goto :goto_76

    .line 2295
    :catch_75
    move-exception v0

    .line 2292
    :goto_76
    add-int/lit8 v0, v5, 0x1

    .line 2292
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_68

    .line 2298
    .end local v0    # "i":I
    :cond_79
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2299
    .end local v3    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    .end local v4    # "N":I
    goto/16 :goto_765

    .line 2282
    :sswitch_7e
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 2283
    goto/16 :goto_765

    .line 2675
    :sswitch_8b
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_91

    move v10, v11

    nop

    :cond_91
    move v0, v10

    .line 2676
    .local v0, "isShowing":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .line 2676
    .local v3, "i":I
    :goto_9b
    if-ltz v3, :cond_ad

    .line 2677
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 2676
    add-int/lit8 v3, v3, -0x1

    goto :goto_9b

    .line 2679
    .end local v0    # "isShowing":Z
    .end local v3    # "i":I
    :cond_ad
    goto/16 :goto_765

    .line 2669
    :sswitch_af
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b5

    move v10, v11

    nop

    :cond_b5
    move v0, v10

    .line 2670
    .local v0, "isAwake":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .line 2670
    .restart local v3    # "i":I
    :goto_bf
    if-ltz v3, :cond_d1

    .line 2671
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 2670
    add-int/lit8 v3, v3, -0x1

    goto :goto_bf

    .line 2673
    .end local v0    # "isAwake":Z
    .end local v3    # "i":I
    :cond_d1
    goto/16 :goto_765

    .line 2681
    :sswitch_d3
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_d6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2682
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .line 2682
    .local v0, "i":I
    :goto_e2
    move v4, v0

    .line 2682
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_118

    .line 2683
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2684
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_f2
    .catchall {:try_start_d6 .. :try_end_f2} :catchall_11e

    if-eqz v0, :cond_115

    .line 2686
    :try_start_f4
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_f9} :catch_fa
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_11e

    .line 2690
    goto :goto_115

    .line 2687
    :catch_fa
    move-exception v0

    .line 2688
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_fb
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to handle trust storage update for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_115
    :goto_115
    add-int/lit8 v0, v4, -0x1

    .line 2682
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_e2

    .line 2693
    .end local v0    # "i":I
    :cond_118
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_fb .. :try_end_119} :catchall_11e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2694
    goto/16 :goto_765

    .line 2693
    :catchall_11e
    move-exception v0

    :try_start_11f
    monitor-exit v3
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2655
    :sswitch_124
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mVrController:Lcom/android/server/am/VrController;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/VrController;->onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_135

    .line 2656
    return-void

    .line 2658
    :cond_135
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_138
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2659
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mVrController:Lcom/android/server/am/VrController;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    .line 2660
    .local v0, "disableNonVrUi":Z
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 2661
    if-eqz v0, :cond_159

    .line 2664
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-array v5, v11, [I

    aput v7, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 2666
    .end local v0    # "disableNonVrUi":Z
    :cond_159
    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_138 .. :try_end_15a} :catchall_15f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2667
    goto/16 :goto_765

    .line 2666
    :catchall_15f
    move-exception v0

    :try_start_160
    monitor-exit v3
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2652
    :sswitch_165
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 2653
    goto/16 :goto_765

    .line 2363
    :sswitch_16c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2364
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_174
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2365
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2366
    monitor-exit v4
    :try_end_17d
    .catchall {:try_start_174 .. :try_end_17d} :catchall_182

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2367
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_765

    .line 2366
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_182
    move-exception v0

    :try_start_183
    monitor-exit v4
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2641
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_188
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    move-object v3, v0

    .line 2643
    .local v3, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_18d
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_190} :catch_191

    .line 2646
    goto :goto_19a

    .line 2644
    :catch_191
    move-exception v0

    move-object v4, v0

    .line 2645
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2650
    .end local v3    # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_765

    .line 2637
    :sswitch_1a1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    .line 2638
    .local v0, "tracker":Lcom/android/server/am/AppTimeTracker;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    .line 2639
    .end local v0    # "tracker":Lcom/android/server/am/AppTimeTracker;
    goto/16 :goto_765

    .line 2624
    :sswitch_1ae
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v14, 0x3

    .line 2628
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 2624
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 2629
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_1c6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2630
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2631
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2632
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2633
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2634
    monitor-exit v7
    :try_end_1da
    .catchall {:try_start_1c6 .. :try_end_1da} :catchall_1df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2635
    goto/16 :goto_765

    .line 2634
    :catchall_1df
    move-exception v0

    :try_start_1e0
    monitor-exit v7
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2554
    :sswitch_1e5
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_1e8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2555
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2556
    .local v0, "procName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2557
    .local v9, "uid":I
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 2558
    .local v12, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v12, :cond_20a

    .line 2559
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v0, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    move-object v12, v13

    .line 2561
    :cond_20a
    if-eqz v12, :cond_219

    .line 2562
    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2563
    .local v13, "memLimit":J
    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 2563
    .local v8, "reportPackage":Ljava/lang/String;
    goto :goto_21c

    .line 2565
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v13    # "memLimit":J
    :cond_219
    const-wide/16 v13, 0x0

    .line 2566
    .restart local v13    # "memLimit":J
    nop

    .line 2568
    .end local v12    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v8    # "reportPackage":Ljava/lang/String;
    :goto_21c
    monitor-exit v7
    :try_end_21d
    .catchall {:try_start_1e8 .. :try_end_21d} :catchall_30d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v7, v0

    .line 2568
    .end local v0    # "procName":Ljava/lang/String;
    .local v7, "procName":Ljava/lang/String;
    move-wide v12, v13

    .line 2569
    .end local v13    # "memLimit":J
    .local v12, "memLimit":J
    if-nez v7, :cond_225

    .line 2570
    return-void

    .line 2576
    :cond_225
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 2577
    .local v21, "inm":Landroid/app/INotificationManager;
    if-nez v21, :cond_22c

    .line 2578
    return-void

    .line 2581
    :cond_22c
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10401e5

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v7, v15, v10

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2584
    .local v15, "text":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    .line 2585
    .local v14, "deleteIntent":Landroid/content/Intent;
    const-string v0, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v28, v0

    .line 2587
    .local v28, "intent":Landroid/content/Intent;
    const-string v0, "android"

    const-class v10, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, v28

    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2588
    .end local v28    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "process"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2589
    const-string/jumbo v0, "size"

    invoke-virtual {v3, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2590
    if-eqz v8, :cond_26d

    .line 2591
    const-string v0, "direct_launch"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2593
    :cond_26d
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2594
    .local v10, "userId":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v0, v11, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2597
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2598
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2599
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2600
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2601
    const v5, 0x106016f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2603
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401e6

    .line 2605
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2604
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v23, 0x0

    const/high16 v25, 0x10000000

    const/16 v26, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 2606
    move-object/from16 v22, v4

    move-object/from16 v24, v3

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2609
    const/4 v6, 0x0

    invoke-static {v4, v6, v14, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2611
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2614
    .local v19, "notification":Landroid/app/Notification;
    :try_start_2e5
    const-string v0, "android"

    const-string v16, "android"
    :try_end_2e9
    .catch Ljava/lang/RuntimeException; {:try_start_2e5 .. :try_end_2e9} :catch_300
    .catch Landroid/os/RemoteException; {:try_start_2e5 .. :try_end_2e9} :catch_2fc

    const/16 v17, 0x0

    const/16 v18, 0xc

    move-object v4, v14

    move-object/from16 v14, v21

    .line 2614
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .local v4, "deleteIntent":Landroid/content/Intent;
    move-object v5, v15

    move-object v15, v0

    .line 2614
    .end local v15    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    move/from16 v20, v10

    :try_start_2f4
    invoke-interface/range {v14 .. v20}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2f7
    .catch Ljava/lang/RuntimeException; {:try_start_2f4 .. :try_end_2f7} :catch_2fa
    .catch Landroid/os/RemoteException; {:try_start_2f4 .. :try_end_2f7} :catch_2f8

    goto :goto_30a

    .line 2620
    :catch_2f8
    move-exception v0

    goto :goto_2ff

    .line 2617
    :catch_2fa
    move-exception v0

    goto :goto_303

    .line 2620
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "text":Ljava/lang/String;
    .restart local v14    # "deleteIntent":Landroid/content/Intent;
    .restart local v15    # "text":Ljava/lang/String;
    :catch_2fc
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 2620
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v12    # "memLimit":J
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "text":Ljava/lang/String;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v21    # "inm":Landroid/app/INotificationManager;
    :goto_2ff
    goto :goto_30b

    .line 2617
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v7    # "procName":Ljava/lang/String;
    .restart local v8    # "reportPackage":Ljava/lang/String;
    .restart local v9    # "uid":I
    .restart local v10    # "userId":I
    .restart local v12    # "memLimit":J
    .restart local v14    # "deleteIntent":Landroid/content/Intent;
    .restart local v15    # "text":Ljava/lang/String;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_300
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 2618
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "text":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    .restart local v5    # "text":Ljava/lang/String;
    :goto_303
    const-string v6, "ActivityManager"

    const-string v11, "Error showing notification for dump heap"

    invoke-static {v6, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2621
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v12    # "memLimit":J
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v21    # "inm":Landroid/app/INotificationManager;
    :goto_30a
    nop

    .line 2622
    :goto_30b
    goto/16 :goto_765

    .line 2568
    :catchall_30d
    move-exception v0

    :try_start_30e
    monitor-exit v7
    :try_end_30f
    .catchall {:try_start_30e .. :try_end_30f} :catchall_30d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2533
    :sswitch_313
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2534
    .local v3, "uid":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    .line 2536
    .local v4, "firstPacket":[B
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2537
    const/16 v29, 0x0

    .line 2537
    .local v29, "i":I
    :goto_321
    move/from16 v6, v29

    .line 2537
    .end local v29    # "i":I
    .local v6, "i":I
    :try_start_323
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_346

    .line 2538
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v7, v0

    .line 2539
    .local v7, "p":Lcom/android/server/am/ProcessRecord;
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_33a
    .catchall {:try_start_323 .. :try_end_33a} :catchall_349

    if-ne v0, v3, :cond_343

    .line 2541
    :try_start_33c
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_341
    .catch Landroid/os/RemoteException; {:try_start_33c .. :try_end_341} :catch_342
    .catchall {:try_start_33c .. :try_end_341} :catchall_349

    .line 2543
    goto :goto_343

    .line 2542
    :catch_342
    move-exception v0

    .line 2537
    .end local v7    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_343
    :goto_343
    add-int/lit8 v29, v6, 0x1

    .line 2537
    .end local v6    # "i":I
    .restart local v29    # "i":I
    goto :goto_321

    .line 2546
    .end local v29    # "i":I
    :cond_346
    :try_start_346
    monitor-exit v5

    .line 2547
    goto/16 :goto_765

    .line 2546
    :catchall_349
    move-exception v0

    monitor-exit v5
    :try_end_34b
    .catchall {:try_start_346 .. :try_end_34b} :catchall_349

    throw v0

    .line 2522
    .end local v3    # "uid":I
    .end local v4    # "firstPacket":[B
    :sswitch_34c
    :try_start_34c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    .line 2523
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2524
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 2525
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Storing locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for decryption UI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const-string v5, "SystemLocale"

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_383
    .catch Landroid/os/RemoteException; {:try_start_34c .. :try_end_383} :catch_385

    .line 2529
    .end local v0    # "l":Ljava/util/Locale;
    .end local v3    # "service":Landroid/os/IBinder;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    goto/16 :goto_765

    .line 2527
    :catch_385
    move-exception v0

    .line 2528
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    const-string v4, "Error storing locale for decryption UI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2530
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_765

    .line 2510
    :sswitch_38f
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3a2

    .line 2511
    const-string v0, "FinishBooting"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2512
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2513
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2515
    :cond_3a2
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_765

    .line 2516
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_765

    .line 2498
    :sswitch_3ad
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3b0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2499
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v4, v0

    .line 2500
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3d3

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3d3

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3c6
    .catchall {:try_start_3b0 .. :try_end_3c6} :catchall_3d9

    if-eqz v0, :cond_3d3

    .line 2502
    :try_start_3c8
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v5}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_3d1
    .catch Landroid/os/RemoteException; {:try_start_3c8 .. :try_end_3d1} :catch_3d2
    .catchall {:try_start_3c8 .. :try_end_3d1} :catchall_3d9

    .line 2504
    goto :goto_3d3

    .line 2503
    :catch_3d2
    move-exception v0

    .line 2506
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3d3
    :goto_3d3
    :try_start_3d3
    monitor-exit v3
    :try_end_3d4
    .catchall {:try_start_3d3 .. :try_end_3d4} :catchall_3d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2507
    goto/16 :goto_765

    .line 2506
    :catchall_3d9
    move-exception v0

    :try_start_3da
    monitor-exit v3
    :try_end_3db
    .catchall {:try_start_3da .. :try_end_3db} :catchall_3d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2482
    :sswitch_3df
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3e2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2483
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2483
    .local v0, "i":I
    :goto_3ef
    move v4, v0

    .line 2483
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_427

    .line 2484
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2485
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3ff
    .catchall {:try_start_3e2 .. :try_end_3ff} :catchall_42d

    if-eqz v0, :cond_424

    .line 2487
    :try_start_401
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_408
    .catch Landroid/os/RemoteException; {:try_start_401 .. :try_end_408} :catch_409
    .catchall {:try_start_401 .. :try_end_408} :catchall_42d

    .line 2491
    goto :goto_424

    .line 2488
    :catch_409
    move-exception v0

    .line 2489
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_40a
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update preferences for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_424
    :goto_424
    add-int/lit8 v0, v4, -0x1

    .line 2483
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_3ef

    .line 2494
    .end local v0    # "i":I
    :cond_427
    monitor-exit v3
    :try_end_428
    .catchall {:try_start_40a .. :try_end_428} :catchall_42d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2495
    goto/16 :goto_765

    .line 2494
    :catchall_42d
    move-exception v0

    :try_start_42e
    monitor-exit v3
    :try_end_42f
    .catchall {:try_start_42e .. :try_end_42f} :catchall_42d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2476
    :sswitch_433
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)V

    .line 2477
    goto/16 :goto_765

    .line 2462
    :sswitch_43a
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_441

    const/16 v29, 0x1

    goto :goto_443

    :cond_441
    const/16 v29, 0x0

    :goto_443
    move/from16 v0, v29

    .line 2463
    .local v0, "nextState":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v3

    if-eq v3, v0, :cond_765

    .line 2467
    if-eqz v0, :cond_45a

    .line 2468
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_765

    .line 2470
    :cond_45a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_765

    .line 2452
    .end local v0    # "nextState":Z
    :sswitch_463
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2453
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2458
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2459
    goto/16 :goto_765

    .line 2329
    .end local v0    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v3    # "thread":Ljava/lang/Thread;
    :sswitch_471
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/ProxyInfo;

    .line 2330
    .local v3, "proxy":Landroid/net/ProxyInfo;
    const-string v0, ""

    .line 2331
    .local v0, "host":Ljava/lang/String;
    const-string v4, ""

    .line 2332
    .local v4, "port":Ljava/lang/String;
    const-string v5, ""

    .line 2333
    .local v5, "exclList":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2334
    .local v6, "pacFileUrl":Landroid/net/Uri;
    if-eqz v3, :cond_494

    .line 2335
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2336
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2337
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    .line 2338
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    .line 2340
    .end local v0    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    .local v5, "port":Ljava/lang/String;
    .local v6, "exclList":Ljava/lang/String;
    .local v7, "pacFileUrl":Landroid/net/Uri;
    :cond_494
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_49b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2341
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 2341
    .local v0, "i":I
    :goto_4a8
    move v9, v0

    .line 2341
    .end local v0    # "i":I
    .local v9, "i":I
    if-ltz v9, :cond_4e2

    .line 2342
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v10, v0

    .line 2345
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4df

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_4bc
    .catchall {:try_start_49b .. :try_end_4bc} :catchall_4e8

    if-nez v0, :cond_4df

    .line 2347
    :try_start_4be
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4c3
    .catch Landroid/os/RemoteException; {:try_start_4be .. :try_end_4c3} :catch_4c4
    .catchall {:try_start_4be .. :try_end_4c3} :catchall_4e8

    .line 2351
    goto :goto_4df

    .line 2348
    :catch_4c4
    move-exception v0

    .line 2349
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4c5
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to update http proxy for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_4df
    :goto_4df
    add-int/lit8 v0, v9, -0x1

    .line 2341
    .end local v9    # "i":I
    .local v0, "i":I
    goto :goto_4a8

    .line 2354
    .end local v0    # "i":I
    :cond_4e2
    monitor-exit v8
    :try_end_4e3
    .catchall {:try_start_4c5 .. :try_end_4e3} :catchall_4e8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2355
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    goto/16 :goto_765

    .line 2354
    .restart local v3    # "proxy":Landroid/net/ProxyInfo;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "port":Ljava/lang/String;
    .restart local v6    # "exclList":Ljava/lang/String;
    .restart local v7    # "pacFileUrl":Landroid/net/Uri;
    :catchall_4e8
    move-exception v0

    :try_start_4e9
    monitor-exit v8
    :try_end_4ea
    .catchall {:try_start_4e9 .. :try_end_4ea} :catchall_4e8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2315
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_4ee
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4f1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2316
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2316
    .restart local v0    # "i":I
    :goto_4fe
    move v4, v0

    .line 2316
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_534

    .line 2317
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2318
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_50e
    .catchall {:try_start_4f1 .. :try_end_50e} :catchall_53a

    if-eqz v0, :cond_531

    .line 2320
    :try_start_510
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_515
    .catch Landroid/os/RemoteException; {:try_start_510 .. :try_end_515} :catch_516
    .catchall {:try_start_510 .. :try_end_515} :catchall_53a

    .line 2323
    goto :goto_531

    .line 2321
    :catch_516
    move-exception v0

    .line 2322
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_517
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_531
    :goto_531
    add-int/lit8 v0, v4, -0x1

    .line 2316
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_4fe

    .line 2326
    .end local v0    # "i":I
    :cond_534
    monitor-exit v3
    :try_end_535
    .catchall {:try_start_517 .. :try_end_535} :catchall_53a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2327
    goto/16 :goto_765

    .line 2326
    :catchall_53a
    move-exception v0

    :try_start_53b
    monitor-exit v3
    :try_end_53c
    .catchall {:try_start_53b .. :try_end_53c} :catchall_53a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2442
    :sswitch_540
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_543
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2443
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 2445
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->checkProcessCpuUsage(Ljava/util/ArrayList;)V

    .line 2446
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2447
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2448
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2449
    .end local v0    # "nmsg":Landroid/os/Message;
    monitor-exit v3
    :try_end_565
    .catchall {:try_start_543 .. :try_end_565} :catchall_56a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2450
    goto/16 :goto_765

    .line 2449
    :catchall_56a
    move-exception v0

    :try_start_56b
    monitor-exit v3
    :try_end_56c
    .catchall {:try_start_56b .. :try_end_56c} :catchall_56a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2428
    :sswitch_570
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2429
    .local v3, "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_577

    .line 2430
    return-void

    .line 2433
    :cond_577
    :try_start_577
    const-string v0, "android"

    const/16 v4, 0xb

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v0, v8, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_580
    .catch Ljava/lang/RuntimeException; {:try_start_577 .. :try_end_580} :catch_583
    .catch Landroid/os/RemoteException; {:try_start_577 .. :try_end_580} :catch_581

    goto :goto_58b

    .line 2438
    :catch_581
    move-exception v0

    .line 2438
    .end local v3    # "inm":Landroid/app/INotificationManager;
    goto :goto_58c

    .line 2435
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    :catch_583
    move-exception v0

    .line 2436
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2439
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    :goto_58b
    nop

    .line 2440
    :goto_58c
    goto/16 :goto_765

    .line 2383
    :sswitch_58e
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2384
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_595

    .line 2385
    return-void

    .line 2388
    :cond_595
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2389
    .local v4, "root":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2390
    .local v5, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_59f

    .line 2391
    return-void

    .line 2395
    :cond_59f
    :try_start_59f
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    .line 2396
    .local v13, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104029e

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 2397
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 2396
    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 2398
    .local v14, "text":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v0, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2402
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2403
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2404
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2405
    const v7, 0x106016f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2407
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104029f

    .line 2409
    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2408
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2410
    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11
    :try_end_624
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59f .. :try_end_624} :catch_63e

    .line 2415
    .local v11, "notification":Landroid/app/Notification;
    :try_start_624
    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const/16 v10, 0xb

    iget v12, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v6, v3

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_631
    .catch Ljava/lang/RuntimeException; {:try_start_624 .. :try_end_631} :catch_634
    .catch Landroid/os/RemoteException; {:try_start_624 .. :try_end_631} :catch_632
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_624 .. :try_end_631} :catch_63e

    .line 2422
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    :goto_631
    goto :goto_63d

    .line 2421
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v13    # "context":Landroid/content/Context;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_632
    move-exception v0

    .line 2421
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    goto :goto_63d

    .line 2418
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v13    # "context":Landroid/content/Context;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_634
    move-exception v0

    .line 2419
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_635
    const-string v6, "ActivityManager"

    const-string v7, "Error showing notification for heavy-weight app"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_635 .. :try_end_63c} :catch_63e

    .line 2419
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_631

    .line 2425
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    :goto_63d
    goto :goto_646

    .line 2423
    :catch_63e
    move-exception v0

    .line 2424
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ActivityManager"

    const-string v7, "Unable to create context for heavy notification"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    .end local v4    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "process":Lcom/android/server/am/ProcessRecord;
    :goto_646
    goto/16 :goto_765

    .line 2380
    :sswitch_648
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    .line 2381
    goto/16 :goto_765

    .line 2369
    :sswitch_651
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_654
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2370
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 2371
    .local v6, "appId":I
    iget v12, v2, Landroid/os/Message;->arg2:I

    .line 2372
    .local v12, "userId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2373
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2374
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2375
    .local v13, "reason":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2377
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    monitor-exit v3
    :try_end_678
    .catchall {:try_start_654 .. :try_end_678} :catchall_67d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2378
    goto/16 :goto_765

    .line 2377
    :catchall_67d
    move-exception v0

    :try_start_67e
    monitor-exit v3
    :try_end_67f
    .catchall {:try_start_67e .. :try_end_67f} :catchall_67d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2357
    :sswitch_683
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2358
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_68b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2359
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2360
    monitor-exit v4
    :try_end_694
    .catchall {:try_start_68b .. :try_end_694} :catchall_699

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2361
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_765

    .line 2360
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_699
    move-exception v0

    :try_start_69a
    monitor-exit v4
    :try_end_69b
    .catchall {:try_start_69a .. :try_end_69b} :catchall_699

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2301
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_69f
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2302
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2302
    .local v0, "i":I
    :goto_6af
    move v4, v0

    .line 2302
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_6e5

    .line 2303
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2304
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_6bf
    .catchall {:try_start_6a2 .. :try_end_6bf} :catchall_6eb

    if-eqz v0, :cond_6e2

    .line 2306
    :try_start_6c1
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_6c6
    .catch Landroid/os/RemoteException; {:try_start_6c1 .. :try_end_6c6} :catch_6c7
    .catchall {:try_start_6c1 .. :try_end_6c6} :catchall_6eb

    .line 2309
    goto :goto_6e2

    .line 2307
    :catch_6c7
    move-exception v0

    .line 2308
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6c8
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_6e2
    :goto_6e2
    add-int/lit8 v0, v4, -0x1

    .line 2302
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_6af

    .line 2312
    .end local v0    # "i":I
    :cond_6e5
    monitor-exit v3
    :try_end_6e6
    .catchall {:try_start_6c8 .. :try_end_6e6} :catchall_6eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2313
    goto/16 :goto_765

    .line 2312
    :catchall_6eb
    move-exception v0

    :try_start_6ec
    monitor-exit v3
    :try_end_6ed
    .catchall {:try_start_6ec .. :try_end_6ed} :catchall_6eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2269
    :sswitch_6f1
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_731

    .line 2270
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2271
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2272
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemMainLooperReady:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2273
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start service in system too early, now mSystemMainLooperReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemMainLooperReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2276
    return-void

    .line 2279
    .end local v0    # "nmsg":Landroid/os/Message;
    :cond_731
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2280
    goto :goto_765

    .line 2263
    :sswitch_73d
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_740
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2264
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2265
    monitor-exit v3
    :try_end_749
    .catchall {:try_start_740 .. :try_end_749} :catchall_74d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2266
    goto :goto_765

    .line 2265
    :catchall_74d
    move-exception v0

    :try_start_74e
    monitor-exit v3
    :try_end_74f
    .catchall {:try_start_74e .. :try_end_74f} :catchall_74d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2258
    :sswitch_753
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2259
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 2261
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    nop

    .line 2715
    :cond_765
    :goto_765
    return-void

    nop

    nop

    :sswitch_data_768
    .sparse-switch
        0x4 -> :sswitch_753
        0x5 -> :sswitch_73d
        0xc -> :sswitch_6f1
        0xd -> :sswitch_69f
        0x14 -> :sswitch_683
        0x16 -> :sswitch_651
        0x17 -> :sswitch_648
        0x18 -> :sswitch_58e
        0x19 -> :sswitch_570
        0x1b -> :sswitch_540
        0x1c -> :sswitch_4ee
        0x1d -> :sswitch_471
        0x21 -> :sswitch_463
        0x25 -> :sswitch_43a
        0x26 -> :sswitch_433
        0x29 -> :sswitch_3df
        0x2c -> :sswitch_3ad
        0x2d -> :sswitch_38f
        0x2f -> :sswitch_34c
        0x31 -> :sswitch_313
        0x32 -> :sswitch_1e5
        0x33 -> :sswitch_1ae
        0x36 -> :sswitch_1a1
        0x38 -> :sswitch_188
        0x39 -> :sswitch_16c
        0x3a -> :sswitch_165
        0x3d -> :sswitch_124
        0x3f -> :sswitch_d3
        0x40 -> :sswitch_af
        0x41 -> :sswitch_8b
        0x42 -> :sswitch_7e
        0x43 -> :sswitch_5e
        0x45 -> :sswitch_46
        0x58 -> :sswitch_13
    .end sparse-switch
.end method
