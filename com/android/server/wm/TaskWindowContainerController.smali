.class public Lcom/android/server/wm/TaskWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "TaskWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/Task;",
        "Lcom/android/server/wm/TaskWindowContainerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;)V
    .registers 23
    .param p1, "taskId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/TaskWindowContainerListener;
    .param p3, "stackController"    # Lcom/android/server/wm/StackWindowController;
    .param p4, "userId"    # I
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "resizeMode"    # I
    .param p7, "supportsPictureInPicture"    # Z
    .param p8, "toTop"    # Z
    .param p9, "showForAllUsers"    # Z
    .param p10, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 55
    nop

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v11

    .line 55
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/WindowManagerService;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/WindowManagerService;)V
    .registers 27
    .param p1, "taskId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/TaskWindowContainerListener;
    .param p3, "stackController"    # Lcom/android/server/wm/StackWindowController;
    .param p4, "userId"    # I
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "resizeMode"    # I
    .param p7, "supportsPictureInPicture"    # Z
    .param p8, "toTop"    # Z
    .param p9, "showForAllUsers"    # Z
    .param p10, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p11, "service"    # Lcom/android/server/wm/WindowManagerService;

    move-object v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p8

    .line 64
    move-object/from16 v11, p11

    move-object/from16 v12, p2

    invoke-direct {v8, v12, v11}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 65
    move/from16 v13, p1

    iput v13, v8, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    .line 66
    new-instance v0, Lcom/android/server/wm/TaskWindowContainerController$H;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskWindowContainerController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    .line 68
    iget-object v14, v8, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v14

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 72
    iget-object v0, v9, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 73
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_67

    .line 77
    const/16 v1, 0x7919

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 78
    move-object v1, v8

    move v2, v13

    move-object v3, v0

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskWindowContainerController;->createTask(ILcom/android/server/wm/TaskStack;IIZLandroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_80

    .line 80
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_5b

    const v2, 0x7fffffff

    goto :goto_5d

    :cond_5b
    const/high16 v2, -0x80000000

    .line 83
    .local v2, "position":I
    :goto_5d
    move/from16 v3, p9

    :try_start_5f
    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 84
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "position":I
    monitor-exit v14
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    return-void

    .line 74
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_67
    move/from16 v3, p9

    :try_start_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskWindowContainerController: invalid stack="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_80
    move-exception v0

    move/from16 v3, p9

    :goto_83
    monitor-exit v14
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_88
    move-exception v0

    goto :goto_83
.end method


# virtual methods
.method public cancelWindowTransition()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_2c

    .line 195
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelWindowTransition: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 198
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 199
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 200
    return-void

    .line 199
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createTask(ILcom/android/server/wm/TaskStack;IIZLandroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task;
    .registers 18
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "resizeMode"    # I
    .param p5, "supportsPictureInPicture"    # Z
    .param p6, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    new-instance v9, Lcom/android/server/wm/Task;

    move-object v10, p0

    iget-object v4, v10, Lcom/android/server/wm/TaskWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v9

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/Task;-><init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskWindowContainerController;)V

    return-object v9
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 171
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 173
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 174
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    return-void

    .line 174
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V
    .registers 9
    .param p1, "childController"    # Lcom/android/server/wm/AppWindowContainerController;
    .param p2, "position"    # I

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 112
    iget-object v1, p1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 113
    .local v1, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 114
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to position of non-existing app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 119
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/Task;

    .line 120
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_38

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v1, v3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    .line 124
    .end local v1    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 125
    return-void

    .line 121
    .restart local v1    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "task":Lcom/android/server/wm/Task;
    :cond_38
    :try_start_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "positionChildAt: invalid task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    .end local v1    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtTop(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 3
    .param p1, "childController"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 107
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    .line 108
    return-void
.end method

.method public removeContainer()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 99
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 101
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 102
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 103
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    return-void

    .line 103
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(Lcom/android/server/wm/StackWindowController;IZ)V
    .registers 9
    .param p1, "stackController"    # Lcom/android/server/wm/StackWindowController;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 134
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 136
    :cond_f
    :try_start_f
    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 137
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2c

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskStack;IZ)V

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 143
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    return-void

    .line 138
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskWindowContainerController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method

.method requestResize(Landroid/graphics/Rect;I)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public resize(ZZ)V
    .registers 7
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_2e

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 164
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 165
    return-void

    .line 157
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setResizeable(I)V
    .registers 4
    .param p1, "resizeMode"    # I

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_11

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setResizeable(I)V

    .line 151
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 152
    return-void

    .line 151
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_2d

    .line 205
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskDescription: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 208
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 209
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    return-void

    .line 209
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskDockedResizing(Z)V
    .registers 6
    .param p1, "resizing"    # Z

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_2d

    .line 185
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskDockedResizing: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 188
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 189
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 190
    return-void

    .line 189
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{TaskWindowContainerController taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
