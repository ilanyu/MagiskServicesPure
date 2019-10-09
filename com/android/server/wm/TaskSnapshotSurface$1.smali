.class Lcom/android/server/wm/TaskSnapshotSurface$1;
.super Landroid/os/Handler;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 414
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 418
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_20

    .line 421
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 422
    .local v0, "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    # getter for: Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 423
    # getter for: Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z

    move-result v2

    .line 424
    .local v2, "hasDrawn":Z
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 425
    if-eqz v2, :cond_20

    .line 426
    # invokes: Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 430
    .end local v0    # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v2    # "hasDrawn":Z
    :cond_20
    :goto_20
    return-void

    .line 424
    .restart local v0    # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
