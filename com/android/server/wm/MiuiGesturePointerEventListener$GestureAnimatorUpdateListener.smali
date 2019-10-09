.class Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureAnimatorUpdateListener"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

.field private mIsRecent:Z

.field private mWin:Lcom/android/server/wm/WindowState;

.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/animation/ValueAnimator;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)V
    .registers 6
    .param p2, "animator"    # Landroid/animation/ValueAnimator;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;
    .param p4, "info"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .param p5, "isRecent"    # Z

    .line 1447
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1449
    iput-object p3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    .line 1450
    iput-object p4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 1451
    iput-boolean p5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    .line 1452
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_a

    goto/16 :goto_11d

    .line 1461
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    if-eqz v0, :cond_12

    .line 1462
    const-string/jumbo v0, "recents"

    goto :goto_14

    .line 1463
    :cond_12
    const-string v0, "cancel"

    .line 1461
    :goto_14
    invoke-static {v0}, Lcom/android/server/wm/FullScreenEventReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    .line 1465
    const-string v0, "clip"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1466
    .local v0, "curBottom":I
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 1468
    .local v1, "fraction":F
    iget-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_3f

    .line 1470
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_40

    :cond_3f
    move v2, v4

    .line 1471
    .local v2, "offsetY":I
    :goto_40
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    iget-object v6, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1473
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1474
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1475
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    .line 1477
    :cond_67
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 1478
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1481
    :goto_78
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v3, :cond_83

    move v4, v6

    nop

    :cond_83
    move v3, v4

    .line 1483
    .local v3, "isHome":Z
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1484
    .local v4, "type":I
    if-eq v4, v6, :cond_8f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11c

    .line 1486
    :cond_8f
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const-string/jumbo v6, "translateX"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    # setter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransX:F
    invoke-static {v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1402(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F

    .line 1487
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const-string/jumbo v6, "translateY"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 1488
    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F
    invoke-static {v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1600(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 1487
    # setter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransY:F
    invoke-static {v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1502(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F

    .line 1489
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const-string/jumbo v6, "scale"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    # setter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F
    invoke-static {v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1602(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F

    .line 1491
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1492
    .local v5, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v5, :cond_d5

    .line 1493
    return-void

    .line 1496
    :cond_d5
    if-nez v3, :cond_e6

    .line 1497
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 1500
    :cond_e6
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransX:F
    invoke-static {v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1400(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 1501
    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransY:F
    invoke-static {v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1500(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F

    move-result v8

    .line 1500
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/wm/MiuiGestureAnimator;->setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V

    .line 1502
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F
    invoke-static {v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1600(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F
    invoke-static {v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1600(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F

    move-result v11

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/MiuiGestureAnimator;->setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V

    .line 1503
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11c} :catch_11e

    .line 1508
    .end local v0    # "curBottom":I
    .end local v1    # "fraction":F
    .end local v2    # "offsetY":I
    .end local v3    # "isHome":Z
    .end local v4    # "type":I
    .end local v5    # "aToken":Lcom/android/server/wm/AppWindowToken;
    :cond_11c
    goto :goto_12a

    .line 1458
    :cond_11d
    :goto_11d
    return-void

    .line 1505
    :catch_11e
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "onAnimationUpdate exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12a
    return-void
.end method
