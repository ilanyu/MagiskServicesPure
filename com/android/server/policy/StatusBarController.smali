.class public Lcom/android/server/policy/StatusBarController;
.super Lcom/android/server/policy/BarController;
.source "StatusBarController.java"


# instance fields
.field private final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 102
    const-string v1, "StatusBar"

    const/high16 v2, 0x4000000

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v6, 0x4000000

    const/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    .line 40
    new-instance v0, Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1;-><init>(Lcom/android/server/policy/StatusBarController;)V

    iput-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 109
    return-void
.end method


# virtual methods
.method public getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 3
    .param p1, "hidesStatusBar"    # Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 114
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 115
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    .line 117
    :cond_9
    return-void
.end method

.method protected skipAnimation()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
