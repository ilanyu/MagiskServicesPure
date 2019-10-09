.class public Lcom/android/server/wm/StackWindowController;
.super Lcom/android/server/wm/WindowContainerController;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackWindowController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/TaskStack;",
        "Lcom/android/server/wm/StackWindowListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/wm/StackWindowController$H;

.field private final mStackId:I

.field private final mTmpDisplayBounds:Landroid/graphics/Rect;

.field private final mTmpNonDecorInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;)V
    .registers 13
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/StackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V
    .registers 12
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/StackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 72
    iput p1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    .line 73
    new-instance v0, Lcom/android/server/wm/StackWindowController$H;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/StackWindowController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 77
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_4c

    .line 82
    invoke-virtual {v1, p1, p4, p0}, Lcom/android/server/wm/DisplayContent;->createStack(IZLcom/android/server/wm/StackWindowController;)Lcom/android/server/wm/TaskStack;

    .line 83
    invoke-virtual {p0, p5}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 84
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    return-void

    .line 78
    .restart local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to add stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to unknown displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FI)I
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "density"    # F
    .param p3, "windowingMode"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 363
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 365
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v2, v3, :cond_1f

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v2, v3, :cond_1f

    goto :goto_3e

    .line 369
    :cond_1f
    invoke-static {p3}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    return v2

    .line 376
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    .line 377
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 376
    return v2

    .line 368
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v2
.end method

.method private intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 12
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .param p4, "displayBounds"    # Landroid/graphics/Rect;
    .param p5, "overrideWidth"    # Z
    .param p6, "overrideHeight"    # Z

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p3, v1}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 349
    .local v0, "leftInset":I
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 350
    .local v1, "topInset":I
    const/4 v2, 0x0

    if-eqz p5, :cond_1f

    move v3, v2

    goto :goto_26

    :cond_1f
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 351
    .local v3, "rightInset":I
    :goto_26
    if-eqz p6, :cond_29

    goto :goto_30

    :cond_29
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    .line 352
    .local v2, "bottomInset":I
    :goto_30
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Rect;->inset(IIII)V

    .line 353
    return-void
.end method


# virtual methods
.method public adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V
    .registers 38
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "nonDecorBounds"    # Landroid/graphics/Rect;
    .param p4, "stableBounds"    # Landroid/graphics/Rect;
    .param p5, "overrideWidth"    # Z
    .param p6, "overrideHeight"    # Z
    .param p7, "density"    # F
    .param p8, "config"    # Landroid/content/res/Configuration;
    .param p9, "parentConfig"    # Landroid/content/res/Configuration;
    .param p10, "windowingMode"    # I

    move-object/from16 v8, p0

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 268
    move/from16 v12, p10

    iget-object v13, v8, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v13

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 269
    iget-object v0, v8, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 270
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    move-object v14, v1

    .line 271
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    move-object v7, v1

    .line 272
    .local v7, "di":Landroid/view/DisplayInfo;
    iget-object v1, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v19, v1

    .line 275
    .local v19, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    invoke-interface/range {v15 .. v20}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 277
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v19

    move-object/from16 v25, v5

    invoke-interface/range {v20 .. v25}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 279
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    iget-object v1, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v6, v1

    .line 286
    .local v6, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v5, p1

    invoke-virtual {v1, v5}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 287
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    move-object v2, v5

    goto :goto_78

    :cond_77
    const/4 v2, 0x0

    :goto_78
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 288
    const/4 v15, 0x0

    .line 290
    .local v15, "intersectParentBounds":Z
    invoke-static/range {p10 .. p10}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1
    :try_end_80
    .catchall {:try_start_d .. :try_end_80} :catchall_159

    if-eqz v1, :cond_da

    .line 293
    const/4 v1, 0x2

    if-ne v12, v1, :cond_c2

    .line 294
    :try_start_85
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_c2

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_c2

    .line 299
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;
    :try_end_9f
    .catchall {:try_start_85 .. :try_end_9f} :catchall_bb

    move-object/from16 v3, p4

    :try_start_a1
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 300
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_b6

    move-object/from16 v2, p3

    :try_start_a8
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 303
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 304
    const/4 v15, 0x1

    goto :goto_c6

    .line 335
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "intersectParentBounds":Z
    .end local v19    # "displayCutout":Landroid/view/DisplayCutout;
    :catchall_b6
    move-exception v0

    move-object/from16 v2, p3

    goto/16 :goto_15a

    :catchall_bb
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_15a

    .line 306
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .restart local v7    # "di":Landroid/view/DisplayInfo;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "intersectParentBounds":Z
    .restart local v19    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_c2
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :goto_c6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    .line 307
    .local v1, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    .line 327
    .local v4, "height":I
    move-object/from16 v26, v0

    move-object v0, v6

    move-object/from16 v16, v7

    goto :goto_12f

    .line 314
    .end local v1    # "width":I
    .end local v4    # "height":I
    :cond_da
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 315
    if-eqz p2, :cond_e3

    move-object/from16 v4, p2

    goto :goto_e4

    :cond_e3
    move-object v4, v5

    :goto_e4
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 314
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .local v26, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v16, v1

    move-object v1, v8

    move-object/from16 v2, p3

    move-object v3, v4

    move-object/from16 v4, v16

    move-object v5, v0

    move-object v0, v6

    move/from16 v6, p5

    .end local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .local v0, "parentAppBounds":Landroid/graphics/Rect;
    move-object/from16 v16, v7

    move/from16 v7, p6

    .end local v7    # "di":Landroid/view/DisplayInfo;
    .local v16, "di":Landroid/view/DisplayInfo;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 317
    nop

    .line 318
    if-eqz p2, :cond_103

    move-object/from16 v3, p2

    goto :goto_105

    :cond_103
    move-object/from16 v3, p1

    :goto_105
    iget-object v4, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 317
    move-object v1, v8

    move-object/from16 v2, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 320
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    iget v2, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 322
    .restart local v1    # "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    float-to-int v2, v2

    iget v3, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v2

    .line 324
    .restart local v4    # "height":I
    const/4 v15, 0x1

    .line 327
    :goto_12f
    if-eqz v15, :cond_142

    iget-object v2, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_142

    .line 328
    iget-object v2, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 331
    :cond_142
    iput v1, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 332
    iput v4, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 333
    nop

    .line 334
    if-eqz p2, :cond_14c

    .line 333
    move-object/from16 v2, p2

    goto :goto_14e

    :cond_14c
    move-object/from16 v2, p1

    :goto_14e
    invoke-direct {v8, v2, v9, v12}, Lcom/android/server/wm/StackWindowController;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FI)I

    move-result v2

    iput v2, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 335
    .end local v0    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    .end local v4    # "height":I
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "intersectParentBounds":Z
    .end local v16    # "di":Landroid/view/DisplayInfo;
    .end local v19    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v26    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v13
    :try_end_155
    .catchall {:try_start_a8 .. :try_end_155} :catchall_159

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 336
    return-void

    .line 335
    :catchall_159
    move-exception v0

    :goto_15a
    :try_start_15a
    monitor-exit v13
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 246
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 248
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 249
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 250
    return-void

    .line 249
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 254
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 255
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 256
    return-void

    .line 255
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRawBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 234
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1b

    .line 237
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 239
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 240
    return-void

    .line 239
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 215
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 217
    :cond_16
    :try_start_16
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 218
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 219
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 220
    return-void

    .line 219
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onPipAnimationEndResize()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 203
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 204
    return-void

    .line 203
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "position"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 119
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 122
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 124
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_18

    .line 127
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 129
    :cond_18
    :try_start_18
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->positionAt(I)V

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 131
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    return-void

    .line 131
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V
    .registers 8
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "includingParents"    # Z

    .line 157
    if-nez p1, :cond_3

    .line 159
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 163
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 164
    .local v1, "childTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_30

    .line 165
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtBottom: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 168
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 173
    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 174
    .end local v1    # "childTask":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    return-void

    .line 174
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V
    .registers 8
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "includingParents"    # Z

    .line 135
    if-nez p1, :cond_3

    .line 137
    return-void

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 141
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 142
    .local v1, "childTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_30

    .line 143
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtTop: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 146
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 148
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 151
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 152
    .end local v1    # "childTask":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 153
    return-void

    .line 152
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public prepareFreezingTaskBounds()V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 229
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    return-void

    .line 225
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareFreezingTaskBounds: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 90
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_14

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    .line 92
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 94
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    return-void

    .line 94
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(ILandroid/graphics/Rect;Z)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_42

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 105
    .local v1, "targetDc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_21

    .line 110
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 112
    .end local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 113
    return-void

    .line 106
    .restart local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    :cond_21
    :try_start_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to unknown displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_21 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StackWindowController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 383
    return-void
.end method

.method public resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p3, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_3c

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 192
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 193
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 195
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 197
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 198
    return-void

    .line 188
    :cond_3c
    :try_start_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeStack: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMiuiConfigFlag(IZ)V
    .registers 4
    .param p1, "miuiConfigFlag"    # I
        .annotation build Landroid/app/WindowConfiguration$MiuiConfigFlag;
        .end annotation
    .end param
    .param p2, "isSetToStack"    # Z

    .line 391
    if-eqz p2, :cond_d

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_d

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskStack;->setMiuiConfigFlag(IZ)V

    .line 396
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StackWindowController stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
