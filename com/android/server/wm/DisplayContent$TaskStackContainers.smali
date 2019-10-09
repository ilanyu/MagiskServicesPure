.class final Lcom/android/server/wm/DisplayContent$TaskStackContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/TaskStack;",
        ">;"
    }
.end annotation


# instance fields
.field mAppAnimationLayer:Landroid/view/SurfaceControl;

.field mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private mPinnedStack:Lcom/android/server/wm/TaskStack;

.field mPipAnimationLayer:Landroid/view/SurfaceControl;

.field mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 3385
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 3386
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 3358
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3359
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3360
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3362
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    .line 3377
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 3381
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 3382
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    .line 3383
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 3387
    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .line 3524
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 3526
    .local v0, "addIndex":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 3527
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3528
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 3483
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3484
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_d

    .line 3488
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_36

    .line 3485
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already exist on display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3490
    :cond_36
    :goto_36
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 3491
    .local v0, "windowingMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6d

    .line 3492
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_44

    .line 3497
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_a8

    .line 3493
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already exist on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3498
    :cond_6d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a8

    .line 3499
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_7f

    .line 3504
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 3505
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    goto :goto_a8

    .line 3500
    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already exist on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3507
    :cond_a8
    :goto_a8
    return-void
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .registers 11
    .param p1, "requestedPosition"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "adding"    # Z

    .line 3570
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3571
    .local v0, "topChildPosition":I
    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-ne p1, v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    .line 3572
    .local v3, "toTop":Z
    :goto_11
    if-eqz p3, :cond_1a

    add-int/lit8 v4, v0, 0x1

    if-lt p1, v4, :cond_18

    goto :goto_1e

    .line 3573
    :cond_18
    :goto_18
    move v1, v2

    goto :goto_1e

    :cond_1a
    if-lt p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    goto :goto_18

    :goto_1e
    or-int/2addr v1, v3

    .line 3574
    .end local v3    # "toTop":Z
    .local v1, "toTop":Z
    move v2, p1

    .line 3576
    .local v2, "targetPosition":I
    if-eqz v1, :cond_60

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_60

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # invokes: Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z
    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 3578
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 3579
    .local v3, "topStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_47

    .line 3588
    if-eqz p3, :cond_43

    move v4, v0

    goto :goto_45

    :cond_43
    add-int/lit8 v4, v0, -0x1

    :goto_45
    move v2, v4

    .end local v3    # "topStack":Lcom/android/server/wm/TaskStack;
    goto :goto_60

    .line 3580
    .restart local v3    # "topStack":Lcom/android/server/wm/TaskStack;
    :cond_47
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pinned stack isn\'t top stack??? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3592
    .end local v3    # "topStack":Lcom/android/server/wm/TaskStack;
    :cond_60
    :goto_60
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-static {v1, p2, v3, v2, p3}, Lcom/android/server/wm/DisplayContentInjector;->getFullScreenIndex(ZLcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowList;IZ)I

    move-result v2

    .line 3594
    return v2
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 11
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 3624
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_31

    .line 3625
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_5e

    .line 3626
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3627
    .local v3, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "j":I
    :goto_1c
    if-ltz v4, :cond_2e

    .line 3628
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3630
    return v1

    .line 3627
    :cond_2b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 3625
    .end local v3    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v4    # "j":I
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 3635
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 3636
    .local v2, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_38
    if-ge v3, v2, :cond_5e

    .line 3637
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3638
    .local v4, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    .line 3639
    .local v5, "appTokensCount":I
    move v6, v0

    .local v6, "j":I
    :goto_49
    if-ge v6, v5, :cond_5b

    .line 3640
    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 3642
    return v1

    .line 3639
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 3636
    .end local v4    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v5    # "appTokensCount":I
    .end local v6    # "j":I
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 3647
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_5e
    return v0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "visibleTasks"    # Ljava/util/ArrayList;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 3441
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3442
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3444
    :cond_9
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 3510
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 3511
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 3512
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_f

    .line 3513
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 3514
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_22

    .line 3515
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 3517
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 3519
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 3521
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .line 3468
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 3469
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    .line 3470
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3471
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3747
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 3749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 3750
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 3751
    .local v1, "s":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3749
    .end local v1    # "s":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3753
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 19
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v0, p0

    .line 3757
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3758
    .local v2, "HOME_STACK_STATE":I
    const/4 v3, 0x1

    .line 3759
    .local v3, "NORMAL_STACK_STATE":I
    const/4 v4, 0x2

    .line 3761
    .local v4, "ALWAYS_ON_TOP_STATE":I
    const/4 v5, 0x0

    .line 3762
    .local v5, "layer":I
    const/4 v6, 0x0

    .line 3763
    .local v6, "layerForAnimationLayer":I
    const/4 v7, 0x0

    .line 3764
    .local v7, "layerForBoostedAnimationLayer":I
    const/4 v8, 0x0

    .line 3766
    .local v8, "layerForHomeAnimationLayer":I
    const/4 v9, 0x0

    .line 3768
    .local v9, "layerForPipAnimationLayer":I
    const/4 v10, 0x0

    move v11, v5

    move v5, v10

    .local v5, "state":I
    .local v11, "layer":I
    :goto_f
    const/4 v12, 0x2

    if-gt v5, v12, :cond_8e

    .line 3769
    move v13, v7

    move v7, v6

    move v6, v10

    .local v6, "i":I
    .local v7, "layerForAnimationLayer":I
    .local v13, "layerForBoostedAnimationLayer":I
    :goto_15
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    if-ge v6, v14, :cond_7b

    .line 3770
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskStack;

    .line 3771
    .local v14, "s":Lcom/android/server/wm/TaskStack;
    if-nez v5, :cond_2e

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v15

    if-nez v15, :cond_2e

    .line 3772
    goto :goto_78

    .line 3773
    :cond_2e
    const/4 v15, 0x1

    if-ne v5, v15, :cond_3e

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v15

    if-nez v15, :cond_78

    .line 3774
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v15

    if-eqz v15, :cond_3e

    .line 3775
    goto :goto_78

    .line 3776
    :cond_3e
    if-ne v5, v12, :cond_47

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v15

    if-nez v15, :cond_47

    .line 3777
    goto :goto_78

    .line 3779
    :cond_47
    add-int/lit8 v15, v11, 0x1

    .local v15, "layer":I
    invoke-virtual {v14, v1, v11}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 3780
    .end local v11    # "layer":I
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_5f

    iget-object v11, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-eqz v11, :cond_5f

    .line 3781
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    add-int/lit8 v16, v15, 0x1

    .local v16, "layer":I
    invoke-virtual {v1, v11, v15}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3783
    .end local v15    # "layer":I
    move/from16 v15, v16

    .end local v16    # "layer":I
    .restart local v15    # "layer":I
    :cond_5f
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isTaskAnimating()Z

    move-result v11

    if-nez v11, :cond_6b

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAppAnimating()Z

    move-result v11

    if-eqz v11, :cond_71

    :cond_6b
    if-eq v5, v12, :cond_71

    .line 3787
    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "layer":I
    move v7, v15

    .line 3789
    .end local v15    # "layer":I
    move v15, v11

    .end local v11    # "layer":I
    .restart local v15    # "layer":I
    :cond_71
    if-eq v5, v12, :cond_77

    .line 3790
    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "layer":I
    move v13, v15

    .end local v14    # "s":Lcom/android/server/wm/TaskStack;
    .end local v15    # "layer":I
    goto :goto_78

    .line 3769
    .end local v11    # "layer":I
    .restart local v15    # "layer":I
    :cond_77
    move v11, v15

    .end local v15    # "layer":I
    .restart local v11    # "layer":I
    :cond_78
    :goto_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 3793
    .end local v6    # "i":I
    :cond_7b
    if-nez v5, :cond_81

    .line 3794
    add-int/lit8 v6, v11, 0x1

    .local v6, "layer":I
    move v8, v11

    .end local v11    # "layer":I
    goto :goto_82

    .line 3797
    .end local v6    # "layer":I
    .restart local v11    # "layer":I
    :cond_81
    move v6, v11

    .end local v11    # "layer":I
    .restart local v6    # "layer":I
    :goto_82
    if-ne v5, v12, :cond_88

    .line 3798
    add-int/lit8 v11, v6, 0x1

    .line 3768
    .end local v9    # "layerForPipAnimationLayer":I
    .local v6, "layerForPipAnimationLayer":I
    .restart local v11    # "layer":I
    move v9, v6

    goto :goto_89

    .end local v11    # "layer":I
    .local v6, "layer":I
    .restart local v9    # "layerForPipAnimationLayer":I
    :cond_88
    move v11, v6

    .end local v6    # "layer":I
    .restart local v11    # "layer":I
    :goto_89
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    move v7, v13

    goto :goto_f

    .line 3802
    .end local v5    # "state":I
    .end local v13    # "layerForBoostedAnimationLayer":I
    .local v6, "layerForAnimationLayer":I
    .local v7, "layerForBoostedAnimationLayer":I
    :cond_8e
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_97

    .line 3803
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3805
    :cond_97
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_a0

    .line 3806
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3808
    :cond_a0
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_a9

    .line 3809
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3812
    :cond_a9
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_b2

    .line 3813
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3816
    :cond_b2
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 3600
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 3601
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3602
    return v0

    .line 3604
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3605
    return v0

    .line 3608
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3609
    return v0

    .line 3611
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3612
    return v0

    .line 3615
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 3
    .param p1, "animationLayer"    # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 3820
    packed-switch p1, :pswitch_data_10

    .line 3831
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 3827
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 3824
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 3822
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 4

    .line 3424
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mDisplayId:I
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-nez v0, :cond_22

    .line 3425
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getOrientation()I
    .registers 7

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eqz v0, :cond_5d

    .line 3688
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isReallyVisible()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3690
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3696
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 3697
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3698
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    .line 3699
    .local v0, "orientation":I
    if-eq v0, v3, :cond_44

    .line 3700
    return v0

    .line 3705
    .end local v0    # "orientation":I
    :cond_44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSpecificVisibleStack(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3706
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3707
    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 3708
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v1

    .line 3709
    .local v1, "orientation":I
    if-eq v1, v3, :cond_5c

    .line 3710
    return v1

    .line 3714
    .end local v1    # "orientation":I
    :cond_5c
    return v2

    .line 3717
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5d
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    .line 3718
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 3720
    .local v4, "isCar":Z
    if-eqz v4, :cond_72

    .line 3726
    return v2

    .line 3729
    :cond_72
    if-eq v0, v3, :cond_77

    if-eq v0, v1, :cond_77

    .line 3734
    return v0

    .line 3742
    :cond_77
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mLastOrientation:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    return v1
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 3431
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSpecificVisibleStack(I)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowMode"    # I

    .line 3450
    const/4 v0, 0x0

    .line 3451
    .local v0, "result":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_d
    if-ltz v1, :cond_2e

    .line 3452
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 3453
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3454
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v3

    if-ne p1, v3, :cond_2b

    .line 3455
    move-object v0, v2

    .line 3456
    goto :goto_2e

    .line 3451
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 3459
    .end local v1    # "stackNdx":I
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 2

    .line 3836
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 3435
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 3394
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 3395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 3397
    :cond_6
    if-ne p1, v0, :cond_b

    .line 3398
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 3399
    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 3400
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 3402
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_3e

    .line 3403
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 3404
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez p2, :cond_34

    .line 3405
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_34

    .line 3408
    return-object v1

    .line 3410
    :cond_34
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3411
    return-object v1

    .line 3402
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 3414
    .end local v0    # "i":I
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3419
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 3420
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 3419
    :goto_26
    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 3439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 3445
    return-object v0
.end method

.method isOnTop()Z
    .registers 2

    .line 3539
    const/4 v0, 0x1

    return v0
.end method

.method onParentSet()V
    .registers 4

    .line 3841
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->onParentSet()V

    .line 3842
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 3843
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "animationLayer"

    .line 3844
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 3845
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3846
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "boostedAnimationLayer"

    .line 3847
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 3848
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3849
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "homeAnimationLayer"

    .line 3850
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 3851
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3853
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v2, "pipAnimationLayer"

    .line 3854
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 3855
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    .line 3857
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v1, "splitScreenDividerAnchor"

    .line 3858
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 3859
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 3860
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3861
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3862
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3863
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    .line 3865
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 3866
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3867
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    goto :goto_a4

    .line 3869
    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 3870
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3871
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 3872
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 3874
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 3876
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 3877
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPipAnimationLayer:Landroid/view/SurfaceControl;

    .line 3879
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 3880
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 3882
    :goto_a4
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 3474
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 3475
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 3476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 3478
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 3480
    :cond_17
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/TaskStack;
    .param p3, "includingParents"    # Z

    .line 3544
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_35

    .line 3547
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring move of always-on-top stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bottom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3552
    .local v0, "currentPosition":I
    invoke-super {p0, v0, p2, v1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3553
    return-void

    .line 3556
    .end local v0    # "currentPosition":I
    :cond_35
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 3557
    .local v0, "targetPosition":I
    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3558
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3559
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 3354
    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/TaskStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 3532
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 3533
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 3534
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 3354
    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .registers 6

    .line 3660
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_46

    .line 3661
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3662
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_43

    .line 3663
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 3664
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_3a

    .line 3665
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3669
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->cancelAnimation()V

    .line 3672
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 3662
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3660
    .end local v1    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "j":I
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3676
    .end local v0    # "i":I
    :cond_46
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 6
    .param p1, "hasVisible"    # Z

    .line 3651
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 3652
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3653
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_27

    .line 3654
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 3653
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3651
    .end local v1    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "j":I
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3657
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method
