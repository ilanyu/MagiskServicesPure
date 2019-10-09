.class Lcom/android/server/wm/WindowManagerService$3;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
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

    .line 978
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 4
    .param p1, "transit"    # I

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 983
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 989
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_14

    .line 990
    return-void

    .line 992
    :cond_14
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 994
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 996
    goto :goto_24

    .line 995
    :catch_23
    move-exception v1

    .line 997
    :goto_24
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    goto :goto_50

    .line 999
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1000
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v1, :cond_50

    .line 1001
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1002
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1007
    return-void

    .line 1009
    :cond_43
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 1011
    :try_start_45
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4e} :catch_4f

    .line 1013
    goto :goto_50

    .line 1012
    :catch_4f
    move-exception v1

    .line 1017
    :cond_50
    :goto_50
    return-void
.end method
