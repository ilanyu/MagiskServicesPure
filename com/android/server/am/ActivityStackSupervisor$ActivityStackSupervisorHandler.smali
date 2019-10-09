.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4919
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4920
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4921
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "processPausingActivities"    # Z

    .line 4924
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4925
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_11

    :cond_10
    move-object v3, v2

    :goto_11
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 4927
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4928
    return-void

    .line 4927
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 4932
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x70

    if-eq v0, v1, :cond_10a

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_12c

    packed-switch v0, :pswitch_data_140

    goto/16 :goto_125

    .line 4942
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4943
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_21
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_38

    .line 4944
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4945
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 4943
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_21

    .line 4948
    .end local v3    # "i":I
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4949
    goto/16 :goto_125

    .line 4948
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4934
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4935
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_55
    if-ltz v1, :cond_67

    .line 4936
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4937
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->updateMultiWindowMode()V

    .line 4935
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_55

    .line 4939
    .end local v1    # "i":I
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_6d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4940
    goto/16 :goto_125

    .line 4939
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4995
    :pswitch_73
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4996
    goto/16 :goto_125

    .line 4992
    :pswitch_7c
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4993
    goto/16 :goto_125

    .line 4989
    :pswitch_85
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4990
    goto/16 :goto_125

    .line 4977
    :pswitch_8e
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_93
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4978
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 4979
    const-string v1, "ActivityManager"

    const-string v2, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4986
    :cond_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_93 .. :try_end_af} :catchall_b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4987
    goto :goto_125

    .line 4986
    :catchall_b3
    move-exception v1

    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4969
    :pswitch_b9
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_be
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4970
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 4971
    const-string v2, "ActivityManager"

    const-string v3, "Sleep timeout!  Sleeping now."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 4974
    :cond_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_be .. :try_end_d8} :catchall_dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4975
    goto :goto_125

    .line 4974
    :catchall_dc
    move-exception v1

    :try_start_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4964
    :pswitch_e2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_e7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4965
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4966
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_f4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4967
    goto :goto_125

    .line 4966
    :catchall_f4
    move-exception v1

    :try_start_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4960
    :pswitch_fa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;Z)V

    .line 4962
    goto :goto_125

    .line 4955
    :pswitch_102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;Z)V

    .line 4957
    goto :goto_125

    .line 4998
    :cond_10a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_10f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4999
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5000
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_121

    .line 5001
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V

    .line 5003
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_10f .. :try_end_122} :catchall_126

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5007
    :goto_125
    return-void

    .line 5003
    :catchall_126
    move-exception v1

    :try_start_127
    monitor-exit v0
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_data_12c
    .packed-switch 0x64
        :pswitch_102
        :pswitch_fa
        :pswitch_e2
        :pswitch_b9
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_73
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x72
        :pswitch_44
        :pswitch_10
    .end packed-switch
.end method
