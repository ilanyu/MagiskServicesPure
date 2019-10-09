.class public Lcom/android/server/wm/DisplayWindowController;
.super Lcom/android/server/wm/WindowContainerController;
.source "DisplayWindowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/DisplayContent;",
        "Lcom/android/server/wm/WindowContainerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisplayId:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowContainerListener;)V
    .registers 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "listener"    # Lcom/android/server/wm/WindowContainerListener;

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_55

    .line 44
    .local v1, "callingIdentity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_50

    .line 46
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    nop

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v3, :cond_29

    .line 53
    .end local v1    # "callingIdentity":J
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    return-void

    .line 50
    .restart local v1    # "callingIdentity":J
    :cond_29
    :try_start_29
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to add display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v6, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    .line 51
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :catchall_50
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 53
    .end local v1    # "callingIdentity":J
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method public continueUpdateImeTarget()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 132
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_13

    .line 133
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 135
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 136
    return-void

    .line 135
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public deferUpdateImeTarget()V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 120
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_13

    .line 121
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 123
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 124
    return-void

    .line 123
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isStackExisted(I)Z
    .registers 6
    .param p1, "windowingMode"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 59
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_14

    .line 63
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 64
    const/4 v1, 0x1

    return v1

    .line 66
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 88
    return-void
.end method

.method public positionChildAt(Lcom/android/server/wm/StackWindowController;I)V
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/StackWindowController;
    .param p2, "position"    # I

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 100
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 104
    :cond_f
    if-eqz p1, :cond_26

    :try_start_11
    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_16

    goto :goto_26

    .line 109
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;)V

    .line 110
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 111
    return-void

    .line 107
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 110
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 76
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 78
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 79
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 80
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    return-void

    .line 80
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{DisplayWindowController displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
