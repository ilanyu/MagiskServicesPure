.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mIsFreeFormMode:Z

.field private mIsVertical:Z

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/TaskPositioner;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;FF)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 59
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 622
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .registers 2
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 682
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_b

    .line 683
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 686
    :cond_b
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    return-object v0
.end method

.method private endDragLocked()V
    .registers 3

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 431
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 432
    return-void
.end method

.method public static synthetic lambda$startDrag$0(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 420
    goto :goto_e

    .line 419
    :catch_d
    move-exception v0

    .line 421
    :goto_e
    return-void
.end method

.method private notifyMoveLocked(FF)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 440
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 443
    return v1

    .line 447
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 449
    float-to-int v0, p1

    .line 450
    .local v0, "nX":I
    float-to-int v2, p2

    .line 451
    .local v2, "nY":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_42

    .line 454
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 455
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 458
    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 459
    return v1
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .registers 1
    .param p0, "factory"    # Lcom/android/server/wm/TaskPositioner$Factory;

    .line 678
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 679
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "stackBounds"    # Landroid/graphics/Rect;

    .line 625
    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 626
    .local v0, "offsetX":I
    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 627
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 634
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .local v2, "taskBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 636
    iget-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mIsFreeFormMode:Z

    if-nez v3, :cond_3e

    .line 638
    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v3, v4

    .line 639
    .local v3, "maxLeft":I
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    .line 643
    .local v4, "minLeft":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 644
    .local v5, "minTop":I
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr v6, v7

    .local v6, "maxTop":I
    :goto_3d
    goto :goto_6d

    .line 647
    .end local v3    # "maxLeft":I
    .end local v4    # "minLeft":I
    .end local v5    # "minTop":I
    .end local v6    # "maxTop":I
    :cond_3e
    iget v3, p3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 648
    .restart local v3    # "maxLeft":I
    iget v4, p3, Landroid/graphics/Rect;->left:I

    .line 652
    .restart local v4    # "minLeft":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 653
    .restart local v5    # "minTop":I
    iget-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mIsVertical:Z

    if-eqz v6, :cond_61

    .line 654
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sget v8, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_3d

    .line 656
    :cond_61
    const/16 v6, 0x24

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    .line 657
    .local v6, "captionViewHeight":I
    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v7, v6

    .line 665
    .local v6, "maxTop":I
    :goto_6d
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v0

    .line 666
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    .line 667
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 665
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 671
    return-void
.end method


# virtual methods
.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 245
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_10

    .line 246
    const-string v1, "WindowManager"

    const-string v2, "Task positioner already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_10
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 252
    const-string v1, "WindowManager"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 253
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 254
    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 255
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 257
    new-instance v4, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 258
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 259
    invoke-virtual {v8}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v8

    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 261
    new-instance v4, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v4, v6}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v5, "WindowManager"

    iput-object v5, v4, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 263
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v7, 0x1dcd65000L

    iput-wide v7, v4, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 266
    new-instance v4, Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 267
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-direct {v4, v5, v6, v6, v9}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 268
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v5, "WindowManager"

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 270
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 271
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v5, 0x7e0

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 273
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v7, v4, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 275
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 279
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 280
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 281
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 283
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 286
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, v4, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 289
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 290
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 291
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 292
    .local v4, "p":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 293
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 294
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v5, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 296
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mIsFreeFormMode:Z

    .line 297
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_f3

    .line 298
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mIsVertical:Z

    goto :goto_f5

    .line 300
    :cond_f3
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mIsVertical:Z

    .line 307
    :goto_f5
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 309
    const/16 v3, 0x64

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 310
    const/16 v3, 0x30

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 311
    const/16 v3, 0x20

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 314
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 315
    return-void
.end method

.method resizeDrag(FF)V
    .registers 30
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    .line 474
    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 475
    .local v8, "deltaX":I
    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 476
    .local v9, "deltaY":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 477
    .local v10, "left":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 478
    .local v11, "top":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 479
    .local v12, "right":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 484
    .local v13, "bottom":I
    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    const v1, 0x3f99999a    # 1.2f

    if-nez v0, :cond_2c

    .line 485
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_35

    .line 486
    :cond_2c
    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_35

    :cond_32
    const v0, 0x3f555555

    :goto_35
    move v14, v0

    .line 488
    .local v14, "minAspect":F
    sub-int v0, v12, v10

    .line 489
    .local v0, "width":I
    sub-int v2, v13, v11

    .line 490
    .local v2, "height":I
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    .line 491
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v5, v0, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_57

    .line 492
    :cond_49
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_57

    .line 493
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v5, v0, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 495
    :cond_57
    :goto_57
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_66

    .line 496
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v5, v2, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_74

    .line 497
    :cond_66
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_74

    .line 498
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v5, v2, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 502
    :cond_74
    :goto_74
    int-to-float v3, v0

    int-to-float v5, v2

    div-float v6, v3, v5

    .line 503
    .local v6, "aspect":F
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v3, :cond_1d3

    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_84

    cmpg-float v3, v6, v1

    if-ltz v3, :cond_92

    :cond_84
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v3, :cond_1d3

    float-to-double v4, v6

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v3, v4, v16

    if-lez v3, :cond_1d3

    .line 511
    :cond_92
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_123

    .line 513
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v4, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 514
    .local v3, "width1":I
    int-to-float v4, v3

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 515
    .local v4, "height1":I
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v4, v5, :cond_cf

    .line 517
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 518
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v1, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move/from16 v18, v3

    int-to-float v3, v4

    .end local v3    # "width1":I
    .local v18, "width1":I
    const v16, 0x3f99999a    # 1.2f

    mul-float v3, v3, v16

    .line 519
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 518
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v18    # "width1":I
    .restart local v3    # "width1":I
    goto :goto_d1

    .line 522
    :cond_cf
    move/from16 v18, v3

    :goto_d1
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 523
    .local v1, "height2":I
    int-to-float v5, v1

    const v16, 0x3f99999a    # 1.2f

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 524
    .local v5, "width2":I
    move/from16 v19, v1

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .end local v1    # "height2":I
    .local v19, "height2":I
    if-ge v5, v1, :cond_117

    .line 526
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 527
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move/from16 v20, v3

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .end local v3    # "width1":I
    .local v20, "width1":I
    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v21, v4

    int-to-float v4, v5

    .end local v4    # "height1":I
    .local v21, "height1":I
    const v16, 0x3f99999a    # 1.2f

    div-float v4, v4, v16

    .line 528
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 527
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 553
    .end local v19    # "height2":I
    .restart local v1    # "height2":I
    move/from16 v24, v20

    move/from16 v25, v21

    goto/16 :goto_1ad

    .end local v1    # "height2":I
    .end local v20    # "width1":I
    .end local v21    # "height1":I
    .restart local v3    # "width1":I
    .restart local v4    # "height1":I
    .restart local v19    # "height2":I
    :cond_117
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v1, v19

    move/from16 v24, v20

    move/from16 v25, v21

    .end local v3    # "width1":I
    .end local v4    # "height1":I
    .restart local v20    # "width1":I
    .restart local v21    # "height1":I
    goto/16 :goto_1ad

    .line 532
    .end local v5    # "width2":I
    .end local v19    # "height2":I
    .end local v20    # "width1":I
    .end local v21    # "height1":I
    :cond_123
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 533
    .local v1, "width1":I
    int-to-float v3, v1

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 534
    .local v3, "height1":I
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v3, v4, :cond_161

    .line 536
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 537
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    move/from16 v22, v1

    int-to-float v1, v3

    .end local v1    # "width1":I
    .local v22, "width1":I
    const v16, 0x3f99999a    # 1.2f

    div-float v1, v1, v16

    .line 538
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 537
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 541
    .end local v22    # "width1":I
    .restart local v1    # "width1":I
    move v4, v3

    move v3, v1

    goto :goto_166

    :cond_161
    move/from16 v22, v1

    move v4, v3

    move/from16 v3, v22

    .end local v1    # "width1":I
    .local v3, "width1":I
    .restart local v4    # "height1":I
    :goto_166
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 542
    .local v1, "height2":I
    int-to-float v5, v1

    const v16, 0x3f99999a    # 1.2f

    div-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 543
    .restart local v5    # "width2":I
    move/from16 v23, v1

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .end local v1    # "height2":I
    .local v23, "height2":I
    if-ge v5, v1, :cond_1a7

    .line 545
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 546
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move/from16 v24, v3

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .end local v3    # "width1":I
    .local v24, "width1":I
    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v25, v4

    int-to-float v4, v5

    .end local v4    # "height1":I
    .local v25, "height1":I
    const v16, 0x3f99999a    # 1.2f

    mul-float v4, v4, v16

    .line 547
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 546
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v23    # "height2":I
    .restart local v1    # "height2":I
    goto :goto_1ad

    .line 553
    .end local v1    # "height2":I
    .end local v24    # "width1":I
    .end local v25    # "height1":I
    .restart local v3    # "width1":I
    .restart local v4    # "height1":I
    .restart local v23    # "height2":I
    :cond_1a7
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v1, v23

    .end local v3    # "width1":I
    .end local v4    # "height1":I
    .end local v23    # "height2":I
    .restart local v1    # "height2":I
    .restart local v24    # "width1":I
    .restart local v25    # "height1":I
    :goto_1ad
    sub-int v3, v12, v10

    if-gt v0, v3, :cond_1b8

    sub-int v3, v13, v11

    if-le v2, v3, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v3, 0x0

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v3, 0x1

    .line 554
    .local v3, "grows":Z
    :goto_1b9
    mul-int v4, v24, v25

    move/from16 v26, v0

    mul-int v0, v5, v1

    .end local v0    # "width":I
    .local v26, "width":I
    if-le v4, v0, :cond_1c3

    const/4 v0, 0x1

    goto :goto_1c4

    :cond_1c3
    const/4 v0, 0x0

    :goto_1c4
    if-ne v3, v0, :cond_1cd

    .line 555
    move/from16 v0, v24

    .line 556
    .end local v26    # "width":I
    .restart local v0    # "width":I
    move/from16 v2, v25

    .line 564
    move/from16 v26, v0

    goto :goto_1d5

    .line 558
    .end local v0    # "width":I
    .restart local v26    # "width":I
    :cond_1cd
    move v0, v5

    .line 559
    .end local v26    # "width":I
    .restart local v0    # "width":I
    nop

    .line 564
    .end local v2    # "height":I
    .end local v3    # "grows":Z
    .end local v5    # "width2":I
    .end local v24    # "width1":I
    .end local v25    # "height1":I
    .local v1, "height":I
    move/from16 v26, v0

    move v15, v1

    goto :goto_1d6

    .end local v1    # "height":I
    .restart local v2    # "height":I
    :cond_1d3
    move/from16 v26, v0

    .end local v0    # "width":I
    .end local v2    # "height":I
    .local v15, "height":I
    .restart local v26    # "width":I
    :goto_1d5
    move v15, v2

    :goto_1d6
    move-object v0, v7

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move/from16 v5, v26

    move/from16 v16, v6

    move v6, v15

    .end local v6    # "aspect":F
    .local v16, "aspect":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    .line 565
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .registers 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    .line 355
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 363
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 364
    sget v0, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr p4, v0

    .line 365
    sget v0, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr p5, v0

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mIsFreeFormMode:Z

    .line 369
    :cond_1c
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "startBounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 376
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 377
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 378
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 380
    const/4 v1, 0x1

    if-eqz p1, :cond_48

    .line 381
    iget v2, p5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_18

    .line 382
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 384
    :cond_18
    iget v2, p5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_25

    .line 385
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 387
    :cond_25
    iget v2, p5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_32

    .line 388
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 390
    :cond_32
    iget v2, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_3f

    .line 391
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 393
    :cond_3f
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v2, :cond_45

    move v2, v1

    goto :goto_46

    :cond_45
    move v2, v0

    :goto_46
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 400
    :cond_48
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v2, v3, :cond_54

    move v0, v1

    nop

    :cond_54
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 406
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_81

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 408
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 409
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_81

    .line 409
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 426
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 427
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 674
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_c

    .line 323
    const-string v0, "WindowManager"

    const-string v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 327
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 331
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 332
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 333
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 334
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 336
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 337
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 338
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 346
    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "newWidth"    # I
    .param p6, "newHeight"    # I

    .line 580
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 581
    sub-int p1, p3, p5

    goto :goto_b

    .line 583
    :cond_9
    add-int p3, p1, p5

    .line 585
    :goto_b
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    .line 586
    sub-int p2, p4, p6

    goto :goto_16

    .line 588
    :cond_14
    add-int p4, p2, p6

    .line 591
    :goto_16
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 594
    return-void
.end method
