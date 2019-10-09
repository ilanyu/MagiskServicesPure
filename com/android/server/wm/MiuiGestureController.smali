.class public Lcom/android/server/wm/MiuiGestureController;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;,
        Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;,
        Lcom/android/server/wm/MiuiGestureController$GestureCallback;,
        Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;,
        Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;
    }
.end annotation


# static fields
.field static DEBUG_ALL:Z = false

.field static DEBUG_DETECT:Z = false

.field static DEBUG_PERFORMANCE:Z = false

.field static DEBUG_PROCESS:Z = false

.field static DEBUG_RECENTS:Z = false

.field private static final GESTURE_STUB_WINDOW:Ljava/lang/String; = "GestureStub"

.field static final INPUT_CONSUMER_GESTURE:Ljava/lang/String; = "gesture_input_consumer"

.field private static final TAG:Ljava/lang/String; = "MiuiGestureController"

.field static final THUMBNAIL_ANIMATION_TIMEOUT:I = 0x65


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mGameBoostListener:Landroid/database/ContentObserver;

.field private mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

.field private mGestureFinishRunnable:Ljava/lang/Runnable;

.field mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

.field private final mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

.field mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAppTransitionSkipped:Z

.field private mIsGameBoost:Z

.field private mIsGestureOpen:Z

.field private mIsMistakeTouch:Z

.field private mIsSuperSavePowerMode:Z

.field private mKeepWallpaperShowing:Z

.field private final mLock:Ljava/lang/Object;

.field private mMistakeTouchListener:Landroid/database/ContentObserver;

.field mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field private mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field private mScCallback:Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field private mSuperSavePowerObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PROCESS:Z

    .line 39
    sput-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_RECENTS:Z

    .line 40
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PERFORMANCE:Z

    .line 41
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_DETECT:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/PointerEventDispatcher;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "pDispatcher"    # Lcom/android/server/wm/PointerEventDispatcher;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    .line 69
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiGestureController$1;-><init>(Lcom/android/server/wm/MiuiGestureController;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$4;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$4;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMistakeTouchListener:Landroid/database/ContentObserver;

    .line 267
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$5;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$5;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGameBoostListener:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiuiGestureController"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    .line 85
    new-instance v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 86
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/MiuiGestureController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->unregisterEventListener()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsSuperSavePowerMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/MiuiGestureController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    return p1
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 513
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 514
    const-string v2, "MiuiGestureController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2d
    return-void
.end method

.method private getIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    .registers 4
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "launchIconInfo":Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    if-eqz p1, :cond_d

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v1, :cond_d

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v1, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;

    move-result-object v0

    .line 508
    :cond_d
    return-object v0
.end method

.method private init()V
    .registers 8

    .line 90
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$2;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$2;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v0

    .line 120
    .local v0, "hasNavigationBar":Z
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PROCESS:Z

    if-eqz v1, :cond_29

    .line 121
    const-string v1, "MiuiGestureController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNavigationBar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_29
    new-instance v1, Lcom/android/server/wm/MiuiGestureController$3;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/MiuiGestureController$3;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v1, :cond_92

    if-nez v0, :cond_3c

    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_LAB_GESTURE:Z

    if-eqz v1, :cond_92

    .line 132
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, "isOpen":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 135
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 136
    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    .line 139
    :cond_54
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_mistake_touch_toast"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_66

    move v3, v2

    goto :goto_67

    :cond_66
    move v3, v4

    :goto_67
    iput-boolean v3, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    .line 141
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "gb_boosting"

    const/4 v6, -0x2

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7a

    move v4, v2

    nop

    :cond_7a
    iput-boolean v4, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    .line 143
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Landroid/provider/MiuiSettings$System;->isSuperSaveModeOpen(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/MiuiGestureController;->mIsSuperSavePowerMode:Z

    .line 144
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fw_fsgesture_support_superpower"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->registerContentObserver()V

    .line 147
    .end local v1    # "isOpen":Z
    :cond_92
    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    .line 159
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 158
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_mistake_touch_toast"

    .line 162
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mMistakeTouchListener:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    .line 165
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mGameBoostListener:Landroid/database/ContentObserver;

    .line 164
    const/4 v3, -0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_supersave_mode_open"

    .line 168
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    .line 167
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 170
    return-void
.end method

.method private reset()V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/MiuiGestureController$6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MiuiGestureController$6;-><init>(Lcom/android/server/wm/MiuiGestureController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private unlinkToDeathMiuiGestureHelper()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    if-eqz v0, :cond_17

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v2, 0x0

    .line 343
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    .line 346
    :cond_17
    return-void
.end method

.method private unregisterEventListener()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    if-eqz v0, :cond_1b

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V

    .line 155
    :cond_1b
    return-void
.end method


# virtual methods
.method cancelGoHomeAnimationIfNeeded()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 223
    return-void
.end method

.method cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 227
    return-void
.end method

.method disabledAppTransitionSkipped()V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    .line 403
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 476
    if-eqz p2, :cond_4a

    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_7

    goto :goto_4a

    .line 486
    :cond_7
    aget-object v0, p2, v1

    .line 487
    .local v0, "next":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 488
    sput-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    goto :goto_35

    .line 489
    :cond_14
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 490
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    goto :goto_35

    .line 492
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unKnow cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    :goto_35
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->enableDebug(Z)V

    .line 495
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    invoke-static {v1}, Lcom/android/server/wm/FullScreenEventReporter;->enableDebug(Z)V

    .line 496
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->enableDebug(Z)V

    .line 497
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureController;->DEBUG_ALL:Z

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureDetector;->enableDebug(Z)V

    .line 497
    .end local v0    # "next":Ljava/lang/String;
    goto :goto_a7

    .line 477
    :cond_4a
    :goto_4a
    const-string v0, "    "

    .line 478
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "dump of gesture:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsGestureOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsAppTransitionSkipped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mKeepWallpaperShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_54 .. :try_end_a3} :catchall_a8

    .line 484
    invoke-static {p1, v0}, Lcom/android/server/wm/FullScreenEventReporter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 485
    .end local v0    # "prefix":Ljava/lang/String;
    nop

    .line 499
    :goto_a7
    return-void

    .line 483
    .restart local v0    # "prefix":Ljava/lang/String;
    :catchall_a8
    move-exception v2

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method public getLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .registers 8
    .param p1, "topToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGestureController;->getIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;

    move-result-object v0

    .line 459
    .local v0, "launchIconInfo":Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 461
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 463
    .local v1, "startTime":J
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    iget-object v4, v0, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;->launchIconName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;->userId:I

    .line 464
    invoke-interface {v3, v4, v5}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v3

    .line 466
    .local v3, "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    const-string v4, "getSpec from launcher"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/wm/MiuiGestureController;->checkTime(JLjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    .line 467
    return-object v3

    .line 468
    .end local v1    # "startTime":J
    .end local v3    # "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :catch_27
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_c

    .line 175
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 176
    :catch_b
    move-exception v0

    .line 179
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method isAppTransitionSkipped()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    return v0
.end method

.method isGameBoostState()Z
    .registers 2

    .line 276
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    return v0
.end method

.method isGestureOpen()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return v0
.end method

.method isGestureRunning()Z
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureRunning()Z

    move-result v0

    return v0
.end method

.method public isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "isHomeApp":Z
    if-eqz p1, :cond_d

    .line 442
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v1, :cond_d

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v1, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    .line 446
    :cond_d
    return v0
.end method

.method isMistakeTouch()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    return v0
.end method

.method isSuperSavePowerMode()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsSuperSavePowerMode:Z

    return v0
.end method

.method keepWallpaperShowing()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    return v0
.end method

.method public launchHome(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 450
    if-eqz p1, :cond_b

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_b

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->launchHome(Lcom/android/server/wm/AppWindowToken;)V

    .line 455
    :cond_b
    return-void
.end method

.method notifyGestureAnimationCancel()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_b

    .line 203
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationCancel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 205
    goto :goto_b

    .line 204
    :catch_a
    move-exception v0

    .line 207
    :cond_b
    :goto_b
    return-void
.end method

.method notifyGestureAnimationEnd()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_b

    .line 212
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationEnd()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 214
    goto :goto_b

    .line 213
    :catch_a
    move-exception v0

    .line 216
    :cond_b
    :goto_b
    return-void
.end method

.method notifyGestureAnimationStart()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_b

    .line 194
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationStart()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 196
    goto :goto_b

    .line 195
    :catch_a
    move-exception v0

    .line 198
    :cond_b
    :goto_b
    return-void
.end method

.method public notifyGestureCancel()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureCancel(Lcom/android/server/wm/AppWindowToken;)V

    .line 378
    :cond_d
    return-void
.end method

.method public notifyGestureFinish(Z)V
    .registers 6
    .param p1, "immediate"    # Z

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x3e8

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method notifyGestureReady(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_12

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    .line 368
    :cond_12
    return-void
.end method

.method notifyGestureStartRecents()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_b

    .line 185
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureStartRecents()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 187
    goto :goto_b

    .line 186
    :catch_a
    move-exception v0

    .line 189
    :cond_b
    :goto_b
    return-void
.end method

.method notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "hasSurfaceView"    # Z

    .line 544
    return-void
.end method

.method notifyIgnoreInput(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .registers 7
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "ignore"    # Z
    .param p3, "immediately"    # Z

    .line 519
    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_28

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->notifyIgnoreInput(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 521
    if-eqz p3, :cond_28

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 524
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_28

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 527
    :cond_28
    :goto_28
    return-void
.end method

.method notifySkipAppTransition()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    .line 397
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method notifyStartFromRecents(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->notifyStartFromRecents(Lcom/android/server/wm/AppWindowToken;)V

    .line 231
    return-void
.end method

.method registerGestureCallback(Lcom/android/server/wm/MiuiGestureController$GestureCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    .line 356
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    .line 357
    return-void
.end method

.method registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V
    .registers 5
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .line 312
    if-nez p1, :cond_3

    .line 313
    return-void

    .line 316
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->unlinkToDeathMiuiGestureHelper()V

    .line 318
    new-instance v0, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;-><init>(Lcom/android/server/wm/MiuiGestureController;Lcom/android/server/wm/MiuiGestureController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    .line 320
    :try_start_e
    invoke-interface {p1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1c

    .line 324
    nop

    .line 326
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .line 327
    return-void

    .line 321
    :catch_1c
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiGestureController"

    const-string v2, "MiuiGestureControlHelper linkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method registerScCallback(Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;

    .line 360
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mScCallback:Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;

    .line 361
    return-void
.end method

.method setKeepWallpaperShowing(Z)V
    .registers 2
    .param p1, "show"    # Z

    .line 424
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    .line 425
    return-void
.end method

.method public setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 4
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "launchBehind"    # Z

    .line 432
    if-eqz p1, :cond_b

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_b

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 437
    :cond_b
    return-void
.end method

.method setLoadBackHomeAnimation(Z)V
    .registers 3
    .param p1, "loadBackHomeAnimation"    # Z

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setLoadBackHomeAnimation(Z)V

    .line 309
    return-void
.end method

.method setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 300
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 301
    return-void
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 535
    return-void
.end method

.method setRecentsItemCoordinates(IIII)V
    .registers 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsItemCoordinates(IIII)V

    .line 305
    return-void
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsWindowState(Lcom/android/server/wm/WindowState;)V

    .line 531
    return-void
.end method

.method setRoundCorner(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "radius"    # F

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mScCallback:Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mScCallback:Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;->onSetRoundCorner(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V

    .line 550
    :cond_9
    return-void
.end method

.method startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3
    .param p1, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureAnimationStart(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 414
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    .line 415
    return-void
.end method

.method stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3
    .param p1, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureAnimationStoped(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 421
    :cond_9
    return-void
.end method

.method tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 284
    if-nez p1, :cond_3

    .line 285
    return-void

    .line 290
    :cond_3
    const-string v0, "GestureStub"

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7eb

    if-ne v0, v1, :cond_37

    .line 292
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PROCESS:Z

    if-eqz v0, :cond_34

    .line 293
    const-string v0, "MiuiGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set gesture stub window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_34
    invoke-static {p1}, Lcom/android/server/wm/MiuiGestureDetector;->setGestureStubWindow(Lcom/android/server/wm/WindowState;)V

    .line 297
    :cond_37
    return-void
.end method

.method unregisterMiuiGestureControlHelper(Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V
    .registers 4
    .param p1, "recipient"    # Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    if-eq p1, v0, :cond_c

    .line 331
    const-string v0, "MiuiGestureController"

    const-string v1, "The death recipient has changed, we have registered a new GestureHelper so we don\'t need to unregister now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 336
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->unlinkToDeathMiuiGestureHelper()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .line 338
    return-void
.end method
