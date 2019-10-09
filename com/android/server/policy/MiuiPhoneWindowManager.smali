.class public Lcom/android/server/policy/MiuiPhoneWindowManager;
.super Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    }
.end annotation


# static fields
.field private static final ACTION_NOT_PASS_TO_USER:I = 0x0

.field private static final ACTION_PASS_TO_USER:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_DEFAULT:I = -0x1

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_NONE:I = 0x0

.field protected static final NAV_BAR_BOTTOM:I = 0x0

.field protected static final NAV_BAR_LEFT:I = 0x2

.field protected static final NAV_BAR_RIGHT:I = 0x1


# instance fields
.field private mAccountHelper:Lcom/android/server/wm/AccountHelper;

.field private mDisplayHeight:I

.field private mDisplayRotation:I

.field private mDisplayWidth:I

.field private mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

.field private mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

.field private mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

.field private mStatusBarController:Lcom/android/server/policy/StatusBarController;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;-><init>()V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/wm/AccountHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 90
    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/MiuiPhoneWindowManager;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/app/AlertDialog;

    .line 90
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method private bringUpActionChooseDlg()V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 551
    return-void

    .line 554
    :cond_5
    new-instance v0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    .line 568
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x110b00bd

    .line 569
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110b00be

    .line 570
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110b00bf

    .line 571
    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110b00c0

    .line 572
    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 573
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    .line 574
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 575
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 576
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 577
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 578
    return-void
.end method

.method private drawsSystemBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 814
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private forcesDrawStatusBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 818
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private getExtraWindowSystemUiVis(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 5
    .param p1, "transWin"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "vis":I
    if-eqz p1, :cond_15

    .line 804
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v0, v1

    .line 805
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 806
    or-int/lit8 v0, v0, 0x1

    .line 809
    :cond_15
    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v0

    .line 810
    return v0
.end method

.method private hideNavBar(II)Z
    .registers 4
    .param p1, "flag"    # I
    .param p2, "sys"    # I

    .line 597
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_b

    and-int/lit16 v0, p2, 0x1800

    if-eqz v0, :cond_9

    goto :goto_b

    .line 601
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 599
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method private hideStatusBar(II)Z
    .registers 4
    .param p1, "flag"    # I
    .param p2, "sys"    # I

    .line 590
    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_b

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_9

    goto :goto_b

    .line 593
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method private injectEvent(Landroid/view/KeyEvent;II)V
    .registers 21
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "injectKeyCode"    # I
    .param p3, "deviceId"    # I

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 582
    .local v13, "now":J
    new-instance v15, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v6, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 583
    .local v15, "homeDown":Landroid/view/KeyEvent;
    new-instance v16, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 584
    .local v0, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 585
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 586
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p0

    invoke-virtual {v4, v1, v3, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 587
    return-void
.end method

.method private isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 768
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isScreenOn"    # Z

    .line 512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 513
    if-eqz p2, :cond_34

    .line 514
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_29

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 515
    const/16 v0, 0x1b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    .line 517
    :cond_29
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_40

    .line 519
    :cond_34
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "miui.policy:FINGERPRINT_DPAD_CENTER"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 522
    :cond_40
    :goto_40
    return-void
.end method

.method private processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    .line 473
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v0, :cond_1c

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    .line 475
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    if-eqz v2, :cond_1c

    .line 476
    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    .line 477
    const-string v0, "BaseMiuiPhoneWindowManager"

    const-string v1, "After dpcenter & home down, ignore tap fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 481
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_70

    .line 482
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSingleKeyUse:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_43

    .line 483
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    goto :goto_70

    .line 485
    :cond_43
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_nav_center_action"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 487
    .local v0, "action":I
    if-ne v2, v0, :cond_5d

    .line 488
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_67

    .line 494
    :cond_5d
    if-ne v1, v0, :cond_64

    .line 495
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    goto :goto_67

    .line 496
    :cond_64
    if-nez v0, :cond_67

    .line 497
    return-void

    .line 499
    .end local v0    # "action":I
    :cond_67
    :goto_67
    goto :goto_70

    .line 501
    :cond_68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_70

    .line 502
    iput-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    .line 504
    :cond_70
    :goto_70
    return-void
.end method

.method private processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 508
    const-string v0, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v1, "processFrontFingerprintDprightEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method


# virtual methods
.method protected adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;FI)V
    .registers 31
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;
    .param p9, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p10, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p11, "maxAspect"    # F
    .param p12, "aspectSystemUIVisibility"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    .line 681
    move/from16 v7, p12

    iget-boolean v8, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v8, :cond_15

    .line 682
    return-void

    .line 684
    :cond_15
    invoke-interface/range {p9 .. p9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 685
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6, v8}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 686
    .local v9, "fl":I
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 687
    .local v10, "sysUiFl":I
    invoke-static/range {p11 .. p11}, Lmiui/util/CustomizeUtil;->isRestrict(F)Z

    move-result v11

    if-eqz v11, :cond_c4

    invoke-interface/range {p9 .. p9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_c4

    if-nez p10, :cond_c4

    .line 689
    iget v12, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    if-nez v12, :cond_6b

    .line 693
    const/4 v12, 0x0

    .line 694
    .local v12, "newBottom":I
    const/4 v13, 0x0

    .line 696
    .local v13, "newHeight":I
    sub-int v14, v12, v13

    .line 697
    .local v14, "newTop":I
    iget v15, v1, Landroid/graphics/Rect;->top:I

    sub-int v15, v14, v15

    .line 699
    .local v15, "offset":I
    invoke-direct {v0, v9, v10}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v16

    if-eqz v16, :cond_4a

    invoke-direct {v0, v9, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v16

    if-eqz v16, :cond_4a

    .line 704
    sub-int v14, v12, v13

    .line 706
    :cond_4a
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v12, :cond_53

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-lt v6, v14, :cond_53

    .line 707
    return-void

    .line 709
    :cond_53
    iput v14, v1, Landroid/graphics/Rect;->top:I

    .line 710
    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 712
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v17, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    sub-int/2addr v6, v8

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 714
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v15

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 715
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v15

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 716
    .end local v12    # "newBottom":I
    .end local v13    # "newHeight":I
    .end local v14    # "newTop":I
    .end local v15    # "offset":I
    goto :goto_c6

    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6b
    move-object/from16 v17, v8

    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_90

    .line 720
    const/4 v6, 0x0

    .line 721
    .local v6, "newRight":I
    const/4 v8, 0x0

    .line 723
    .local v8, "newWidth":I
    sub-int v12, v6, v8

    .line 725
    .local v12, "newLeft":I
    invoke-direct {v0, v9, v10}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v13

    if-eqz v13, :cond_84

    invoke-direct {v0, v9, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 730
    sub-int v12, v6, v8

    .line 732
    :cond_84
    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 733
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 735
    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iput v13, v2, Landroid/graphics/Rect;->right:I

    .line 736
    .end local v6    # "newRight":I
    .end local v8    # "newWidth":I
    .end local v12    # "newLeft":I
    goto :goto_c6

    :cond_90
    iget v6, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_c6

    .line 739
    const/4 v6, 0x0

    .line 741
    .local v6, "newWidth":I
    iget v8, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    .line 742
    .local v8, "newLeft":I
    add-int v12, v8, v6

    .line 743
    .local v12, "newRight":I
    invoke-direct {v0, v9, v10}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v13

    if-eqz v13, :cond_a8

    invoke-direct {v0, v9, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 748
    sub-int v8, v12, v6

    .line 751
    :cond_a8
    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 752
    iput v12, v1, Landroid/graphics/Rect;->right:I

    .line 754
    iget v13, v1, Landroid/graphics/Rect;->right:I

    iput v13, v2, Landroid/graphics/Rect;->right:I

    .line 755
    iget v13, v1, Landroid/graphics/Rect;->left:I

    iput v13, v2, Landroid/graphics/Rect;->left:I

    .line 756
    iget v13, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v8

    iput v13, v3, Landroid/graphics/Rect;->left:I

    .line 757
    iget v13, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v8

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 758
    iget v13, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v8

    iput v13, v5, Landroid/graphics/Rect;->left:I

    .end local v6    # "newWidth":I
    .end local v8    # "newLeft":I
    .end local v12    # "newRight":I
    goto :goto_c6

    .line 761
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_c4
    move-object/from16 v17, v8

    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_c6
    :goto_c6
    return-void
.end method

.method protected adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V
    .registers 29
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;
    .param p9, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p10, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p11, "extraPrivateFlags"    # I

    move-object/from16 v0, p0

    .line 623
    move/from16 v1, p11

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v2, :cond_9

    .line 624
    return-void

    .line 626
    :cond_9
    invoke-interface/range {p9 .. p9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 627
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v3, p9

    invoke-static {v3, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 628
    .local v4, "fl":I
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v5, v5, 0x100

    const/4 v6, 0x0

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    move v5, v6

    .line 630
    .local v5, "enableFlags":Z
    :goto_1d
    and-int/lit16 v8, v1, 0x100

    if-eqz v8, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    move v8, v6

    .line 632
    .local v8, "enablePrivateFlags":Z
    :goto_24
    if-nez v5, :cond_2b

    if-eqz v8, :cond_29

    goto :goto_2b

    :cond_29
    move v9, v6

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v9, 0x1

    .line 633
    .local v9, "enableNotch":Z
    :goto_2c
    if-eqz v5, :cond_39

    .line 634
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v10, v10, 0x200

    if-eqz v10, :cond_36

    .line 636
    :goto_34
    const/4 v10, 0x1

    goto :goto_3f

    .line 634
    :cond_36
    nop

    .line 636
    :goto_37
    move v10, v6

    goto :goto_3f

    :cond_39
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_3e

    goto :goto_34

    :cond_3e
    goto :goto_37

    .line 637
    .local v10, "enablePortrait":Z
    :goto_3f
    if-eqz v5, :cond_4a

    .line 638
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_49

    .line 640
    :goto_47
    const/4 v6, 0x1

    goto :goto_4f

    .line 638
    :cond_49
    goto :goto_4f

    .line 640
    :cond_4a
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_4f

    goto :goto_47

    .line 641
    .local v6, "enableLandscape":Z
    :cond_4f
    :goto_4f
    const/4 v11, 0x0

    .line 642
    .local v11, "noLimit":Z
    and-int/lit16 v12, v4, 0x200

    if-eqz v12, :cond_61

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7da

    if-eq v12, v13, :cond_61

    .line 643
    invoke-interface/range {p9 .. p9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v12

    if-nez v12, :cond_61

    .line 644
    const/4 v11, 0x1

    .line 646
    :cond_61
    iget-object v12, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_68

    .line 647
    iget-object v12, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_69

    :cond_68
    move-object v12, v3

    .line 648
    .local v12, "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_69
    invoke-interface {v12}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 649
    .local v13, "topAttrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v12, v13}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v14

    .line 650
    .local v14, "topFlag":I
    const/4 v15, 0x0

    invoke-static {v12, v15}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v15

    .line 651
    .local v15, "sysUiFl":I
    iget v7, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    if-nez v7, :cond_87

    .line 652
    if-eqz v9, :cond_7e

    if-eqz v10, :cond_86

    :cond_7e
    if-nez v9, :cond_9f

    invoke-direct {v0, v14, v15}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 654
    :cond_86
    goto :goto_9f

    .line 660
    :cond_87
    iget v7, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    const/4 v1, 0x1

    if-ne v7, v1, :cond_93

    .line 661
    if-eqz v9, :cond_90

    if-eqz v6, :cond_92

    :cond_90
    if-nez v9, :cond_9f

    .line 662
    :cond_92
    goto :goto_9f

    .line 668
    :cond_93
    iget v1, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_9f

    .line 669
    if-eqz v9, :cond_9c

    if-eqz v6, :cond_9e

    :cond_9c
    if-nez v9, :cond_9f

    .line 670
    :cond_9e
    nop

    .line 677
    :cond_9f
    :goto_9f
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 265
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    .line 266
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayWidth:I

    .line 267
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayHeight:I

    .line 268
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 269
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    .line 287
    :cond_1b
    return-void
.end method

.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 227
    return-void
.end method

.method protected forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "OwningUserId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 231
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    .line 232
    invoke-virtual {v0, p1, p2, p3}, Lmiui/process/ProcessManagerInternal;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;F)I
    .registers 12
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "maxAspect"    # F

    .line 772
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;F)I

    .line 773
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceShowSystemBars:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 774
    .local v0, "forceOpaqueStatusBar":Z
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 775
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_1b

    .line 776
    :cond_19
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 777
    .local v3, "fullscreenTransWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_1b
    invoke-direct {p0, v3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v4

    .line 778
    .local v4, "fullscreenVis":I
    iget-object v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 779
    invoke-direct {p0, v5}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 780
    invoke-direct {p0, v5}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_35

    and-int v5, v4, v6

    if-eqz v5, :cond_3d

    :cond_35
    iget-object v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 782
    invoke-direct {p0, v5}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_3d
    move v5, v2

    goto :goto_40

    :cond_3f
    move v5, v1

    .line 784
    .local v5, "fullscreenDrawsStatusBarBackground":Z
    :goto_40
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v7

    .line 785
    .local v7, "dockedVis":I
    iget-object v8, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 786
    invoke-direct {p0, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v8

    if-eqz v8, :cond_63

    iget-object v8, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 787
    invoke-direct {p0, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v8

    if-eqz v8, :cond_59

    and-int/2addr v6, v7

    if-eqz v6, :cond_61

    :cond_59
    iget-object v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 789
    invoke-direct {p0, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-eqz v6, :cond_63

    :cond_61
    move v1, v2

    nop

    .line 790
    .local v1, "dockedDrawsStatusBarBackground":Z
    :cond_63
    const/4 v2, 0x0

    .line 791
    .local v2, "vis":I
    if-eqz v5, :cond_6f

    if-eqz v1, :cond_6f

    .line 792
    or-int/lit8 v2, v2, 0x8

    .line 793
    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v2, v6

    goto :goto_7d

    .line 794
    :cond_6f
    iget-boolean v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-nez v6, :cond_77

    iget-object v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v3, v6, :cond_79

    :cond_77
    if-eqz v0, :cond_7d

    .line 796
    :cond_79
    const v6, -0x40000009    # -1.9999989f

    and-int/2addr v2, v6

    .line 798
    :cond_7d
    :goto_7d
    return v2
.end method

.method protected getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .registers 2

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 313
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_9

    const/16 v2, 0x63

    if-gt p1, v2, :cond_9

    .line 314
    return v1

    .line 317
    :cond_9
    const/16 v2, 0x80c

    if-eq p1, v2, :cond_92

    const/16 v2, 0xb

    const/16 v3, 0xa

    packed-switch p1, :pswitch_data_96

    packed-switch p1, :pswitch_data_cc

    packed-switch p1, :pswitch_data_d4

    .line 415
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v1

    .line 350
    :pswitch_31
    const/16 v0, 0xc

    return v0

    .line 387
    :pswitch_34
    const/16 v0, 0x19

    return v0

    .line 327
    :pswitch_37
    return v1

    .line 325
    :pswitch_38
    return v1

    .line 403
    :pswitch_39
    const/16 v0, 0x1e

    return v0

    .line 335
    :pswitch_3c
    const/4 v0, 0x5

    return v0

    .line 323
    :pswitch_3e
    return v1

    .line 393
    :pswitch_3f
    const/16 v0, 0x1b

    return v0

    .line 396
    :pswitch_42
    const/16 v0, 0x1c

    return v0

    .line 383
    :pswitch_45
    const/16 v0, 0x18

    return v0

    .line 353
    :pswitch_48
    const/16 v0, 0xd

    return v0

    .line 337
    :pswitch_4b
    const/4 v0, 0x6

    return v0

    .line 407
    :pswitch_4d
    const/16 v0, 0x20

    return v0

    .line 373
    :pswitch_50
    const/16 v0, 0x15

    return v0

    .line 380
    :pswitch_53
    const/16 v0, 0x17

    return v0

    .line 410
    :pswitch_56
    const/16 v0, 0x21

    return v0

    .line 363
    :pswitch_59
    const/16 v0, 0x11

    return v0

    .line 400
    :pswitch_5c
    const/16 v0, 0x1d

    return v0

    .line 405
    :pswitch_5f
    const/16 v0, 0x1f

    return v0

    .line 367
    :pswitch_62
    const/16 v0, 0x13

    return v0

    .line 320
    :pswitch_65
    return v0

    .line 359
    :pswitch_66
    const/16 v0, 0xf

    return v0

    .line 356
    :pswitch_69
    const/16 v0, 0xe

    return v0

    .line 390
    :pswitch_6c
    if-eqz p2, :cond_71

    const/16 v3, 0x1a

    nop

    :cond_71
    return v3

    .line 369
    :pswitch_72
    const/16 v0, 0x14

    return v0

    .line 339
    :pswitch_75
    const/4 v0, 0x7

    return v0

    .line 345
    :pswitch_77
    const/16 v0, 0x9

    return v0

    .line 377
    :pswitch_7a
    if-eqz p2, :cond_7f

    const/16 v2, 0x16

    nop

    :cond_7f
    return v2

    .line 342
    :pswitch_80
    const/16 v0, 0x8

    return v0

    .line 361
    :pswitch_83
    const/16 v0, 0x10

    return v0

    .line 348
    :pswitch_86
    if-eqz p2, :cond_89

    goto :goto_8a

    :cond_89
    move v2, v3

    :goto_8a
    return v2

    .line 329
    :pswitch_8b
    const/4 v0, 0x3

    return v0

    .line 332
    :pswitch_8d
    const/4 v0, 0x4

    return v0

    .line 365
    :pswitch_8f
    const/16 v0, 0x12

    return v0

    .line 413
    :cond_92
    const/16 v0, 0x22

    return v0

    nop

    :pswitch_data_96
    .packed-switch 0x7d0
        :pswitch_8f
        :pswitch_8d
        :pswitch_8b
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7a
        :pswitch_77
        :pswitch_75
        :pswitch_72
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x7ea
        :pswitch_42
        :pswitch_3f
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x7ee
        :pswitch_3e
        :pswitch_3c
        :pswitch_39
        :pswitch_8d
        :pswitch_38
        :pswitch_37
        :pswitch_34
        :pswitch_3e
        :pswitch_31
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 111
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 293
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_19

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_23

    .line 295
    :cond_19
    const/4 v1, 0x1

    if-ne p4, v1, :cond_23

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 298
    :cond_23
    :goto_23
    const/4 v1, 0x0

    return v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 237
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 457
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 459
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 460
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_26

    .line 465
    return v1

    .line 463
    :pswitch_23
    const/4 v1, 0x1

    return v1

    .line 468
    .end local v0    # "keyCode":I
    :cond_25
    return v1

    :pswitch_data_26
    .packed-switch 0x16
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method protected isInLockTaskMode()Z
    .registers 3

    .line 445
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 446
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_b

    .line 447
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 451
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_b
    goto :goto_10

    .line 449
    :catch_c
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method protected isScreenOnInternal()Z
    .registers 2

    .line 221
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method protected launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 210
    if-eqz p1, :cond_6

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 214
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_f

    .line 215
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 217
    :cond_f
    return-void
.end method

.method protected launchRecentPanelInternal()V
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 187
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 188
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 190
    :cond_9
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 606
    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onConfigurationChanged()V

    .line 607
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->updateNavigationBarWidth()V

    .line 608
    return-void
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 4
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .line 423
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 426
    goto :goto_a

    .line 424
    :catch_6
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method protected preloadRecentAppsInternal()V
    .registers 2

    .line 194
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 195
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 196
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 198
    :cond_9
    return-void
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isScreenOn"    # Z

    .line 525
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 526
    .local v0, "keyCode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1e

    .line 543
    return v1

    .line 528
    :pswitch_9
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v2, :cond_16

    .line 529
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    if-eqz v2, :cond_15

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    .line 531
    return v1

    .line 533
    :cond_15
    return v1

    .line 536
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;Z)V

    .line 537
    return v1

    .line 540
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V

    .line 541
    return v1

    :pswitch_data_1e
    .packed-switch 0x16
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method

.method public registerMIUIWatermarkCallback(Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    .line 823
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    .line 824
    return-void
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .registers 2

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method setStatusBarController(Lcom/android/server/policy/StatusBarController;)V
    .registers 2
    .param p1, "statusBarController"    # Lcom/android/server/policy/StatusBarController;

    .line 764
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 765
    return-void
.end method

.method protected stopLockTaskMode()Z
    .registers 3

    .line 431
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 432
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 433
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_12

    .line 434
    const/4 v1, 0x1

    return v1

    .line 438
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_11
    goto :goto_16

    .line 436
    :catch_12
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 115
    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V

    .line 116
    new-instance v0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 117
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReadyInternal()V

    .line 118
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_39

    .line 121
    :cond_19
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->getInstance()Lcom/android/server/wm/AccountHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccountHelper;->registerAccountListener(Landroid/content/Context;Lcom/android/server/wm/AccountHelper$AccountCallback;)V

    .line 145
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-direct {v0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;-><init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

    .line 182
    :cond_39
    return-void
.end method

.method protected toggleSplitScreenInternal()V
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 203
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 204
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 206
    :cond_9
    return-void
.end method

.method protected updateNavigationBarWidth()V
    .registers 11

    .line 612
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 613
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUpsideDownRotation:I

    iget-object v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v8, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSeascapeRotation:I

    .line 617
    iget-boolean v9, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportFsg:Z

    if-eqz v9, :cond_1c

    const/4 v9, 0x0

    goto :goto_23

    .line 618
    :cond_1c
    const v9, 0x105012f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_23
    aput v9, v7, v8

    aput v9, v5, v6

    aput v9, v3, v4

    aput v9, v1, v2

    .line 619
    return-void
.end method
