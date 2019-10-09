.class public Lcom/android/server/wm/PinnedStackWindowController;
.super Lcom/android/server/wm/StackWindowController;
.source "PinnedStackWindowController.java"


# instance fields
.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/PinnedStackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public static synthetic lambda$animateResizePinnedStack$0(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 16
    .param p1, "fromBounds"    # Landroid/graphics/Rect;
    .param p2, "finalToBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "finalSchedulePipModeChangedState"    # I
    .param p5, "fromFullscreen"    # Z
    .param p6, "toFullscreen"    # Z

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    .line 122
    return-void

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/BoundsAnimationTarget;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 127
    return-void
.end method


# virtual methods
.method public animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 22
    .param p1, "toBounds"    # Landroid/graphics/Rect;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "fromFullscreen"    # Z

    move-object/from16 v9, p0

    .line 81
    iget-object v10, v9, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 82
    iget-object v0, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_9b

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v0, "fromBounds":Landroid/graphics/Rect;
    iget-object v1, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_a7

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "schedulePipModeChangedState":I
    const/4 v2, 0x1

    if-nez p1, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    move v11, v4

    .line 94
    .local v11, "toFullscreen":Z
    if-eqz v11, :cond_63

    .line 95
    if-nez p4, :cond_55

    .line 99
    const/4 v1, 0x1

    .line 101
    :try_start_25
    iget-object v4, v9, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v2, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 103
    iget-object v2, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 115
    .end local v1    # "schedulePipModeChangedState":I
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .local v12, "toBounds":Landroid/graphics/Rect;
    .local v13, "schedulePipModeChangedState":I
    :goto_3b
    move v13, v1

    move-object v12, v2

    goto :goto_69

    .line 108
    .end local v12    # "toBounds":Landroid/graphics/Rect;
    .end local v13    # "schedulePipModeChangedState":I
    .restart local v1    # "schedulePipModeChangedState":I
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_3e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_5d

    .line 109
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .local v2, "toBounds":Landroid/graphics/Rect;
    :try_start_43
    iget-object v3, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4f

    goto :goto_3b

    .line 128
    .end local v0    # "fromBounds":Landroid/graphics/Rect;
    .end local v1    # "schedulePipModeChangedState":I
    .end local v11    # "toFullscreen":Z
    :catchall_4f
    move-exception v0

    move-object/from16 v14, p2

    move-object v3, v2

    goto/16 :goto_ac

    .line 96
    .end local v2    # "toBounds":Landroid/graphics/Rect;
    .restart local v0    # "fromBounds":Landroid/graphics/Rect;
    .restart local v1    # "schedulePipModeChangedState":I
    .restart local v11    # "toFullscreen":Z
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_55
    :try_start_55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    .line 128
    .end local v0    # "fromBounds":Landroid/graphics/Rect;
    .end local v1    # "schedulePipModeChangedState":I
    .end local v11    # "toFullscreen":Z
    :catchall_5d
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v14, p2

    goto :goto_ac

    .line 111
    .restart local v0    # "fromBounds":Landroid/graphics/Rect;
    .restart local v1    # "schedulePipModeChangedState":I
    .restart local v11    # "toFullscreen":Z
    :cond_63
    if-eqz p4, :cond_66

    .line 112
    const/4 v1, 0x2

    .line 115
    .end local v1    # "schedulePipModeChangedState":I
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .restart local v12    # "toBounds":Landroid/graphics/Rect;
    .restart local v13    # "schedulePipModeChangedState":I
    :cond_66
    move-object/from16 v12, p1

    move v13, v1

    :goto_69
    :try_start_69
    iget-object v1, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_96

    move-object/from16 v14, p2

    :try_start_6f
    invoke-virtual {v1, v14, v12, v11}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 117
    move-object v4, v12

    .line 118
    .local v4, "finalToBounds":Landroid/graphics/Rect;
    move v6, v13

    .line 120
    .local v6, "finalSchedulePipModeChangedState":I
    iget-object v1, v9, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v7, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;

    move-object v1, v7

    move-object v2, v9

    move-object v3, v0

    move/from16 v5, p3

    move-object v15, v0

    move-object v0, v7

    move/from16 v7, p4

    .end local v0    # "fromBounds":Landroid/graphics/Rect;
    .local v15, "fromBounds":Landroid/graphics/Rect;
    move-object v9, v8

    move v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;-><init>(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .end local v4    # "finalToBounds":Landroid/graphics/Rect;
    .end local v6    # "finalSchedulePipModeChangedState":I
    .end local v11    # "toFullscreen":Z
    .end local v13    # "schedulePipModeChangedState":I
    .end local v15    # "fromBounds":Landroid/graphics/Rect;
    monitor-exit v10
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    return-void

    .line 128
    :catchall_94
    move-exception v0

    goto :goto_99

    :catchall_96
    move-exception v0

    move-object/from16 v14, p2

    .end local v12    # "toBounds":Landroid/graphics/Rect;
    .local v3, "toBounds":Landroid/graphics/Rect;
    :goto_99
    move-object v3, v12

    goto :goto_ac

    .line 83
    .end local v3    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_9b
    move-object/from16 v14, p2

    :try_start_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pinned stack container not found :("

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_a5

    .line 128
    :catchall_a5
    move-exception v0

    goto :goto_aa

    :catchall_a7
    move-exception v0

    move-object/from16 v14, p2

    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .restart local v3    # "toBounds":Landroid/graphics/Rect;
    :goto_aa
    move-object/from16 v3, p1

    :goto_ac
    :try_start_ac
    monitor-exit v10
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_b1
    move-exception v0

    goto :goto_ac
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 178
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "aspectRatio"    # F
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_12

    goto :goto_42

    .line 55
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 56
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_21

    .line 57
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 60
    :cond_21
    nop

    .line 61
    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    .line 62
    .local v2, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-nez p2, :cond_2d

    .line 64
    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->getDefaultOrLastSavedBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object p2, v3

    .line 67
    :cond_2d
    invoke-virtual {v2, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 68
    const/4 v3, 0x1

    invoke-virtual {v2, p2, p1, v3}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v3

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 71
    :cond_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p2

    .line 52
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 73
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 187
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 195
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 196
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPictureInPictureActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_11

    goto :goto_25

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 168
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 169
    return-void

    .line 164
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 168
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPictureInPictureAspectRatio(F)V
    .registers 8
    .param p1, "aspectRatio"    # F

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_11

    goto :goto_62

    .line 140
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 141
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 143
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5d

    .line 144
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 148
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 151
    :cond_4e
    nop

    .line 152
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 153
    nop

    .line 151
    move v2, p1

    goto :goto_5a

    .line 153
    :cond_58
    const/high16 v2, -0x40800000    # -1.0f

    .line 151
    :goto_5a
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 155
    .end local v1    # "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 156
    return-void

    .line 137
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 155
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .registers 4
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowListener;

    .line 208
    .local v0, "listener":Lcom/android/server/wm/PinnedStackWindowListener;
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/PinnedStackWindowListener;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 211
    .end local v0    # "listener":Lcom/android/server/wm/PinnedStackWindowListener;
    :cond_b
    return-void
.end method
