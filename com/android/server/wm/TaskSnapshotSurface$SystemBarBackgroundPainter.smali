.class Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSysUiVis:I

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 9
    .param p1, "windowFlags"    # I
    .param p2, "windowPrivateFlags"    # I
    .param p3, "sysUiVis"    # I
    .param p4, "statusBarColor"    # I
    .param p5, "navigationBarColor"    # I

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    .line 470
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    .line 471
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 472
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 481
    iput p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 482
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 483
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    .line 484
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 485
    .local v0, "context":Landroid/content/Context;
    nop

    .line 486
    const v1, 0x106016e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 485
    invoke-static {p1, v1, p4}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 488
    iput p5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .registers 6

    .line 510
    sget-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;

    .line 515
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 517
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 534
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 536
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 537
    .local v1, "visible":Z
    if-eqz v1, :cond_2d

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 538
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 540
    :cond_2d
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;
    .param p3, "statusBarHeight"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 522
    if-lez p3, :cond_35

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_14

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_35

    .line 524
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v0

    .line 526
    .local v0, "rightInset":I
    if-eqz p2, :cond_25

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 527
    .local v1, "left":I
    :goto_26
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 529
    .end local v0    # "rightInset":I
    .end local v1    # "left":I
    :cond_35
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .registers 7

    .line 499
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 501
    .local v0, "forceStatusBarBackground":Z
    :goto_b
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v1

    return v1

    .line 505
    :cond_26
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "contentInsets"    # Landroid/graphics/Rect;
    .param p2, "stableInsets"    # Landroid/graphics/Rect;

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 496
    return-void
.end method
