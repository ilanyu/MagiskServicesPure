.class Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MiuiGestureRecentsStrategy.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureRecentsAnimatorUpdateListener"
.end annotation


# instance fields
.field private mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

.field private mWin:Lcom/android/server/wm/WindowState;

.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;)V
    .registers 4
    .param p2, "w"    # Lcom/android/server/wm/WindowState;
    .param p3, "info"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 421
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    .line 423
    iput-object p3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 424
    return-void
.end method

.method private onAnimationUpdateLocked(Landroid/animation/ValueAnimator;)V
    .registers 15
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    .line 439
    return-void

    .line 442
    :cond_5
    const-string/jumbo v0, "recents"

    invoke-static {v0}, Lcom/android/server/wm/FullScreenEventReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v0, "clipRect":Landroid/graphics/Rect;
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 446
    .local v1, "curBottom":I
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 448
    .local v2, "fraction":F
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_34

    .line 449
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_35

    :cond_34
    move v3, v5

    .line 450
    .local v3, "offsetY":I
    :goto_35
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    iget-object v6, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 452
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 453
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    .line 455
    :cond_4a
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 456
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 459
    :goto_4f
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 460
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1100(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 463
    :cond_62
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v4, :cond_6d

    move v5, v7

    nop

    :cond_6d
    move v4, v5

    .line 465
    .local v4, "isHome":Z
    iget-object v5, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 466
    .local v5, "type":I
    if-eq v5, v7, :cond_79

    const/4 v6, 0x3

    if-ne v5, v6, :cond_111

    .line 468
    :cond_79
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    const-string/jumbo v7, "translate_x"

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    # setter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransX:F
    invoke-static {v6, v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1202(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F

    .line 469
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    const-string/jumbo v7, "translate_y"

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 470
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F
    invoke-static {v9}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 469
    # setter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransY:F
    invoke-static {v6, v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1302(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F

    .line 471
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    const-string/jumbo v7, "scale"

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    # setter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F
    invoke-static {v6, v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1402(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F

    .line 473
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 474
    .local v6, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v6, :cond_bf

    .line 475
    return-void

    .line 478
    :cond_bf
    if-nez v4, :cond_ca

    .line 479
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 482
    :cond_ca
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransX:F
    invoke-static {v8}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 483
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransY:F
    invoke-static {v9}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1300(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F

    move-result v9

    .line 482
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wm/MiuiGestureAnimator;->setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V

    .line 484
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F
    invoke-static {v8}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 485
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F
    invoke-static {v8}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F

    move-result v12

    .line 484
    move-object v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/MiuiGestureAnimator;->setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V

    .line 486
    sget v7, Lcom/android/server/wm/AppTransitionInjector;->DISPLAY_ROUND_CORNER_RADIUS:I

    .line 487
    .local v7, "displayRoundCorner":I
    int-to-float v8, v7

    add-int/lit8 v9, v7, -0x3c

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    .line 489
    .local v8, "cornerRadius":F
    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v9}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lcom/android/server/wm/MiuiGestureAnimator;->setRoundCorner(Lcom/android/server/wm/AppWindowToken;F)V

    .line 491
    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v9}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 493
    .end local v6    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "displayRoundCorner":I
    .end local v8    # "cornerRadius":F
    :cond_111
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 429
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;->onAnimationUpdateLocked(Landroid/animation/ValueAnimator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 434
    goto :goto_8

    .line 430
    :catch_4
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
