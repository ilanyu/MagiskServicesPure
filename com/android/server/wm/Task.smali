.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/AppWindowToken;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mCanAffectSystemUiFlags:Z

.field private mDeferRemoval:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field private mResizeMode:I

.field private mRotation:I

.field mStack:Lcom/android/server/wm/TaskStack;

.field private mSupportsPictureInPicture:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field private final mTempInsetBounds:Landroid/graphics/Rect;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;

.field mUpdateTaskSnapshotByGesture:Z

.field final mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "resizeMode"    # I
    .param p6, "supportsPictureInPicture"    # Z
    .param p7, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "controller"    # Lcom/android/server/wm/TaskWindowContainerController;

    .line 114
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    .line 100
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 102
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 115
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 116
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 117
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 118
    iput p5, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 119
    iput-boolean p6, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 120
    invoke-virtual {p0, p8}, Lcom/android/server/wm/Task;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 122
    iput-object p7, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 125
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 126
    return-void
.end method

.method private getAdjustedAddPosition(I)I
    .registers 5
    .param p1, "suggestedPosition"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 134
    .local v0, "size":I
    if-lt p1, v0, :cond_d

    .line 135
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 138
    :cond_d
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_e
    if-ge v1, v0, :cond_23

    if-ge v1, p1, :cond_23

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_20

    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 138
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 145
    .end local v1    # "pos":I
    :cond_23
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private hasWindowsAlive()Z
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasWindowsAlive()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 171
    return v1

    .line 169
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 174
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private useCurrentBounds()Z
    .registers 3

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 403
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 404
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 406
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    .line 403
    :goto_1c
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 6
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "position"    # I

    .line 150
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p2

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMiuiConfigFlag()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    if-eqz p1, :cond_19

    .line 156
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/AppWindowToken;->setMiuiConfigFlag(IZ)V

    .line 159
    :cond_19
    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 58
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    return-void
.end method

.method alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "alignBottom"    # Z

    .line 385
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3a

    .line 389
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 390
    const/4 v0, 0x0

    if-eqz p3, :cond_28

    .line 391
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 392
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 393
    .end local v1    # "offsetY":I
    goto :goto_31

    .line 394
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 396
    :goto_31
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    .line 397
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 398
    return-void

    .line 386
    :cond_3a
    :goto_3a
    return-void
.end method

.method canAffectSystemUiFlags()Z
    .registers 2

    .line 714
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 590
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 589
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 592
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .registers 2

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 732
    return-void
.end method

.method cropWindowsToStackBounds()Z
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0
.end method

.method dontAnimateDimExit()V
    .registers 2

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 719
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 771
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "doublePrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mdr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appTokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTempInsetBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "triplePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "quadruplePrefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 783
    .local v3, "i":I
    :goto_c9
    if-ltz v3, :cond_f8

    .line 784
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 785
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Activity #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 783
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_c9

    .line 788
    .end local v3    # "i":I
    :cond_f8
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 700
    return-void
.end method

.method forceWindowsScaleable(Z)V
    .registers 5
    .param p1, "force"    # Z

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 671
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 672
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->forceWindowsScaleableInTransaction(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    .line 671
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 675
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "forceWindowsScaleable"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 676
    nop

    .line 677
    return-void

    .line 675
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "forceWindowsScaleable"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 411
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 414
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 415
    return-void

    .line 420
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 421
    return-void
.end method

.method getController()Lcom/android/server/wm/TaskWindowContainerController;
    .registers 2

    .line 694
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 473
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 474
    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 475
    .local v1, "dockedResizing":Z
    :goto_13
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 476
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 477
    return-void

    .line 480
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 487
    if-eqz v1, :cond_34

    .line 488
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_51

    .line 490
    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 491
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 492
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_51

    .line 495
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 497
    :goto_51
    return-void

    .line 502
    :cond_52
    if-eqz v0, :cond_57

    .line 503
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 505
    :cond_57
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    .line 528
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "foundTop":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_6d

    .line 438
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 440
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v3, :cond_6a

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v3

    if-nez v3, :cond_6a

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_22

    .line 441
    goto :goto_6a

    .line 443
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 444
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_29

    .line 445
    goto :goto_6a

    .line 447
    :cond_29
    if-nez v0, :cond_32

    .line 448
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 449
    const/4 v0, 0x1

    .line 450
    goto :goto_6a

    .line 452
    :cond_32
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_40

    .line 453
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 455
    :cond_40
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_4e

    .line 456
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 458
    :cond_4e
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_5c

    .line 459
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 461
    :cond_5c
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_6a

    .line 462
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 437
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 465
    .end local v1    # "i":I
    :cond_6d
    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    return-void
.end method

.method getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 634
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 635
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 636
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_21

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 637
    return-object v1

    .line 633
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 640
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 628
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 629
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 649
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_25

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_25

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-nez v2, :cond_25

    .line 652
    return-object v1

    .line 644
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 655
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 524
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .registers 2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 607
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 606
    :goto_19
    return v0
.end method

.method isFullscreen()Z
    .registers 2

    .line 659
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 660
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    return v0

    .line 665
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method isTaskAnimating()Z
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 619
    .local v0, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_10

    .line 620
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 621
    const/4 v1, 0x1

    return v1

    .line 624
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method onParentSet()V
    .registers 3

    .line 242
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_1d

    .line 252
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    .line 255
    :goto_1d
    nop

    .local v1, "appTokenNdx":I
    :goto_1e
    move v0, v1

    .end local v1    # "appTokenNdx":I
    .local v0, "appTokenNdx":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->onParentSet()V

    .line 255
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "appTokenNdx":I
    .restart local v1    # "appTokenNdx":I
    goto :goto_1e

    .line 259
    .end local v1    # "appTokenNdx":I
    :cond_35
    return-void
.end method

.method positionAt(I)V
    .registers 4
    .param p1, "position"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 238
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "includingParents"    # Z

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p1

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 166
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 58
    check-cast p2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    return-void
.end method

.method prepareFreezingBounds()V
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 373
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 742
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 748
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 750
    :cond_24
    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 3

    .line 357
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method removeChild(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 264
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_25
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 271
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "removeAppToken: last token"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 272
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v0, :cond_4e

    .line 273
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 276
    :cond_4e
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 58
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 189
    return-void

    .line 191
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 192
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "removeTask"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 198
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 200
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 201
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskStack;IZ)V
    .registers 9
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq p1, v0, :cond_48

    .line 210
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "reParentTask"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 217
    .local v0, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 218
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    goto :goto_2a

    .line 220
    :cond_28
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 223
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    invoke-virtual {p1, p0, p2, v1, p3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 227
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 228
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 229
    if-eq v0, v1, :cond_47

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 231
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 233
    :cond_47
    return-void

    .line 205
    .end local v0    # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 300
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 301
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_14

    .line 302
    :cond_11
    if-nez p1, :cond_14

    .line 304
    return v2

    .line 307
    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 308
    return v2

    .line 311
    :cond_1b
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 313
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 315
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 287
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    .line 288
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 289
    or-int v1, v2, v0

    return v1

    .line 292
    :cond_11
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 707
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 708
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 508
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_53

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/TaskStack;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 517
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 518
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    goto :goto_53

    .line 510
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Stack mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 513
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Stack type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_53
    :goto_53
    return-void
.end method

.method setResizeable(I)V
    .registers 2
    .param p1, "resizeMode"    # I

    .line 339
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 340
    return-void
.end method

.method setSendingToBottom(Z)V
    .registers 4
    .param p1, "toBottom"    # Z

    .line 279
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "appTokenNdx":I
    :cond_16
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 680
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 681
    return-void
.end method

.method setTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "tempInsetBounds"    # Landroid/graphics/Rect;

    .line 323
    if-eqz p1, :cond_8

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 328
    :goto_d
    return-void
.end method

.method shouldDeferRemoval()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method showForAllUsers()Z
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 596
    .local v0, "tokensCount":I
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method toShortString()Ljava/lang/String;
    .registers 3

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 532
    if-nez p1, :cond_3

    .line 533
    return-void

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 539
    return-void

    .line 541
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 542
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v1, v0, :cond_19

    .line 543
    return-void

    .line 551
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v1

    if-nez v1, :cond_32

    .line 554
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 555
    return-void

    .line 560
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_39

    .line 561
    return-void

    .line 568
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_48

    .line 569
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    goto :goto_6c

    .line 571
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    if-eq v1, v2, :cond_61

    .line 572
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_56

    goto :goto_61

    .line 575
    :cond_56
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v2}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    goto :goto_6c

    .line 573
    :cond_61
    :goto_61
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 579
    :goto_6c
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_81

    .line 580
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    .line 581
    .local v1, "controller":Lcom/android/server/wm/TaskWindowContainerController;
    if-eqz v1, :cond_81

    .line 582
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/TaskWindowContainerController;->requestResize(Landroid/graphics/Rect;I)V

    .line 585
    .end local v1    # "controller":Lcom/android/server/wm/TaskWindowContainerController;
    :cond_81
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 755
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 756
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 757
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 758
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_33

    .line 759
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 760
    .local v3, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/AppWindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 758
    .end local v3    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 762
    .end local v2    # "i":I
    :cond_33
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 764
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 765
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 766
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 767
    return-void
.end method
