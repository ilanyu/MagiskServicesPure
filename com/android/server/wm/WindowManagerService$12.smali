.class Lcom/android/server/wm/WindowManagerService$12;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/wm/MiuiGestureController$GestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->initMiuiGestureController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 8223
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8328
    if-eqz p1, :cond_7

    .line 8329
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 8330
    .local v0, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_8
    if-eqz v0, :cond_d

    .line 8331
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->ensureActivitiesVisible()V

    .line 8333
    :cond_d
    return-void
.end method

.method public getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8292
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 8293
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 8294
    .local v1, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->getMiuiLaunchIconInfo()Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;

    move-result-object v0

    nop

    :cond_10
    return-object v0
.end method

.method public isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8308
    const/4 v0, 0x0

    .line 8309
    .local v0, "isHomeApp":Z
    if-eqz p1, :cond_8

    .line 8310
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 8311
    .local v1, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_9
    if-eqz v1, :cond_f

    .line 8312
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->isHomeAppToken()Z

    move-result v0

    .line 8314
    :cond_f
    return v0
.end method

.method public launchHome(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8319
    if-eqz p1, :cond_7

    .line 8320
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 8321
    .local v0, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_8
    if-eqz v0, :cond_d

    .line 8322
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->launchHome()V

    .line 8324
    :cond_d
    return-void
.end method

.method public notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "drawRoundRect"    # Z
    .param p3, "curRect"    # Landroid/graphics/Rect;

    .line 8264
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p2, p3}, Landroid/view/IWindow;->notifyDrawRoundRect(ZLandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 8267
    goto :goto_a

    .line 8265
    :catch_6
    move-exception v0

    .line 8266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 8268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public notifyIgnoreInput(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "ignore"    # Z

    .line 8337
    if-eqz p1, :cond_4

    .line 8338
    iput-boolean p2, p1, Lcom/android/server/wm/AppWindowToken;->mIgnoreInput:Z

    .line 8340
    :cond_4
    return-void
.end method

.method public onGestureAnimationStart(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 8272
    if-eqz p1, :cond_11

    .line 8273
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    .line 8274
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_11

    .line 8275
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->mHandleByGesture:Z

    .line 8278
    :cond_11
    return-void
.end method

.method public onGestureAnimationStoped(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 8282
    if-eqz p1, :cond_11

    .line 8283
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    .line 8284
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_11

    .line 8285
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->mHandleByGesture:Z

    .line 8288
    :cond_11
    return-void
.end method

.method public onGestureCancel(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8237
    if-eqz p1, :cond_7

    .line 8238
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 8239
    .local v0, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_8
    if-eqz v0, :cond_d

    .line 8240
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->onGestureCancel()V

    .line 8242
    :cond_d
    return-void
.end method

.method public onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8246
    if-nez p1, :cond_3

    .line 8247
    return-void

    .line 8250
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8251
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_c

    .line 8252
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUpdateTaskSnapshotByGesture:Z

    .line 8255
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    .line 8256
    .local v1, "controller":Lcom/android/server/wm/AppWindowContainerController;
    if-eqz v1, :cond_15

    .line 8257
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->onGestureFinished()V

    .line 8259
    :cond_15
    return-void
.end method

.method public onGestureReady(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8226
    if-eqz p1, :cond_12

    .line 8227
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8228
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_b

    .line 8229
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUpdateTaskSnapshotByGesture:Z

    .line 8231
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskSnapshotController;->handleSnapshotTaskByGesture(Lcom/android/server/wm/AppWindowToken;)V

    .line 8233
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_12
    return-void
.end method

.method public setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "launchBehind"    # Z

    .line 8299
    if-eqz p1, :cond_7

    .line 8300
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 8301
    .local v0, "controller":Lcom/android/server/wm/AppWindowContainerController;
    :goto_8
    if-eqz v0, :cond_d

    .line 8302
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowContainerController;->setLaunchRecentsBehind(Z)V

    .line 8304
    :cond_d
    return-void
.end method
