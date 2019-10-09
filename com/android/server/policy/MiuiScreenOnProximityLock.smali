.class public Lcom/android/server/policy/MiuiScreenOnProximityLock;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_PREPARE_VIEW:I = 0x1

.field private static final EVENT_RELEASE:I = 0x0

.field private static final EVENT_RELEASE_VIEW:I = 0x3

.field private static final EVENT_SHOW_VIEW:I = 0x2

.field private static final FIRST_CHANGE_TIMEOUT:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiScreenOnProximityLock"


# instance fields
.field private mAquiredTime:J

.field private mContext:Landroid/content/Context;

.field protected mFrontFingerprintSensor:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasNavigationBar:Z

.field private mHideNavigationBarWhenForceShow:Z

.field protected mHintContainer:Landroid/view/ViewGroup;

.field protected mHintView:Landroid/view/View;

.field protected mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private final mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardDelegate"    # Lcom/android/server/policy/MiuiKeyguardServiceDelegate;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 56
    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 68
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 71
    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;

    invoke-direct {v0, p0, p3}, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    .line 97
    const-string v0, "front_fingerprint_sensor"

    .line 98
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    .line 99
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->hasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 32
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/MiuiScreenOnProximityLock;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;
    .param p1, "x1"    # Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;
    .param p1, "x1"    # Landroid/view/View;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseReset(Landroid/view/View;)V

    return-void
.end method

.method private hasNavigationBar()Z
    .registers 3

    .line 298
    const-string/jumbo v0, "window"

    .line 299
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 301
    .local v0, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_b
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    .line 304
    goto :goto_13

    .line 302
    :catch_12
    move-exception v1

    .line 305
    :goto_13
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    return v1
.end method

.method private prepareHintWindow()V
    .registers 9

    .line 183
    new-instance v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v3, 0x103006b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 184
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7d9

    const v6, 0x1821100

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 203
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 204
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 205
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 206
    const-string v1, "ScreenOnProximitySensorGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 208
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 211
    return-void
.end method

.method private releaseHintWindow(Z)V
    .registers 7
    .param p1, "isNowRelease"    # Z

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 215
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_5

    return-void

    .line 217
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 218
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 219
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 220
    .end local v1    # "wm":Landroid/view/WindowManager;
    goto :goto_41

    .line 221
    :cond_19
    if-eqz p1, :cond_21

    .line 222
    invoke-direct {p0, v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseReset(Landroid/view/View;)V

    .line 223
    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    goto :goto_41

    .line 225
    :cond_21
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_54

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 226
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 246
    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 250
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :goto_41
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 251
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 253
    :cond_4f
    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 254
    return-void

    nop

    nop

    :array_54
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private releaseReset(Landroid/view/View;)V
    .registers 4
    .param p1, "container"    # Landroid/view/View;

    .line 257
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    if-eqz v0, :cond_c

    .line 258
    const/16 v0, 0xf00

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    .line 265
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 266
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method private shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "ScreenOnFully"    # Z

    .line 142
    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-eqz p2, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    goto :goto_3d

    .line 146
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_39

    const/16 v3, 0x4f

    if-eq v1, v3, :cond_38

    packed-switch v1, :pswitch_data_3e

    packed-switch v1, :pswitch_data_48

    packed-switch v1, :pswitch_data_52

    .line 165
    return v2

    .line 149
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 150
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 159
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_38
    :pswitch_38
    return v0

    .line 161
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    xor-int/2addr v0, v2

    return v0

    .line 143
    :cond_3d
    :goto_3d
    return v0

    :pswitch_data_3e
    .packed-switch 0x18
        :pswitch_28
        :pswitch_28
        :pswitch_38
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x55
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x7e
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method private showHint()V
    .registers 9

    .line 270
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_67

    .line 274
    :cond_b
    const-string v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "show hint..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const v0, 0x11030024

    .line 276
    .local v0, "resource":I
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v1, :cond_1d

    .line 277
    const v0, 0x11030025

    .line 279
    :cond_1d
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v3, 0x103006b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_6a

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 284
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 287
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 288
    .local v2, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 290
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 291
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 293
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v4, 0x110d0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 294
    .local v3, "animationView":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    return-void

    .line 271
    .end local v0    # "resource":I
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "animationView":Landroid/view/View;
    :cond_67
    :goto_67
    return-void

    nop

    nop

    :array_6a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .registers 5

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_32

    .line 108
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v1, "aquire"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    new-instance v0, Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 116
    :cond_32
    monitor-exit p0

    return-void

    .line 106
    :catchall_34
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/policy/MiuiScreenOnProximityLock;
    throw v0
.end method

.method public forceShow()V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_18

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    const/16 v1, 0xf02

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    .line 179
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method

.method public declared-synchronized isHeld()Z
    .registers 5

    monitor-enter p0

    .line 103
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/policy/MiuiScreenOnProximityLock;
    throw v0
.end method

.method public declared-synchronized release(Z)Z
    .registers 5
    .param p1, "isNowRelease"    # Z

    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 120
    const-string v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "releaseViewMessage":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3b

    .line 128
    monitor-exit p0

    return v1

    .line 130
    .end local v0    # "releaseViewMessage":Landroid/os/Message;
    :cond_38
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 118
    .end local p1    # "isNowRelease":Z
    :catchall_3b
    move-exception p1

    monitor-exit p0

    .line 118
    .end local p0    # "this":Lcom/android/server/policy/MiuiScreenOnProximityLock;
    throw p1
.end method

.method public shouldBeBlocked(ZLandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "ScreenOnFully"    # Z
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 134
    invoke-direct {p0, p2, p1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
