.class Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;
.super Ljava/lang/Object;
.source "MiuiGestureRecentsStrategy.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleRestartFromRecentsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

.field final synthetic val$winFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 351
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->val$winFrame:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 16
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 354
    const-string/jumbo v0, "translate_x"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 355
    .local v0, "transX":F
    const-string/jumbo v1, "translate_y"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 356
    .local v1, "transY":F
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 357
    .local v2, "scale":F
    const-string/jumbo v3, "top"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 358
    .local v9, "top":I
    const-string v3, "bottom"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 360
    .local v10, "bottom":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->val$winFrame:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v11, v3

    .line 361
    .local v11, "tmp":Landroid/graphics/Rect;
    iput v9, v11, Landroid/graphics/Rect;->top:I

    .line 362
    iput v10, v11, Landroid/graphics/Rect;->bottom:I

    .line 364
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$600(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_56
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 365
    .local v13, "aToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/wm/MiuiGestureAnimator;->recreateLeashIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 366
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 367
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    invoke-virtual {v3, v13, v0, v1}, Lcom/android/server/wm/MiuiGestureAnimator;->setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V

    .line 368
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v13

    move v5, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MiuiGestureAnimator;->setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V

    .line 369
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/wm/MiuiGestureAnimator;->setDefaultRoundCorner(Lcom/android/server/wm/AppWindowToken;)V

    .line 370
    .end local v13    # "aToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_56

    .line 371
    :cond_96
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 373
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mIsRestartAppTokenVisible:Z
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$800(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Z

    move-result v3

    if-nez v3, :cond_ed

    .line 374
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mWms:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$900(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 375
    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$600(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 376
    .local v5, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/MiuiGestureAnimator;->showAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 377
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;
    invoke-static {v6}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 378
    .end local v5    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_bd

    .line 379
    :cond_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_b0 .. :try_end_dd} :catchall_e7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 381
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mIsRestartAppTokenVisible:Z
    invoke-static {v3, v4}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$802(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Z)Z

    goto :goto_ed

    .line 379
    :catchall_e7
    move-exception v4

    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 383
    :cond_ed
    :goto_ed
    return-void
.end method
