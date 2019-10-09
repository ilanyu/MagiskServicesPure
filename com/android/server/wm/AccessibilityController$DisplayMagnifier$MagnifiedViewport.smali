.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# instance fields
.field private final mBorderWidth:F

.field private final mCircularPath:Landroid/graphics/Path;

.field private final mDrawBorderInset:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mOldMagnificationRegion:Landroid/graphics/Region;

.field private mTempLayer:I

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V
    .registers 7

    .line 475
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 453
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    .line 455
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 457
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    .line 458
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 462
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 476
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    .line 477
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    .line 479
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 480
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 481
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 483
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 484
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    .line 485
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 486
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    .line 487
    .local p1, "centerXY":I
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p1

    int-to-float v3, p1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 488
    .end local p1    # "centerXY":I
    goto :goto_af

    .line 489
    :cond_ac
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    .line 492
    :goto_af
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 493
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 446
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 446
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method public static synthetic lambda$populateWindowsOnScreenLocked$0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "outWindows"    # Landroid/util/SparseArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 676
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_26

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v0, :cond_26

    .line 679
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 680
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    :cond_26
    return-void
.end method

.method private populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 673
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 674
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 675
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$DisplayMagnifier$MagnifiedViewport$ZNyFGy-UXiWV1D2yZGvH-9qN0AA;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$DisplayMagnifier$MagnifiedViewport$ZNyFGy-UXiWV1D2yZGvH-9qN0AA;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 683
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 670
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .registers 2

    .line 664
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 666
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 497
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 649
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 650
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 651
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 652
    return-void
.end method

.method public isMagnifyingLocked()Z
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onRotationChangedLocked()V
    .registers 5

    .line 627
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 628
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 630
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 631
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 633
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 635
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 637
    return-void
.end method

.method public recomputeBoundsLocked()V
    .registers 24

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 516
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 517
    .local v1, "screenWidth":I
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->y:I

    .line 519
    .local v8, "screenHeight":I
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 520
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v10

    .line 521
    .local v10, "availableBounds":Landroid/graphics/Region;
    invoke-virtual {v10, v9, v9, v1, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 523
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    if-eqz v2, :cond_2d

    .line 524
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    invoke-virtual {v10, v2, v10}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 527
    :cond_2d
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v11

    .line 528
    .local v11, "nonMagnifiedBounds":Landroid/graphics/Region;
    invoke-virtual {v11, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 530
    iget-object v12, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    .line 531
    .local v12, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 532
    invoke-direct {v0, v12}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 534
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 535
    .local v13, "visibleWindowCount":I
    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    :goto_44
    move v14, v2

    .end local v2    # "i":I
    .local v14, "i":I
    if-ltz v14, :cond_127

    .line 536
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 537
    .local v15, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7eb

    if-eq v2, v3, :cond_122

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_61

    .line 540
    goto/16 :goto_122

    .line 544
    :cond_61
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 545
    .local v7, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {v15, v7}, Lcom/android/server/wm/AccessibilityController;->access$400(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 546
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v6

    .line 547
    .local v6, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {v15, v6}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 548
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v5

    .line 549
    .local v5, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 550
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 551
    .local v4, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 552
    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 553
    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 554
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v3

    .line 555
    .local v3, "windowBounds":Landroid/graphics/Region;
    iget v2, v4, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    move-object/from16 v16, v5

    iget v5, v4, Landroid/graphics/RectF;->right:F

    .end local v5    # "touchableFrame":Landroid/graphics/Rect;
    .local v16, "touchableFrame":Landroid/graphics/Rect;
    float-to-int v5, v5

    move-object/from16 v17, v6

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    .end local v6    # "touchableRegion":Landroid/graphics/Region;
    .local v17, "touchableRegion":Landroid/graphics/Region;
    float-to-int v6, v6

    invoke-virtual {v3, v2, v9, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 558
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v9

    .line 559
    .local v9, "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 560
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 561
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v9, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 563
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 564
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 565
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v10, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_dc

    .line 567
    :cond_d2
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 568
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 572
    :goto_dc
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v6

    .line 573
    .local v6, "accountedBounds":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 574
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 575
    const/4 v5, 0x0

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, v6

    move-object/from16 v20, v3

    move v3, v5

    .end local v3    # "windowBounds":Landroid/graphics/Region;
    .local v20, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v21, v4

    move/from16 v4, v18

    .end local v4    # "windowFrame":Landroid/graphics/RectF;
    .local v21, "windowFrame":Landroid/graphics/RectF;
    move v5, v1

    move-object/from16 v22, v6

    move v6, v8

    .end local v6    # "accountedBounds":Landroid/graphics/Region;
    .local v22, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v18, v7

    move-object/from16 v7, v19

    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .local v18, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 577
    move-object/from16 v2, v22

    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    .end local v22    # "accountedBounds":Landroid/graphics/Region;
    .local v2, "accountedBounds":Landroid/graphics/Region;
    if-eqz v3, :cond_122

    .line 578
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v3

    .line 579
    .local v3, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 580
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v1, :cond_122

    .line 581
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v4, v8, :cond_122

    .line 582
    goto :goto_127

    .line 535
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v3    # "accountedFrame":Landroid/graphics/Rect;
    .end local v9    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v15    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v16    # "touchableFrame":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v18    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "windowBounds":Landroid/graphics/Region;
    .end local v21    # "windowFrame":Landroid/graphics/RectF;
    :cond_122
    :goto_122
    add-int/lit8 v2, v14, -0x1

    .end local v14    # "i":I
    .local v2, "i":I
    const/4 v9, 0x0

    goto/16 :goto_44

    .line 587
    .end local v2    # "i":I
    :cond_127
    :goto_127
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 589
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    iget v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    iget v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v19, v1, v5

    iget v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v20, v8, v5

    sget-object v21, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 593
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    .line 594
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 595
    .local v2, "magnifiedChanged":Z
    if-eqz v2, :cond_1b7

    .line 596
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 597
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v4

    .line 598
    .local v4, "dirtyRect":Landroid/graphics/Rect;
    iget-boolean v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v5, :cond_178

    .line 599
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 600
    iget v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    iget v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    iget v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v7, v1, v7

    iget v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v9, v8, v9

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_197

    .line 605
    :cond_178
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v5

    .line 606
    .local v5, "dirtyRegion":Landroid/graphics/Region;
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 607
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 608
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 609
    invoke-virtual {v5, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 610
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 613
    .end local v5    # "dirtyRegion":Landroid/graphics/Region;
    :goto_197
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 614
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 615
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-static {v6}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 616
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 618
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 620
    .end local v4    # "dirtyRect":Landroid/graphics/Rect;
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1b7
    return-void
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .registers 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 640
    if-eqz p1, :cond_b

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 644
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 645
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 500
    if-eqz p1, :cond_e

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    goto :goto_13

    .line 503
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 507
    :goto_13
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 509
    nop

    .line 510
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v1

    .line 509
    :goto_34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 512
    :cond_37
    return-void
.end method
