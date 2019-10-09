.class Lcom/android/server/wm/AppWindowContainerController$1;
.super Ljava/lang/Object;
.source "AppWindowContainerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 127
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_13

    .line 138
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 142
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 143
    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-eqz v1, :cond_38

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_38

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_38

    .line 147
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 148
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 153
    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 156
    .local v3, "startingData":Lcom/android/server/wm/StartingData;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    move-object v1, v4

    .line 157
    .local v1, "container":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 159
    if-nez v3, :cond_57

    .line 164
    return-void

    .line 171
    :cond_57
    move-object v0, v2

    .line 173
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :try_start_58
    invoke-virtual {v3, v1}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v4
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5e

    move-object v0, v4

    .line 176
    goto :goto_66

    .line 174
    :catch_5e
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception when adding starting window"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_66
    if-eqz v0, :cond_93

    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "abort":Z
    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 182
    iget-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v6, :cond_7d

    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v6, :cond_7a

    goto :goto_7d

    .line 191
    :cond_7a
    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_83

    .line 187
    :cond_7d
    :goto_7d
    iput-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 188
    iput-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 189
    const/4 v2, 0x1

    .line 198
    .end local v4    # "abort":Z
    .local v2, "abort":Z
    move v4, v2

    .end local v2    # "abort":Z
    .restart local v4    # "abort":Z
    :goto_83
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_8d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    if-eqz v4, :cond_93

    .line 200
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    .end local v4    # "abort":Z
    goto :goto_93

    .line 198
    .restart local v4    # "abort":Z
    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 205
    .end local v4    # "abort":Z
    :cond_93
    :goto_93
    return-void

    .line 157
    .end local v0    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .end local v1    # "container":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "startingData":Lcom/android/server/wm/StartingData;
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
