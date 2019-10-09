.class Lcom/android/server/wm/WindowContainerController;
.super Ljava/lang/Object;
.source "WindowContainerController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        "I::",
        "Lcom/android/server/wm/WindowContainerListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# instance fields
.field mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mListener:Lcom/android/server/wm/WindowContainerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field final mRoot:Lcom/android/server/wm/RootWindowContainer;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/android/server/wm/WindowManagerService;",
            ")V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "listener":Lcom/android/server/wm/WindowContainerListener;, "TI;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    .line 44
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    nop

    :cond_1d
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 47
    return-void
.end method


# virtual methods
.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 76
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 78
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 80
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    return-void

    .line 81
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeContainer()V
    .registers 3

    .line 63
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    .line 64
    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 68
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowContainerListener;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 72
    :cond_16
    return-void
.end method

.method setContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_30

    if-nez p1, :cond_7

    goto :goto_30

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Already set to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_30
    :goto_30
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_3f

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowContainerListener;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 58
    :cond_3f
    return-void
.end method
