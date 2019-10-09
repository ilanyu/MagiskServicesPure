.class Lcom/android/server/am/BaseUserSwitchingDialog;
.super Lmiui/app/AlertDialog;
.source "BaseUserSwitchingDialog.java"


# static fields
.field static final MSG_START_USER:I = 0x1

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "styleId"    # I
    .param p4, "userId"    # I

    .line 28
    invoke-direct {p0, p2, p3}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    new-instance v0, Lcom/android/server/am/BaseUserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseUserSwitchingDialog$1;-><init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 30
    iput p4, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mUserId:I

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseUserSwitchingDialog;->setCancelable(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 42
    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    return-void
.end method

.method public show()V
    .registers 5

    .line 47
    invoke-super {p0}, Lmiui/app/AlertDialog;->show()V

    .line 48
    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    return-void
.end method

.method startUser()V
    .registers 3

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_17

    .line 57
    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mStartedUser:Z

    .line 59
    invoke-static {p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->finishSwitchUser(Landroid/app/Dialog;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    :cond_17
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method
