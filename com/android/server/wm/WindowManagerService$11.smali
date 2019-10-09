.class Lcom/android/server/wm/WindowManagerService$11;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$watcherBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 4294
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$11;->val$watcherBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 4297
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4298
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 4299
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$11;->val$watcherBinder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_3f

    .line 4300
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 4301
    .local v3, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 4302
    .local v4, "binder":Landroid/os/IBinder;
    if-eqz v4, :cond_3d

    .line 4303
    invoke-interface {v4, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4305
    :cond_3d
    add-int/lit8 v2, v2, -0x1

    .line 4298
    .end local v3    # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v4    # "binder":Landroid/os/IBinder;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4308
    .end local v2    # "i":I
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4309
    return-void

    .line 4308
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
