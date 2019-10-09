.class public Lcom/android/server/policy/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$H;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

.field private mLockTaskState:I

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 84
    iput v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 370
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 399
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$1;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x10e0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 64
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->saveSetting()V

    return-void
.end method

.method private getNavBarExitDuration()J
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 98
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, 0x0

    :goto_12
    return-wide v1
.end method

.method private handleHide()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_e

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 192
    :cond_e
    return-void
.end method

.method private handleShow()V
    .registers 4

    .line 358
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 361
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 367
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void
.end method

.method private saveSetting()V
    .registers 5

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 121
    .local v0, "value":Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 128
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_2e

    .line 126
    :catch_15
    move-exception v0

    .line 127
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ImmersiveModeConfirmation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving confirmations, mConfirmed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2e
    return-void
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_b
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 213
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 213
    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 195
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 205
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 206
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    const v1, 0x10302f4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 208
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 209
    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public immersiveModeChangedLw(Ljava/lang/String;ZZZ)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z
    .param p4, "navBarEmpty"    # Z

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 146
    if-eqz p2, :cond_2e

    .line 147
    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 150
    .local v0, "disabled":Z
    if-nez v0, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-nez v2, :cond_2d

    if-eqz p3, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v2, :cond_2d

    if-nez p4, :cond_2d

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq v2, v1, :cond_2d

    .line 157
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-wide v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    .end local v0    # "disabled":Z
    :cond_2d
    goto :goto_34

    .line 160
    :cond_2e
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 162
    :goto_34
    return-void
.end method

.method public loadSetting(I)V
    .registers 7
    .param p1, "currentUserId"    # I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    .line 103
    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mCurrentUserId:I

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "value":Ljava/lang/String;
    :try_start_6
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 110
    const-string v1, "confirmed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_1d

    .line 114
    goto :goto_34

    .line 112
    :catch_1d
    move-exception v1

    .line 113
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading confirmations, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_34
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .registers 2
    .param p1, "lockTaskState"    # I

    .line 411
    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 412
    return-void
.end method

.method public onPowerKeyDown(ZJZZ)Z
    .registers 11
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_14

    iget-wide v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    .line 168
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    .line 170
    :cond_14
    if-eqz p1, :cond_1d

    if-eqz p4, :cond_1d

    if-nez p5, :cond_1d

    .line 172
    iput-wide p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_21

    .line 174
    :cond_1d
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    .line 176
    :goto_21
    return v0
.end method

.method systemReady()V
    .registers 3

    .line 132
    const-string/jumbo v0, "vrmanager"

    .line 133
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 134
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_1a

    .line 136
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 137
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    .line 139
    goto :goto_1a

    .line 138
    :catch_19
    move-exception v1

    .line 141
    :cond_1a
    :goto_1a
    return-void
.end method
