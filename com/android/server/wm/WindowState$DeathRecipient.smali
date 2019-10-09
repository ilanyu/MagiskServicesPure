.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 2473
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowState;
    .param p2, "x1"    # Lcom/android/server/wm/WindowState$1;

    .line 2473
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 2477
    const/4 v0, 0x0

    .line 2478
    .local v0, "resetSplitScreenResizing":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_9d

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2479
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v4, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2480
    .local v2, "win":Lcom/android/server/wm/WindowState;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIN DEATH: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    if-eqz v2, :cond_6e

    .line 2482
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2483
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_51

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v4, v2, :cond_51

    .line 2484
    iget-object v4, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskSnapshotController;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 2486
    :cond_51
    iget-object v4, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    # invokes: Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z
    invoke-static {v4}, Lcom/android/server/wm/WindowState;->access$200(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    # invokes: Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowState;->access$300(Lcom/android/server/wm/WindowState;Z)V

    .line 2487
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_6d

    .line 2492
    nop

    .line 2493
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 2494
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_6c

    .line 2495
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->resetDockedStackToMiddle()V

    .line 2497
    :cond_6c
    const/4 v0, 0x1

    .line 2499
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6d
    goto :goto_80

    :cond_6e
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_80

    .line 2500
    const-string v3, "WindowManager"

    const-string v4, "!!! LEAK !!! Window removed but surface still valid."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 2503
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_80
    :goto_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_8 .. :try_end_81} :catchall_97

    :try_start_81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_84} :catch_9d

    .line 2504
    if-eqz v0, :cond_96

    .line 2508
    :try_start_86
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, v5}, Landroid/app/IActivityManager;->setSplitScreenResizing(Z)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_8f} :catch_9d

    .line 2512
    goto :goto_96

    .line 2509
    :catch_90
    move-exception v1

    .line 2511
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_91
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_96} :catch_9d

    .line 2516
    .end local v0    # "resetSplitScreenResizing":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_96
    :goto_96
    goto :goto_9e

    .line 2503
    .restart local v0    # "resetSplitScreenResizing":Z
    :catchall_97
    move-exception v2

    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 2514
    .end local v0    # "resetSplitScreenResizing":Z
    :catch_9d
    move-exception v0

    .line 2517
    :goto_9e
    return-void
.end method
