.class Lcom/android/server/am/UserSwitchingDialog;
.super Lmiui/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field protected final mNewUser:Landroid/content/pm/UserInfo;

.field protected final mOldUser:Landroid/content/pm/UserInfo;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private final mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z
    .param p6, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p7, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iget v0, p4, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 70
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 71
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 72
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 77
    if-eqz p5, :cond_28

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 81
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    return-void
.end method


# virtual methods
.method inflateContent()V
    .registers 8

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090130

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 96
    .local v3, "viewMessage":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_3a

    .line 97
    const v4, 0x10406eb

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .local v0, "viewMessage":Ljava/lang/String;
    :goto_39
    goto :goto_7e

    .line 98
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_3a
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 99
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 100
    const v0, 0x10401cb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 102
    :cond_52
    const v0, 0x10401cc

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 105
    :cond_5a
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_63

    .line 106
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_6b

    .line 107
    :cond_63
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_6b

    .line 108
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 113
    :cond_6b
    :goto_6b
    if-nez v3, :cond_7d

    .line 114
    const v4, 0x10406ee

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 117
    :cond_7d
    move-object v0, v3

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    :goto_7e
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public onWindowShown()V
    .registers 1

    .line 138
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 139
    return-void
.end method

.method public show()V
    .registers 6

    .line 124
    invoke-super {p0}, Lmiui/app/AlertDialog;->show()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 131
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    return-void
.end method

.method startUser()V
    .registers 4

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_2a

    .line 144
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_25

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 151
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    .end local v1    # "decorView":Landroid/view/View;
    :cond_2a
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method
