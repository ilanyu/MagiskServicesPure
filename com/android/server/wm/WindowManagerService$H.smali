.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_SPECS_PENDING_TIMEOUT:I = 0x66

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_APP_TRANSITION_CANCELLED:I = 0x30

.field public static final NOTIFY_APP_TRANSITION_FINISHED:I = 0x31

.field public static final NOTIFY_APP_TRANSITION_STARTING:I = 0x2f

.field public static final NOTIFY_DOCKED_STACK_APP_TRANSITION_STARTING:I = 0x64

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0x35

.field public static final NOTIFY_KEYGUARD_FLAGS_CHANGED:I = 0x38

.field public static final NOTIFY_KEYGUARD_TRUSTED_CHANGED:I = 0x39

.field public static final PENDING_EXECUTE_APP_TRANSITION_TIMEOUT:I = 0x67

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SET_RUNNING_REMOTE_ANIMATION:I = 0x3b

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final THUMBNAIL_ANIMATION_TIMEOUT:I = 0x65

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_DOCKED_STACK_DIVIDER:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 4978
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 5047
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5ec

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5c4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_5a1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_60a

    packed-switch v0, :pswitch_data_612

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_624

    packed-switch v0, :pswitch_data_632

    packed-switch v0, :pswitch_data_646

    packed-switch v0, :pswitch_data_652

    packed-switch v0, :pswitch_data_66c

    goto/16 :goto_602

    .line 5489
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5490
    const-string v1, "WindowManager"

    const-string v3, "Pending execute app transition overtime."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    if-eqz v1, :cond_46

    .line 5492
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    .line 5493
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5495
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_602

    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5484
    :pswitch_52
    const-string v0, "WindowManager"

    const-string v1, "Fetching specs wasn\'t finished in time."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->finishFetchingAppTransitionSpecs()V

    .line 5487
    goto/16 :goto_602

    .line 5477
    :pswitch_60
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5478
    const-string v1, "WindowManager"

    const-string v2, "Thumbnail animation wasn\'t finished in time."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    .line 5480
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5482
    goto/16 :goto_602

    .line 5480
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5472
    :pswitch_82
    :try_start_82
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_8d

    .line 5473
    goto/16 :goto_602

    :catch_8d
    move-exception v0

    .line 5475
    goto/16 :goto_602

    .line 5463
    :pswitch_90
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5464
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5466
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5468
    goto/16 :goto_602

    .line 5466
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5455
    :pswitch_a9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_ae
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5456
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 5457
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 5459
    :cond_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_ae .. :try_end_c3} :catchall_c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5461
    goto/16 :goto_602

    .line 5459
    :catchall_c8
    move-exception v1

    :try_start_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5451
    :pswitch_ce
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_d9

    goto :goto_da

    :cond_d9
    move v1, v2

    :goto_da
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManagerInternal;->setRunningRemoteAnimation(IZ)V

    .line 5453
    goto/16 :goto_602

    .line 5447
    :pswitch_df
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_ea

    goto :goto_eb

    :cond_ea
    move v1, v2

    :goto_eb
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 5449
    goto/16 :goto_602

    .line 5443
    :pswitch_f0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->notifyKeyguardTrustedChanged()V

    .line 5445
    goto/16 :goto_602

    .line 5439
    :pswitch_f9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    .line 5441
    goto/16 :goto_602

    .line 5424
    :pswitch_106
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5425
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 5426
    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_10b .. :try_end_11e} :catchall_123

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5428
    goto/16 :goto_602

    .line 5426
    :catchall_123
    move-exception v1

    :try_start_124
    monitor-exit v0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5432
    :pswitch_129
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_12e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5433
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5434
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onSeamlessRotationTimeout()V

    .line 5435
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_13b
    .catchall {:try_start_12e .. :try_end_13b} :catchall_140

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5437
    goto/16 :goto_602

    .line 5435
    :catchall_140
    move-exception v1

    :try_start_141
    monitor-exit v0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5420
    :pswitch_146
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_14f

    goto :goto_150

    :cond_14f
    move v1, v2

    :goto_150
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    .line 5422
    goto/16 :goto_602

    .line 5399
    :pswitch_155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5400
    .local v0, "window":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_15e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5412
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5413
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 5414
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 5415
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5416
    monitor-exit v1
    :try_end_177
    .catchall {:try_start_15e .. :try_end_177} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5418
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    goto/16 :goto_602

    .line 5416
    .restart local v0    # "window":Lcom/android/server/wm/WindowState;
    :catchall_17c
    move-exception v2

    :try_start_17d
    monitor-exit v1
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5150
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    :pswitch_182
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5151
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_678

    goto :goto_1dd

    .line 5167
    :pswitch_188
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5168
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "animator_duration_scale"

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5170
    # getter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5167
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$1402(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5171
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_1dd

    .line 5160
    :pswitch_1a7
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5161
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5163
    # getter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)F

    move-result v4

    .line 5160
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$1302(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5164
    goto :goto_1dd

    .line 5153
    :pswitch_1c2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5154
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5156
    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)F

    move-result v4

    .line 5153
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$1202(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5157
    nop

    .line 5175
    :goto_1dd
    goto/16 :goto_602

    .line 5395
    .end local v0    # "mode":I
    :pswitch_1df
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionFinished()V

    .line 5397
    goto/16 :goto_602

    .line 5391
    :pswitch_1e8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionCancelled()V

    .line 5393
    goto/16 :goto_602

    .line 5386
    :pswitch_1f1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    .line 5387
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    .line 5386
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 5389
    goto/16 :goto_602

    .line 5376
    :pswitch_202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_207
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5377
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 5377
    .local v2, "i":I
    :goto_213
    move v1, v2

    .line 5377
    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_226

    .line 5378
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 5379
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->onWindowReplacementTimeout()V

    .line 5377
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v2, v1, -0x1

    .line 5377
    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_213

    .line 5381
    .end local v2    # "i":I
    :cond_226
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5382
    monitor-exit v0
    :try_end_22e
    .catchall {:try_start_207 .. :try_end_22e} :catchall_233

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5384
    goto/16 :goto_602

    .line 5382
    :catchall_233
    move-exception v1

    :try_start_234
    monitor-exit v0
    :try_end_235
    .catchall {:try_start_234 .. :try_end_235} :catchall_233

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5360
    :pswitch_239
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_23e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5361
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v1

    if-eqz v1, :cond_254

    .line 5362
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5364
    :cond_254
    monitor-exit v0
    :try_end_255
    .catchall {:try_start_23e .. :try_end_255} :catchall_25a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5366
    goto/16 :goto_602

    .line 5364
    :catchall_25a
    move-exception v1

    :try_start_25b
    monitor-exit v0
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_25a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5353
    :pswitch_260
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_265
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5354
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 5355
    monitor-exit v0
    :try_end_26d
    .catchall {:try_start_265 .. :try_end_26d} :catchall_279

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5356
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->clearSavedANRState()V

    .line 5358
    goto/16 :goto_602

    .line 5355
    :catchall_279
    move-exception v1

    :try_start_27a
    monitor-exit v0
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5343
    :pswitch_27f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_284
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5345
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    .line 5346
    .local v1, "bootAnimationComplete":Z
    monitor-exit v0
    :try_end_28e
    .catchall {:try_start_284 .. :try_end_28e} :catchall_29a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5347
    if-eqz v1, :cond_298

    .line 5348
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    .line 5351
    .end local v1    # "bootAnimationComplete":Z
    :cond_298
    goto/16 :goto_602

    .line 5346
    :catchall_29a
    move-exception v1

    :try_start_29b
    monitor-exit v0
    :try_end_29c
    .catchall {:try_start_29b .. :try_end_29c} :catchall_29a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5285
    :pswitch_2a0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 5286
    goto/16 :goto_602

    .line 5280
    :pswitch_2a7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2ae

    goto :goto_2af

    :cond_2ae
    move v1, v2

    :goto_2af
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    .line 5281
    goto/16 :goto_602

    .line 5315
    :pswitch_2b4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    .line 5316
    .local v0, "scale":F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 5317
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Session;

    .line 5318
    .local v1, "session":Lcom/android/server/wm/Session;
    if-eqz v1, :cond_2cb

    .line 5320
    :try_start_2c3
    iget-object v2, v1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_2c8
    .catch Landroid/os/RemoteException; {:try_start_2c3 .. :try_end_2c8} :catch_2c9

    goto :goto_2ca

    .line 5321
    :catch_2c9
    move-exception v2

    .line 5322
    .end local v0    # "scale":F
    .end local v1    # "session":Lcom/android/server/wm/Session;
    :goto_2ca
    goto :goto_30f

    .line 5324
    .restart local v0    # "scale":F
    .restart local v1    # "session":Lcom/android/server/wm/Session;
    :cond_2cb
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 5326
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_2d6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5327
    move v3, v2

    .line 5327
    .local v3, "i":I
    :goto_2da
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_2f6

    .line 5328
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Session;

    iget-object v6, v6, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5327
    add-int/lit8 v3, v3, 0x1

    goto :goto_2da

    .line 5331
    .end local v3    # "i":I
    :cond_2f6
    monitor-exit v5
    :try_end_2f7
    .catchall {:try_start_2d6 .. :try_end_2f7} :catchall_311

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5332
    nop

    .line 5332
    .restart local v2    # "i":I
    :goto_2fb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30f

    .line 5334
    :try_start_301
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowSessionCallback;

    invoke-interface {v3, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_30a
    .catch Landroid/os/RemoteException; {:try_start_301 .. :try_end_30a} :catch_30b

    .line 5336
    goto :goto_30c

    .line 5335
    :catch_30b
    move-exception v3

    .line 5332
    :goto_30c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2fb

    .line 5340
    .end local v0    # "scale":F
    .end local v1    # "session":Lcom/android/server/wm/Session;
    .end local v2    # "i":I
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :cond_30f
    :goto_30f
    goto/16 :goto_602

    .line 5331
    .restart local v0    # "scale":F
    .restart local v1    # "session":Lcom/android/server/wm/Session;
    .restart local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :catchall_311
    move-exception v2

    :try_start_312
    monitor-exit v5
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5305
    .end local v0    # "scale":F
    .end local v1    # "session":Lcom/android/server/wm/Session;
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :pswitch_317
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_31c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5306
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 5307
    .local v1, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 5308
    monitor-exit v0
    :try_end_328
    .catchall {:try_start_31c .. :try_end_328} :catchall_332

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5309
    if-eqz v1, :cond_602

    .line 5310
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_602

    .line 5308
    .end local v1    # "callback":Ljava/lang/Runnable;
    :catchall_332
    move-exception v1

    :try_start_333
    monitor-exit v0
    :try_end_334
    .catchall {:try_start_333 .. :try_end_334} :catchall_332

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5299
    :pswitch_338
    :try_start_338
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_343
    .catch Landroid/os/RemoteException; {:try_start_338 .. :try_end_343} :catch_345

    .line 5301
    goto/16 :goto_602

    .line 5300
    :catch_345
    move-exception v0

    .line 5302
    goto/16 :goto_602

    .line 5291
    :pswitch_348
    :try_start_348
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-interface {v0, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_34f
    .catch Landroid/os/RemoteException; {:try_start_348 .. :try_end_34f} :catch_351

    .line 5293
    goto/16 :goto_602

    .line 5292
    :catch_351
    move-exception v0

    .line 5294
    goto/16 :goto_602

    .line 5275
    :pswitch_354
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;II)V

    .line 5276
    goto/16 :goto_602

    .line 5261
    :pswitch_35f
    const/4 v0, 0x0

    .line 5262
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_365
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5263
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5265
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object v0, v2

    .line 5266
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 5267
    monitor-exit v1
    :try_end_393
    .catchall {:try_start_365 .. :try_end_393} :catchall_39d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5268
    if-eqz v0, :cond_602

    .line 5269
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_602

    .line 5267
    :catchall_39d
    move-exception v2

    :try_start_39e
    monitor-exit v1
    :try_end_39f
    .catchall {:try_start_39e .. :try_end_39f} :catchall_39d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5256
    .end local v0    # "callback":Ljava/lang/Runnable;
    :pswitch_3a3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 5257
    goto/16 :goto_602

    .line 5251
    :pswitch_3aa
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 5252
    goto/16 :goto_602

    .line 5241
    :pswitch_3b1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_602

    .line 5242
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3bc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5243
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 5244
    monitor-exit v0
    :try_end_3c4
    .catchall {:try_start_3bc .. :try_end_3c4} :catchall_3ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5245
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_602

    .line 5244
    :catchall_3ce
    move-exception v1

    :try_start_3cf
    monitor-exit v0
    :try_end_3d0
    .catchall {:try_start_3cf .. :try_end_3d0} :catchall_3ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5226
    :pswitch_3d4
    const/16 v0, 0x12

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5228
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_602

    .line 5229
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    goto/16 :goto_602

    .line 5204
    .end local v0    # "displayId":I
    :pswitch_3f4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3f9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5205
    const-string v2, "WindowManager"

    const-string v3, "App freeze timeout expired."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5207
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 5207
    .restart local v2    # "i":I
    :goto_411
    move v1, v2

    .line 5207
    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_424

    .line 5208
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 5207
    add-int/lit8 v2, v1, -0x1

    .line 5207
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_411

    .line 5210
    .end local v2    # "i":I
    :cond_424
    monitor-exit v0
    :try_end_425
    .catchall {:try_start_3f9 .. :try_end_425} :catchall_42a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5211
    goto/16 :goto_602

    .line 5210
    :catchall_42a
    move-exception v1

    :try_start_42b
    monitor-exit v0
    :try_end_42c
    .catchall {:try_start_42b .. :try_end_42c} :catchall_42a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5199
    :pswitch_430
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    .line 5200
    goto/16 :goto_602

    .line 5179
    :pswitch_437
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_43c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5182
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_46c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v1

    if-eqz v1, :cond_454

    goto :goto_46c

    .line 5190
    :cond_454
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_45f

    .line 5191
    monitor-exit v0
    :try_end_45b
    .catchall {:try_start_43c .. :try_end_45b} :catchall_478

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5193
    :cond_45f
    :try_start_45f
    monitor-exit v0
    :try_end_460
    .catchall {:try_start_45f .. :try_end_460} :catchall_478

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5194
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 5195
    goto/16 :goto_602

    .line 5185
    :cond_46c
    :goto_46c
    const/16 v1, 0xf

    const-wide/16 v2, 0x7d0

    :try_start_470
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5186
    monitor-exit v0
    :try_end_474
    .catchall {:try_start_470 .. :try_end_474} :catchall_478

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5193
    :catchall_478
    move-exception v1

    :try_start_479
    monitor-exit v0
    :try_end_47a
    .catchall {:try_start_479 .. :try_end_47a} :catchall_478

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5138
    :pswitch_47e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5139
    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    .line 5138
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5140
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5142
    # getter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    .line 5140
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5143
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5144
    # getter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    .line 5143
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5145
    goto/16 :goto_602

    .line 5123
    :pswitch_4bb
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_4c0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5124
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-nez v1, :cond_4e1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 5125
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4ef

    .line 5130
    :cond_4e1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 5131
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5133
    :cond_4ef
    monitor-exit v0
    :try_end_4f0
    .catchall {:try_start_4c0 .. :try_end_4f0} :catchall_4f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5134
    goto/16 :goto_602

    .line 5133
    :catchall_4f5
    move-exception v1

    :try_start_4f6
    monitor-exit v0
    :try_end_4f7
    .catchall {:try_start_4f6 .. :try_end_4f7} :catchall_4f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5101
    :pswitch_4fb
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_500
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5102
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 5103
    .local v1, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 5104
    monitor-exit v0
    :try_end_511
    .catchall {:try_start_500 .. :try_end_511} :catchall_52d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5107
    .local v0, "N":I
    move v3, v2

    .line 5107
    .restart local v3    # "i":I
    :goto_519
    if-ge v3, v0, :cond_52b

    .line 5110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 5107
    add-int/lit8 v3, v3, 0x1

    goto :goto_519

    .line 5112
    .end local v0    # "N":I
    .end local v1    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "i":I
    :cond_52b
    goto/16 :goto_602

    .line 5104
    :catchall_52d
    move-exception v1

    :try_start_52e
    monitor-exit v0
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_52d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5052
    :pswitch_533
    const/4 v0, 0x0

    .line 5054
    .local v0, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_539
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5056
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_553

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5057
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_553

    .line 5058
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object v0, v4

    .line 5061
    :cond_553
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5062
    .local v4, "lastFocus":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 5063
    .local v5, "newFocus":Lcom/android/server/wm/WindowState;
    if-ne v4, v5, :cond_562

    .line 5065
    monitor-exit v3
    :try_end_55e
    .catchall {:try_start_539 .. :try_end_55e} :catchall_59b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5067
    :cond_562
    :try_start_562
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v6, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5070
    if-eqz v5, :cond_578

    if-eqz v4, :cond_578

    .line 5071
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-nez v6, :cond_578

    .line 5073
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5074
    const/4 v4, 0x0

    .line 5076
    :cond_578
    monitor-exit v3
    :try_end_579
    .catchall {:try_start_562 .. :try_end_579} :catchall_59b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object v3, v4

    .line 5076
    .end local v4    # "lastFocus":Lcom/android/server/wm/WindowState;
    .local v3, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object v4, v5

    .line 5080
    .end local v5    # "newFocus":Lcom/android/server/wm/WindowState;
    .local v4, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_583

    .line 5081
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 5086
    :cond_583
    if-eqz v4, :cond_591

    .line 5088
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 5089
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)V

    .line 5092
    :cond_591
    if-eqz v3, :cond_59a

    .line 5094
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 5096
    .end local v0    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v3    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v4    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_59a
    goto :goto_602

    .line 5076
    .restart local v0    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :catchall_59b
    move-exception v1

    :try_start_59c
    monitor-exit v3
    :try_end_59d
    .catchall {:try_start_59c .. :try_end_59d} :catchall_59b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5368
    .end local v0    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_5a1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5369
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5370
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 5371
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 5372
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_5ba
    .catchall {:try_start_5a6 .. :try_end_5ba} :catchall_5be

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5374
    goto :goto_602

    .line 5372
    :catchall_5be
    move-exception v1

    :try_start_5bf
    monitor-exit v0
    :try_end_5c0
    .catchall {:try_start_5bf .. :try_end_5c0} :catchall_5be

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5215
    :cond_5c4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5c9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5216
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_5e1

    .line 5217
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 5218
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "client-timeout"

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5221
    :cond_5e1
    monitor-exit v0
    :try_end_5e2
    .catchall {:try_start_5c9 .. :try_end_5e2} :catchall_5e6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5222
    goto :goto_602

    .line 5221
    :catchall_5e6
    move-exception v1

    :try_start_5e7
    monitor-exit v0
    :try_end_5e8
    .catchall {:try_start_5e7 .. :try_end_5e8} :catchall_5e6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5116
    :cond_5ec
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5f1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5117
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 5118
    monitor-exit v0
    :try_end_5fe
    .catchall {:try_start_5f1 .. :try_end_5fe} :catchall_603

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5119
    nop

    .line 5503
    :cond_602
    :goto_602
    return-void

    .line 5118
    :catchall_603
    move-exception v1

    :try_start_604
    monitor-exit v0
    :try_end_605
    .catchall {:try_start_604 .. :try_end_605} :catchall_603

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_60a
    .packed-switch 0x2
        :pswitch_533
        :pswitch_4fb
    .end packed-switch

    :pswitch_data_612
    .packed-switch 0xd
        :pswitch_4bb
        :pswitch_47e
        :pswitch_437
        :pswitch_430
        :pswitch_3f4
        :pswitch_3d4
        :pswitch_3b1
    .end packed-switch

    :pswitch_data_624
    .packed-switch 0x16
        :pswitch_3aa
        :pswitch_3a3
        :pswitch_35f
        :pswitch_354
        :pswitch_348
    .end packed-switch

    :pswitch_data_632
    .packed-switch 0x20
        :pswitch_338
        :pswitch_317
        :pswitch_2b4
        :pswitch_2a7
        :pswitch_2a0
        :pswitch_27f
        :pswitch_260
        :pswitch_239
    .end packed-switch

    :pswitch_data_646
    .packed-switch 0x2e
        :pswitch_202
        :pswitch_1f1
        :pswitch_1e8
        :pswitch_1df
    .end packed-switch

    :pswitch_data_652
    .packed-switch 0x33
        :pswitch_182
        :pswitch_155
        :pswitch_146
        :pswitch_129
        :pswitch_106
        :pswitch_f9
        :pswitch_f0
        :pswitch_df
        :pswitch_ce
        :pswitch_a9
        :pswitch_90
    .end packed-switch

    :pswitch_data_66c
    .packed-switch 0x64
        :pswitch_82
        :pswitch_60
        :pswitch_52
        :pswitch_28
    .end packed-switch

    :pswitch_data_678
    .packed-switch 0x0
        :pswitch_1c2
        :pswitch_1a7
        :pswitch_188
    .end packed-switch
.end method
