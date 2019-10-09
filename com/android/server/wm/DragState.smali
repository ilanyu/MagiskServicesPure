.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field mDragInProgress:Z

.field mDragResult:Z

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/DragDropController;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "surface"    # Landroid/view/SurfaceControl;
    .param p5, "flags"    # I
    .param p6, "localWin"    # Landroid/os/IBinder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 118
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 125
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 126
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 127
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 128
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DragState;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 9

    .line 620
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v1, "x"

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 621
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "y"

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v7, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v4, v7

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    aput v4, v3, v6

    .line 623
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "scale"

    new-array v3, v2, [F

    fill-array-data v3, :array_7a

    .line 625
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v3, v2, v5

    const/4 v3, 0x0

    aput v3, v2, v6

    .line 626
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 620
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 627
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 628
    .local v1, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 630
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 631
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-object v0

    nop

    :array_7a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 13

    .line 590
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v1, "x"

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v6

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 591
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "y"

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v7, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v4, v7

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v7, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v4, v7

    aput v4, v3, v6

    .line 594
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "scale"

    new-array v3, v2, [F

    fill-array-data v3, :array_ba

    .line 597
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v2, v6

    .line 598
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 590
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 601
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v1, v2

    .line 602
    .local v1, "translateX":F
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v2, v3

    .line 604
    .local v2, "translateY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 605
    .local v3, "travelDistance":D
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    .line 606
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 607
    .local v5, "displayDiagonal":D
    div-double v7, v3, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/16 v9, 0xc3

    add-long/2addr v9, v7

    .line 609
    .local v9, "duration":J
    new-instance v7, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 610
    .local v7, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 611
    iget-object v8, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 612
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 615
    iget-object v8, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;

    invoke-direct {v11, v0}, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    return-object v0

    nop

    :array_ba
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 638
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 365
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 366
    return v0

    .line 368
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v1

    if-nez v1, :cond_b

    .line 369
    return v0

    .line 371
    :cond_b
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 373
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 374
    return v0

    .line 378
    :cond_22
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v1, :cond_34

    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    .line 378
    :goto_35
    return v0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 408
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_16

    .line 409
    const/4 v0, 0x1

    return v0

    .line 411
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_16
    goto :goto_6

    .line 412
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$broadcastDragStartedLocked$0(Lcom/android/server/wm/DragState;FFLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 333
    return-void
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 633
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 615
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .registers 22
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p8, "result"    # Z

    move-object v0, p0

    .line 583
    move v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v10

    .line 584
    .local v10, "winX":F
    move/from16 v11, p3

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v12

    .line 585
    .local v12, "winY":F
    move v2, p1

    move v3, v10

    move v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v2 .. v9}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .registers 15
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .line 346
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_61

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 347
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 350
    .local v0, "event":Landroid/view/DragEvent;
    :try_start_17
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_31
    .catchall {:try_start_17 .. :try_end_21} :catchall_2f

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_61

    .line 358
    :goto_2b
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_61

    .line 357
    :catchall_2f
    move-exception v1

    goto :goto_53

    .line 353
    :catch_31
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-start window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    .line 357
    .end local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_61

    goto :goto_2b

    :goto_53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_60

    .line 358
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    :cond_60
    throw v1

    .line 362
    .end local v0    # "event":Landroid/view/DragEvent;
    :cond_61
    :goto_61
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 385
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

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


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .registers 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 312
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 313
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 321
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 323
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 324
    .local v1, "userManager":Landroid/os/UserManagerInternal;
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;-><init>(Lcom/android/server/wm/DragState;FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 334
    return-void
.end method

.method cancelDragLocked()V
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 428
    return-void

    .line 430
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-nez v0, :cond_d

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 436
    return-void

    .line 438
    :cond_d
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 439
    return-void
.end method

.method closeLocked()V
    .registers 16

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 145
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 150
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7e

    .line 151
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 156
    .local v0, "myPid":I
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 157
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    .line 158
    .local v5, "x":F
    const/4 v6, 0x0

    .line 159
    .local v6, "y":F
    iget-boolean v7, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v7, :cond_43

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    iget v8, p0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v7, v8, :cond_43

    .line 161
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 162
    iget v6, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 164
    :cond_43
    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-boolean v14, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v8, v5

    move v9, v6

    invoke-static/range {v7 .. v14}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v7

    .line 167
    .local v7, "evt":Landroid/view/DragEvent;
    :try_start_50
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8, v7}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56

    .line 170
    goto :goto_6d

    .line 168
    :catch_56
    move-exception v8

    .line 169
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_6d
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v8, :cond_76

    .line 174
    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    .line 176
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "evt":Landroid/view/DragEvent;
    :cond_76
    goto :goto_25

    .line 177
    :cond_77
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 178
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 182
    .end local v0    # "myPid":I
    :cond_7e
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 184
    iput v2, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 188
    :cond_93
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9e

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 190
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 192
    :cond_9e
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_ad

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_ad

    .line 193
    const-string v0, "WindowManager"

    const-string v3, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_ad
    iput v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 197
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 198
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 199
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 201
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 205
    return-void
.end method

.method endDragLocked()V
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 417
    return-void

    .line 419
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_10

    .line 420
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 421
    return-void

    .line 423
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 424
    return-void
.end method

.method getDragLayerLocked()I
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    :goto_a
    return-object v0
.end method

.method getInputWindowHandle()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    :goto_a
    return-object v0
.end method

.method isInProgress()Z
    .registers 2

    .line 575
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method notifyDropLocked(FF)V
    .registers 21
    .param p1, "x"    # F
    .param p2, "y"    # F

    move-object/from16 v1, p0

    move/from16 v11, p1

    .line 512
    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    .line 513
    return-void

    .line 515
    :cond_b
    iput v11, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 516
    iput v12, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 518
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v13

    .line 520
    .local v13, "touchedWin":Lcom/android/server/wm/WindowState;
    invoke-direct {v1, v13}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_22

    .line 523
    iput-boolean v14, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 525
    return-void

    .line 530
    :cond_22
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 533
    .local v15, "targetUserId":I
    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_50

    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_50

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_50

    .line 535
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, v1, Lcom/android/server/wm/DragState;->mUid:I

    .line 538
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v6, v2, 0xc3

    iget v7, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v0

    move v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    .local v0, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_51

    .line 543
    .end local v0    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_50
    const/4 v0, 0x0

    .local v9, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_51
    move-object v9, v0

    .line 545
    iget v0, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v0, v15, :cond_61

    .line 546
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_61

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v2, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->fixUris(I)V

    .line 550
    :cond_61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 551
    .local v10, "myPid":I
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 552
    .local v8, "token":Landroid/os/IBinder;
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/16 v16, 0x0

    move-object v2, v13

    move v4, v11

    move v5, v12

    move-object v14, v8

    move-object v8, v0

    .end local v8    # "token":Landroid/os/IBinder;
    .local v14, "token":Landroid/os/IBinder;
    move v11, v10

    move/from16 v10, v16

    .end local v10    # "myPid":I
    .local v11, "myPid":I
    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    move-object v2, v0

    .line 555
    .local v2, "evt":Landroid/view/DragEvent;
    :try_start_7f
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 558
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_8a} :catch_96
    .catchall {:try_start_7f .. :try_end_8a} :catchall_94

    .line 563
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v0, :cond_b7

    .line 564
    :goto_90
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_b7

    .line 563
    :catchall_94
    move-exception v0

    goto :goto_ba

    .line 559
    :catch_96
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_97
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t send drop notification to win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_94

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v0, :cond_b7

    goto :goto_90

    .line 567
    :cond_b7
    :goto_b7
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 568
    return-void

    .line 563
    :goto_ba
    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v3, :cond_c3

    .line 564
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    :cond_c3
    throw v0
.end method

.method notifyLocationLocked(FF)V
    .registers 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    move-object/from16 v1, p0

    .line 467
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 468
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_15

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 471
    const/4 v0, 0x0

    .line 475
    .end local v0    # "touchedWin":Lcom/android/server/wm/WindowState;
    .local v13, "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_15
    move-object v13, v0

    :try_start_16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 478
    .local v0, "myPid":I
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v13, v2, :cond_49

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_49

    .line 483
    iget-object v14, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 485
    .local v2, "evt":Landroid/view/DragEvent;
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 486
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_49

    .line 487
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 490
    .end local v2    # "evt":Landroid/view/DragEvent;
    :cond_49
    if-eqz v13, :cond_66

    .line 494
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    move v4, v11

    move v5, v12

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 496
    .restart local v2    # "evt":Landroid/view/DragEvent;
    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 497
    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_66

    .line 498
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_66} :catch_67

    .line 503
    .end local v0    # "myPid":I
    .end local v2    # "evt":Landroid/view/DragEvent;
    :cond_66
    goto :goto_6f

    .line 501
    :catch_67
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    iput-object v13, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    .line 505
    return-void
.end method

.method notifyMoveLocked(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 443
    return-void

    .line 445
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 446
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 453
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_28

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "notifyMoveLw"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 461
    nop

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V

    .line 463
    return-void

    .line 458
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "notifyMoveLw"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method overridePointerIconLocked(I)V
    .registers 4
    .param p1, "touchSource"    # I

    .line 642
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 643
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 644
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 646
    :cond_13
    return-void
.end method

.method register(Landroid/view/Display;)V
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_11

    .line 296
    const-string v0, "WindowManager"

    const-string v1, "Duplicate register of drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 298
    :cond_11
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 301
    :goto_20
    return-void
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_14

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 397
    return-void

    .line 402
    :cond_b
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 404
    :cond_14
    return-void
.end method
