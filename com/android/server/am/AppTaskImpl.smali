.class Lcom/android/server/am/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# instance fields
.field private mCallingUid:I

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .line 43
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 45
    iput p2, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    .line 46
    iput p3, p0, Lcom/android/server/am/AppTaskImpl;->mCallingUid:I

    .line 47
    return-void
.end method

.method private checkCaller()V
    .registers 4

    .line 50
    iget v0, p0, Lcom/android/server/am/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 54
    return-void

    .line 51
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 9

    .line 58
    invoke-direct {p0}, Lcom/android/server/am/AppTaskImpl;->checkCaller()V

    .line 60
    iget-object v0, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_44

    .line 64
    .local v1, "origId":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "finish-and-remove-task"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3f

    if-eqz v3, :cond_26

    .line 69
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .line 71
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    return-void

    .line 66
    .restart local v1    # "origId":J
    :cond_26
    :try_start_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3f

    .line 69
    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 71
    .end local v1    # "origId":J
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .line 76
    invoke-direct {p0}, Lcom/android/server/am/AppTaskImpl;->checkCaller()V

    .line 78
    iget-object v0, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4a

    .line 81
    .local v1, "origId":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 83
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_2c

    .line 86
    iget-object v4, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_45

    .line 88
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_4a

    .line 86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 84
    :cond_2c
    :try_start_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_45

    .line 88
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_45
    move-exception v3

    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 90
    .end local v1    # "origId":J
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveToFront()V
    .registers 9

    .line 95
    invoke-direct {p0}, Lcom/android/server/am/AppTaskImpl;->checkCaller()V

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 98
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 99
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 101
    .local v2, "origId":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2e

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 102
    iget-object v5, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/am/SafeActivityOptions;)I

    .line 104
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    return-void

    .line 104
    :catchall_28
    move-exception v5

    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 106
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setExcludeFromRecents(Z)V
    .registers 9
    .param p1, "exclude"    # Z

    .line 142
    invoke-direct {p0}, Lcom/android/server/am/AppTaskImpl;->checkCaller()V

    .line 144
    iget-object v0, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_58

    .line 147
    .local v1, "origId":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 149
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_3a

    .line 152
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 153
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_26

    .line 154
    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_31

    .line 156
    :cond_26
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x800001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_53

    .line 160
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_31
    :try_start_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    nop

    .line 162
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 163
    return-void

    .line 150
    .restart local v1    # "origId":J
    .restart local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_53

    .line 160
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_53
    move-exception v3

    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 162
    .end local v1    # "origId":J
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 13
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "bOptions"    # Landroid/os/Bundle;

    .line 113
    invoke-direct {p0}, Lcom/android/server/am/AppTaskImpl;->checkCaller()V

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 118
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 119
    iget-object v2, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 121
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_64

    .line 124
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 125
    .local v3, "appThread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_4d

    .line 128
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_7d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    iget-object v1, p0, Lcom/android/server/am/AppTaskImpl;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v1

    const-string v4, "AppTaskImpl"

    invoke-virtual {v1, p3, v4}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p4}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p5}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v1

    .line 130
    return v1

    .line 126
    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad app thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v3    # "appThread":Landroid/app/IApplicationThread;
    :cond_64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_4d .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
