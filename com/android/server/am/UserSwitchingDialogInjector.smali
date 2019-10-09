.class public Lcom/android/server/am/UserSwitchingDialogInjector;
.super Ljava/lang/Object;
.source "UserSwitchingDialogInjector.java"


# static fields
.field private static onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishSwitchUser(Landroid/app/Dialog;)V
    .registers 4
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 33
    :cond_13
    return-void
.end method

.method public static startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 36
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 37
    return-void
.end method

.method public static switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dialog"    # Lcom/android/server/am/BaseUserSwitchingDialog;

    .line 16
    new-instance v0, Lcom/android/server/am/UserSwitchingDialogInjector$1;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserSwitchingDialogInjector$1;-><init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V

    sput-object v0, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 26
    :cond_1a
    return-void
.end method
